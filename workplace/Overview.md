## What is MAGMA-Lisp?

MAGMA-Lisp is an extension of Lisp proposed to program the sophisticated techniques used in AI systems to find the solution(s) of a search problem. The search space is structured as a tree, whose nodes are _choice points_.

MAGMA-Lisp allows associating each branch of the search tree to a conceptually indipendent computation environment (_context_), so that each alternative can be explored in any order and with no conflicts with the others: control can be suspended in any context and resumed in another, and state modifications are local to each context. This dynamic association constitutes the _context tree_. MAGMA-Lisp provides primitives to extend and/or contract the context tree and to switch control from one context to another.

The language and its implementation were first described in [[IJCAI4](#IJCAI4)]. The efficiency of the algorithms implementing the context tree is assessed experimentally in [[ActaInformatica](#ActaInformatica)].

MAGMA-Lisp was used to implement the KL-ONE core of KL-Conc, simulator of the conceptual operations underlying natural language [[IJCAI8](#IJCAI8)].

## What is in this repository?

The source code collected in this repository is part of the interpreter of MAGMA-Lisp. The selection is intended to show the implementation of 
1. the primitives to manage the contex tree, and
2. the implementation of the mechanisms to manage the context sensitive information efficiently.

The first description of the working of this code is found in [[TR B73-1](#TR_B73-1)].

## What is the history of this source code?

This code is written in FORTRAN for the IBM VM370 system of CNUCE, and is dated 10/15/81. Likely this is the last version of the interpreter.

The first contributors to the code were [C. Montangero]() and [G. Pacini]() (see [[TR B73-1](#TR_B73-1)], gen. 1973]). [P. Asirelli]() was initially involved (see [[TR C72-5](#TR_C72-5)]). [F. Turini]() joined them as part of his thesis work in Scienze dell'Informazione in early 1973. M. Simi, as part of her thesis work in Scienze dell'Informazione, ... in 1974.

## References

<a id="IJCAI4">[[IJCAI4](#IJCAI4)]</a> - C. Montangero, G. Pacini and F. Turini. Magma-Lisp: a "machine language" for Artificial Intelligence. Proc. 4th Int. J. Conf. on Artificial Intelligence, Tbilisi, September 1975, pp. 556-561.

<a id="ActaInformatica">[[ActaInformatica](#ActaInformatica)]</a> - C. Montangero, G. Pacini, M. Simi, and F. Turini, Information Management in Context Trees. Acta Informatica 10, pp 85-94, 1978.

<a id="TR_C72-5">[[TR C72-5](#TR_C72-5)]</a> - P. Asirelli, C. Montangero, G. Pacini. Implementazione del nucleo di un sistema LISP orientato verso l'elaborazione di modelli semantici. Technical Note TR C72-5, I.E.I.-CNR, Pisa, nov. 1972. In Italian.

P. Asirelli, C. Lami, C. Montangero, G. Pacini, M. Simi, and F. Turini. "MAGMA-Lisp Reference Manual", Technical Note C75-13, I.E.I.-CNR, Pisa, 1975.

<a id="IJCAI8">[[IJCAI8](#IJCAI8)]</a> - A. Cappelli, L. Moretti, and C. Vinchesi. A Language for Interacting With Si-Nets. Proc. 8th Int. J. Conf. on Artificial Intelligence, Karlsruhe, 1983, pp. 333-336. https://www.ijcai.org/proceedings/1983-1/Papers/073.pdf.

<a id="TR_B73-1">[[TR B73-1](#TR_B73-1)]</a> - C. Montangero and Pacini, G. An extended Lisp System for complex control structure programming. Technical note B73-1, I.E.I.-CNR, Pisa, Jan. 1973.
