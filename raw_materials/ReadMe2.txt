Le due subroutine ALRVLR e ALRVLW realizzano uno dei meccanismi che permettono all'interprete di gestire una molteplicità di suoi stati, organizzati in una struttura (albero dei contesti) che si mantiene isomorfa a come evolve l'albero di scelte nella ricerca non deterministica delle soluzioni. Queste subroutine gestiscono le RVL (Redefined Value List), leggendo e scrivendo (rispettivamente) il valore di una variabile nel contesto attuale, sfruttano efficientemente le informazini mantenute nell'albero dei contesti.

Gli algoritmi sono descritti in due articoli: 

Montangero, C., Pacini, G., Simi, M., Turini , F. Information management in context trees. Acta Informatica 10, 85–94 (1978). https://doi.org/10.1007/BF00260926

Abstract: Information management in context trees involves three principal problems: retrieval, updating and garbage collection. These problems are discussed in the paper, and solutions are proposed and motivated. A list organization and relative algorithms to implement context trees are presented. Finally, experimental results are reported about the behaviour of a system which exploits context trees.

Montangero, C., Pacini, G., Turini, F. MAGMA-Lisp: a machine language for Artificial Intelligence. Proc. 4th Int. J. Conf. on Artificial Intelligence, Tbilisi, pp. 556–561, 1975. http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.75.5235&rep=rep1&type=pdf

Abstract: The paper describes MAGMA-Lisp, an extended Lisp system proposed as an implementation tool for A.I. languages exploiting nondeterministic techniques.
The main idea informing MAGMA-Lisp is that a tree structure of conceptually indipendent computation environments (contex tree) is the supporting structure of any nondeterministic system. 
MAGMA-Lisp proposes this structure in a quite virginal form, so that the user can state his own techniques to prune, select and explore the available alternatives . In this sense, MAGMA-Lisp is to be viewed as a "machine language".
The ideas of MAGMA-Lisp are contrasted with the systems that most influenced its design. The technique used in context implementation is described, showing how a very flexible context mechanism can be realized without an intolerable loss of effciency. In particular , in spite of the complexity of the system, garbage collection does not result much more time consuming than in standard Lisp systems.