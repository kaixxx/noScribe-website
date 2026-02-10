---
title: "FAQ"
description: "Domande comuni su noScribe, privacy e requisiti di sistema."
translationKey: "faq"
weight: 40
draft: false
---

# FAQ

### Posso fidarmi che noScribe non invii audio o trascrizioni all'esterno?

Sì. noScribe è stato progettato fin dall'inizio come un'app desktop puramente locale. Questa era la motivazione centrale per costruirlo. Se vuoi verificarlo, disattiva temporaneamente la connessione di rete (spegni il Wi-Fi, scollega il cavo LAN). noScribe funzionerà esattamente come prima.

### noScribe è una soluzione di trascrizione conforme al GDPR?

Sì, per quanto posso giudicare. Nota però che non sono un avvocato. Ma l'elaborazione locale dei dati sensibili è considerata il gold standard della privacy, almeno se proteggi bene il tuo computer da accessi non autorizzati.

### Ho bisogno di un computer particolarmente potente per la trascrizione locale?

No, non necessariamente. Le prestazioni hanno un grande impatto sul tempo di trascrizione. Ma se necessario, puoi semplicemente mettere più lavori in coda la sera e lasciare che la trascrizione venga eseguita durante la notte.

### E per i computer più vecchi?

Il problema principale è che i sistemi operativi più vecchi non sono più compatibili: noScribe funziona ancora su Windows 10, ma Windows 7/8 non è più supportato. Su Mac serve almeno macOS 14 (Sonoma). Inoltre, i vecchi Mac con processori Intel (prima di M1) non sono più supportati nelle versioni più recenti di noScribe. Questo ha a che fare con le librerie software di cui abbiamo bisogno.

### Com'è il supporto per Linux?

Purtroppo dipende molto dalla distribuzione e dal fatto che persone competenti abbiano testato noScribe su quella distro e risolto i problemi. Se incontri difficoltà, vale la pena controllare gli ["Issues" su GitHub](https://github.com/kaixxx/noScribe/issues), dove spesso troverai discussioni con buoni consigli.

### Ho bisogno di un registratore speciale o di un microfono particolare per registrare un'intervista?

No. Se la registrazione è solo per la trascrizione, non serve attrezzatura di fascia alta. Spesso basta uno smartphone o un registratore digitale robusto di fascia media. Molto più importante del dispositivo sono buone condizioni di registrazione: chiudi le finestre, tieni il microfono vicino alla persona intervistata e riduci al minimo il rumore di fondo.

### Quali formati di file sono supportati?

noScribe usa il software libero **FFmpeg** per l'estrazione audio, che supporta quasi tutti i formati audio e video mai inventati nella storia dei computer. Maggiori informazioni qui (i "decoders" sono rilevanti): https://ffmpeg.org/ffmpeg-codecs.html

### Come posso elaborare ulteriormente le trascrizioni finite?

Usa il noScribe Editor per rivedere e correggere a partire dall'audio. Aggiungi le espressioni non verbali (risate, ecc.) se necessario. Puoi aprire il file HTML finale direttamente in MS Word o LibreOffice, oppure importarlo nei principali programmi di analisi qualitativa come [MAXQDA](https://www.maxqda.com) o [QualCoder](https://qualcoder-org.github.io/). Il noScribe Editor può anche salvare testo semplice (.txt) o sottotitoli WebVTT (.vtt) (File > Save As). Per le trascrizioni GAT2 consiglio di esportare in WebVTT e continuare il lavoro in [EXMARaLDA](https://exmaralda.org/).

### Posso usare noScribe a scopo commerciale?

Sì, nessun problema. Non ci sono restrizioni su come utilizzi le trascrizioni che crei. Una [donazione](https://ko-fi.com/noscribe) sarebbe apprezzata, ma non è obbligatoria. Se vuoi modificare il software stesso, devi rispettare i termini della licenza GPL-3.0: https://github.com/kaixxx/noScribe/blob/main/LICENSE.txt.

### Dove posso ottenere supporto se ho problemi?

Gli ["Issues" su GitHub](https://github.com/kaixxx/noScribe/issues) sono il posto migliore per iniziare; io e altri utenti possiamo aiutare lì. In casi particolarmente urgenti puoi anche scrivermi direttamente (kai.droege{at}hslu.ch).
