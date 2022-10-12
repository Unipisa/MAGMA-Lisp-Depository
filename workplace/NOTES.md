# Terminologia
- CXT = contesto, lo stato del sistema associato a un punto di scelta durante la ricerca delle soluzioni di un problema (es: nel problema delle regine, si crea un contesto ogni volta che si tenta di piazzare una regina sulla scacchiera)
- SCT = search control tree (?), la struttura che realizza l’albero dei contesti. Dovrebbe essere composto da CXTX, R e S (vedi articolo Acta Informatica) e LIFE (per GC).
- RVL = Redefined Value List, la struttura di gestione dei valori associati ai vari contesti.

# 3 Routine di lettura di un valore in una cella:
- RVLR (35 righe), come ALRVLR legge il valore corrente di una variabile in un contesto, ma con due argomenti, CXT e PUNT: assume che PUNT sia una lista di ridefiniti, e che interessi il valore nel contesto CXT. NB: ALRVLR prende il contesto attualel, nella globale AAk.

# File con le funzioni per manipolare i contesti (vedi articolo IJCAI 5):
- MPATTF (528 righe), non ha argomenti, perchè li preleva, insieme all’entry point INDIC, tramite GETARG. Non realizza NEWCXT, ma:
    - SCTPN (et. 72, riga 120), funzione di servizio, stampa la struttura SCT. Ha anche un’omonima  ENTRY fortran (riga 122), probabilmente per chiamarla direttamente durante il debug dell’interprete.
    - GETCXT (et. 73, riga 156), restituisce l’ID di contesto di un antenato nell’albero.
    - AVOP (et. 74, riga 193), controlla la relazione “avo” (?)
    - YMCA (et. 75, riga 216), ?
    - stampa cxt-tree (et. 78, riga 234), funzione di servizio. Ha anche un’omonima  ENTRY fortran (riga 239), probabilmente per chiamarla direttamente durante il debug dell’interprete.
    - SON (et. 79, riga 256), restituisce la lista degli ID di contesto dei figli di un  contesto.
    - CONTRACT(et. 80, riga 278), contrae l’albero dei contesti.
    - RECLAIM1 (et. 98, riga 431), entry fortran, che usa parte del codice di CONTRACT.

# Garbage Collection:
- MAPCXT (25 righe) marca le proprietà dei contesti.
- MARCA (88 righe), marca le S-EXPR.
- MARVL (48 righe), marca RVL (?), chiamando LIFRVL.
- MLIFE (40 righe), crea la lista dei contesti vivi.
- MRVL (89 righe), marca e aggiorna RVL (chiama MARCA).
- RVLSC (82 righe), con tre argomenti, PR, OUT1, OUT2. Marca e aggiorna le RVL negli elementi di SCT.

# Formato FORTRAN
5 colonne label
1 colonna eventuale continuazione
7- codice
end - numero scheda 

