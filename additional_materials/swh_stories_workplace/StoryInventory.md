# Story moments - a first attempt (revised)

*Wikidata items to be created are identified as Q\*xxx, for later reference inside this document. Once created, all references should be replaced with the actual Qid.*

*In the statements, braces are used to pair the name-Pid and value of a property. The same holds for the fields of an uploaded image or video, iFrames, etc.*

## Wikidata entities for the story

SoftwareItem: Q108929297

* Status: created
* Label: SW_NAME
* Description: An early programming exercise in Numerical Analysis.
* Statements
  * {instanceof: software(Q7397)}
  * {creator: Tonina Starita(Q108929353)}
  * {platform: CEP - Calcolatrice Elettronica Pisana (Q3650499)}
  * {inception: 13/2/1968}
  * {end-time (P582): 4/4/1968}

CreatorItem: Q108929353

* Status: created
* Label: Tonina Starita
* Description: Italian computer scientist
* Statements
  * {instanceof: human}
  * {gender (P21): female}
  * more...

## Commons Categories to be created for the SW_NAME story

* Historical software with a SWH-story
  * {Parent: Historical software}

* SW_NAME
  * {Parent: Historical software with a SWH-story}
  * {}

## Media gallery moment

* PER.LSDC.jpg
  * {Title: [PER.LSDC](additional-materials/swh_stories_workplace/moment_media_gallery/PER.LSDC.jpg)}
  * {Caption: Symbolic language code for the [Calcolatrice Elettronica Pisana]([Q3650499](https://www.wikidata.org/wiki/Q3650499))}
  * {Description: Subroutine to punch data and code on paper tape. Decimal Symbolic Language for CEP (in Italian: Linguaggio Simbolico Decimale CEP (LSDC)).}
  * {Reference: [SW_NAME Depository](https://github.com/Unipisa/SW_NAME-Depository/blob/master/raw_materials/Photos/IMG_20190722_094617.jpg)}
  * {Developer: Tonina Starita (Q108929353)}
  * {Author: {{Author|photo|MuntDlaGera}}}
  * {Decimal Coordinates: 43.716528, 10.390481}
  * {Categories: SW_NAME source code}
  * 
* [UniPi_Calcolatrice_Elettronica_Pisana2](https://commons.wikimedia.org/wiki/File:UniPi_Calcolatrice_Elettronica_Pisana2.jpg)

## Wikipedia article moment

Link to Wikipedia, if any.

## Timeline moment

*DESIDERATA*

Here are the dates of the first and last versions of the codes:

* PER: 13/2/68, 15/2/68 (hand written on the only printout)
* LETT: 13/2/68, 21/3/68 (hand written on the only printout)
* Exec: 5/3/68
* Exec: 5/3/68 (with output)
* Exec: 4/4/68
* Exec: 29/3/68
* SW_NAME-1: no date
* SW_NAME-2: 13/2/68, 5/3/68
* SW_NAME-3: 9/3/68, 4/4/68

*Question: I used inception P571 to indicate the initial date of the time span of the creation of SW_NAME. How do I enter the final date of the time span? I see that Kat has used P2669 discontinued date). I'm afraid both properties do not convey the intended meaning, that is the time span covered by our findings, which is likely shorter than the time span of the project.*

*Question: we might also put here the dates when they were saved in SWH. Again, do we need a new property?*

## Map moment

*DESIDERATA*

* <https://upload.wikimedia.org/wikipedia/commons/4/43/Veduta_napoletana_001.JPG>
  * {Title: Naples, Italy}
  * {Description: Tonina's birthplace.}
* <https://commons.wikimedia.org/wiki/File:The_Leaning_Tower_of_Pisa_SB.jpeg>
  * {Title: Pisa, Italy}
  * {Description: Tonina's place of death.}
* <https://commons.wikimedia.org/wiki/File:Pisa_-_veduta_dall%27aereo_4.JPG>
  * {Title: Pisa, Italy}
  * {Description: City where the software was developed.}

## People moment

* Q108929353
* [ToninaStarita.png](additional-materials/swh_stories_workplace/moment_people_gallery/ToninaStarita.png)
  * {Title:ToninaStarita.png}
  * {Caption: Antonina (Tonina) Starita ([Q108929353](https://www.wikidata.org/wiki/Qxxxxxxx))}
  * {Description: {{en|1=Starita was was an Italian computer scientist, active in Pisa since the sixties, when she was with CSCE-CNR (later IEI, then ISTI: you may want to look at the short historical notes [<https://www.isti.cnr.it/en/about> here]). She then became professor at the Computer Science Department of the University of Pisa. Her contributions to Computer Science were in Computational Intelligence and Bioengineering. Her seminal activity continues at the [<http://www.di.unipi.it/groups/ciml> Computational Intelligence & Machine Learning Group] and the [<http://www.neurolab.ing.unirc.it/> Neurolab] she contributed to found.}} }
  * {Reference: [SW_NAME Worbench](https://github.com/Unipisa/SW_NAME-Depository/blob/master/raw_materials/Photos/ToninaStarita.png)}
  * {Author: {{Author|Unknown}} {{Author|upload|MuntDlaGera}}}
  * {Decimal Coordinates: 43.716528, 10.390481}
  * {Categories: SW_NAME source code...}

*Question: should we put also Guido, Laura and myself as collectors and curators? Or it is too narcissitic? (Guido says no - Having got a better understanding I think not)*

### People gallery moment

* TonitaStarita.jpg
  * {Title: [Tonina Starita](additional-materials/swh_stories_workplace/moment_people_gallery/ToninaStarita.png)}

### People documents moment

## Library Moment

*DESIDERATA*

### Linked documents

[O.G. Mancino - Characteristics of the FORTRAN CEP language](https://dl.acm.org/doi/10.1145/364520.364557)

### Embedded documents

[O.G. Mancino - FORTRAN CEP language](additional-materials/swh_stories_workplace/moment_documents/OGMancinoTechRep1963.pdf)

### Source Code Listin

[SW_NAME : V2 and V3](additional-materials/swh_stories_workplace/moment_documents/SW_NAME-V2-3.f.pdf)

## Wikidata statements moment

*DESIDERATA*

Specification of important statements.
Then, the moment is done automatically.

## SWH source code moment

* {Title: Reconstructed development story of the SW_NAME source code.}

  {Link: [SW_NAME repository- source code branch](https://archive.softwareheritage.org/swh:1:dir:b0c85c6dd2e62311046c077ee8f57563823408e3;origin=https://github.com/Unipisa/SW_NAME-Workbench;visit=swh:1:snp:c17894ec99edb9bddba17f69d018cfa578593d3b;anchor=swh:1:rev:092a927d8ed365ed600dd4e96932437731749bbb)}

## Learn more moment

*DESIDERATA*

### About the CEP

* <https://www.wikidata.org/wiki/Q3650499?uselang=it#/media/File:UniPi_Calcolatrice_Elettronica_Pisana2.jpg>
  * {Title: View of the CEP - contemporary}
  * {Caption: (view of the Pisa Electronic Computer (Calcolatrice Elettronica Pisana - CEP) ([Q3650499](https://www.wikidata.org/wiki/Q3650499)))}
  * {Description: This picture shows the computer for which the SW_NAME source code was developed, as it has been saved in the Museum for Computing Machinery of the University of Pisa.}

* cep04.CEP_.jpg
  * {Title: View of the CEP - original}
  * {Caption: view of the Calcolatrice Elettronica Pisana - CEP, in the sixties.}
  * {Description: This picture shows the computer for which the SW_NAME source code was developed, as it was in the sixties, when the code was written.}
  * {Date: 21/10/2021}
  * {source: <https://www.msc.sma.unipi.it/foto/#jp-carousel-3023>}
  * Current location in Commons: <https://commons.wikimedia.org/wiki/File:View_of_the_CEP_-_original.jpg>

### More on FORTRAN CEP

* O.G. Mancino On Fortran CEP CACM 1964
  * {Logo: additional-materials\SWH-storiesWorkplace\LogoACMdigitalLibrary.jpg}
  * {Title: On the FORTRAN CEP language.}
  * {Caption: Characteristics of the FORTRAN CEP language}
  * {Description: O. G. Mancino. Characteristics of the FORTRAN CEP language.  <i>Commun. ACM</i> 7, 7 (July 1964), 423–424.
     The paper describes some enhancements of FORTRAN II, mainly devoted to the input/output of quantities of type Real and the allowed input/output equipments.}
  * {LearnMoreButton: DOI:<https://doi.org/10.1145/364520.364557>}
  * {LocalCopy: additional-materials\SWH-storiesWorkplace\OGMancinoOnFortranCACM1964.pdf}
  * {Copyright: ACM Digital Library. No open access.}

### Essays in Memory of Antonina Starita

* [Proceedings of the 2009 conference on Computational Intelligence and Bioengineering: Essays in Memory of Antonina Starita](https://dl.acm.org/doi/proceedings/10.5555/1659271)

  * {Title: Essays in Memory of Antonina Starita}
  * {Description: The contributions in this volume portrait the achievements of the authoress of the code featured in this SWH story. Tonina developed it in 1968, when she was a young research apprentice in Pisa, at CSCE-CNR (later IEI, then ISTI: you may want to look at the short historical notes paragraph [here <https://www.isti.cnr.it/en/about>])}

### More on the recovery process

* [SW_NAME workbench](https://archive.softwareheritage.org/swh:1:dir:b0c85c6dd2e62311046c077ee8f57563823408e3;origin=https://github.com/Unipisa/SW_NAME-Workbench;visit=swh:1:snp:c17894ec99edb9bddba17f69d018cfa578593d3b;anchor=swh:1:rev:092a927d8ed365ed600dd4e96932437731749bbb)}

  * {Title: SW_NAME workbench}
  * {Description: This repository was used to reconstruct the development story of the code, and to prepare the materials for its SWH story. Also, from here it is possible to reach the *depository* with all the original digital materials.}
