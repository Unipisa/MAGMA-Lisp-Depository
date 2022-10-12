
using System;
using System.Collections.Generic;
using Microsoft.Azure.CognitiveServices.Vision.ComputerVision;
using Microsoft.Azure.CognitiveServices.Vision.ComputerVision.Models;
using System.Threading.Tasks;
using System.IO;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Threading;
using System.Linq;

namespace Ocr
{
    class Program
    {
        // Add your Computer Vision subscription key and endpoint
        static string subscriptionKey = "SECRET";
        static string endpoint = "https://test2guido.cognitiveservices.azure.com/";
        static string fileNameFromUrl(string hreflink) {
            string filename = Path.GetFileName(new Uri(hreflink).AbsolutePath);
            return filename;
        }
        static void Main(string[] args)
        {            
            string[] urls = new string[] 
                { 
                    "https://github.com/Unipisa/MAGMA-Lisp-Workbench/raw/master/workplace/TEST.jpg"           
                };

            ComputerVisionClient client = Authenticate(endpoint, subscriptionKey);
            // Extract text (OCR) from a URL image using the Read API
            foreach (string url in urls) 
            {
                string file = fileNameFromUrl(url) + ".txt";
                ReadFileUrlToFile(client, url, file).Wait();
            }
        }
	public static ComputerVisionClient Authenticate(string endpoint, string key)
        {
            ComputerVisionClient client =
              new ComputerVisionClient(new ApiKeyServiceClientCredentials(key))
              { Endpoint = endpoint };
            return client;
        }
        public static async Task ReadFileUrlToFile(ComputerVisionClient client, string urlFile, string filename)
        {
            Console.WriteLine("----------------------------------------------------------");
            Console.WriteLine("READ FILE FROM URL " + urlFile);
            Console.WriteLine();

            // Read text from URL
            var textHeaders = await client.ReadAsync(urlFile);
            // After the request, get the operation location (operation ID)
            string operationLocation = textHeaders.OperationLocation;
            Thread.Sleep(2000);
      
            // Retrieve the URI where the extracted text will be stored from the Operation-Location header.
            // We only need the ID and not the full URL
            const int numberOfCharsInOperationId = 36;
            string operationId = operationLocation.Substring(operationLocation.Length - numberOfCharsInOperationId);

            // Extract the text
            ReadOperationResult results;
            Console.WriteLine($"Extracting text from URL file {Path.GetFileName(urlFile)}...");
            Console.WriteLine();
            do
            {
                results = await client.GetReadResultAsync(Guid.Parse(operationId));
            }
            while ((results.Status == OperationStatusCodes.Running ||
                results.Status == OperationStatusCodes.NotStarted));
      
            // Display/Write to file the found text.
            System.Text.StringBuilder sb = new System.Text.StringBuilder(); 
            var textUrlFileResults = results.AnalyzeResult.ReadResults;
            foreach (ReadResult page in textUrlFileResults)
            {
                foreach (Line line in page.Lines)
                {
                    //Console.WriteLine(line.Text);
                    sb.AppendLine(line.Text);
                }
            }
            File.WriteAllText(filename, sb.ToString());
        }
    }
}
