+++
type  = "talk"
draft = false
title    = "WebScale Infrastructures with Kubernetes and Flannel"
date     = "2016-04-15T14:05:00+02:00"
event    = "1st ContainerDay - Verona"
website  = "http://2016.containerday.it/"
location = "Hotel San Marco, Via Baldassarre Longhena, 42, Verona, Italy"
slides   = "http://www.slideshare.net/purpleocean/web-scale-infrastructures-with-kubernetes-and-flannel"
code     = "https://github.com/atosatto/presentation-webscalek8s"
video    = "https://vimeo.com/166626308"
tags     = [ "docker", "kubernetes", "containerday", "talk" ]
+++

---

La capacità di rispondere in poche frazioni di secondo alle richieste degli utenti - indipendentemente dal loro numero - è un fattore determinante per il successo dei servizi sul web. Secondo Amazon,  bastano 100 millisecondi di latenza nella risposta per generare una perdita economica di circa l'1% sul fatturato. In base alle statistiche di Google AdWords, inoltre, il 2015 ha sancito l’ufficiale superamento del numero di interazioni mobile rispetto a quelle desktop, con la conseguente riduzione della durata media delle sessioni di navigazione web. In uno scenario di questo tipo, la razionalizzazione dell’utilizzo delle risorse hardware e la capacità di scalare rispetto al numero di utenti sono fattori determinanti per il successo del business. In questo talk racconteremo la nostra esperienza di migrazione di soluzioni e-commerce di tipo enterprise in Magento da un’architettura basata su VM tradizionali ad una di tipo software-defined basata su Kubernetes, Flannel e Docker. Discuteremo, quindi, delle reali difficoltà da noi incontrate nel porting su container di soluzioni in produzione e daremo evidenza di come, alla fine di questo lungo viaggio, i nostri sforzi siano stati concretamente premiati dall’aumento di resilienza, affidabilità e automazione della soluzione finale. A supporto della conversazione, mostreremo i risultati dei benchmark da noi condotti per valutare la scalabilità della nuova architettura presentando delle evidenze delle reali capacità di Kubernetes come strumento di orchestrazione di servizi erogati in Docker container. Concluderemo l’intervento presentando il nostro progetto di distribuzione geografica dei nodi master di Kubernetes facendo uso di reti SD-WAN per garantire performance e continuità di servizio della soluzione.
