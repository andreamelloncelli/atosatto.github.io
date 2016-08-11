+++
type  = "talk"
draft = false
title    = "Using Docker for Fast and Easy Testing of MariaDB and MaxScale"
slug     = "percona-live--docker-fast-and-easy-testing-of-mariadb-and-maxscale"
date     = "2015-09-22T11:20:00+02:00"
event    = "Percona Live Europe 2015 - Amsterdam"
website  = "https://www.percona.com/live/europe-amsterdam-2015/sessions/using-docker-fast-and-easy-testing-mariadb-and-maxscale"
location = "Room Winterthur, Mövenpick Hotel, Piet Heinkade 11, Amsterdam, Netherlands"
slides   = "https://www.percona.com/live/europe-amsterdam-2015/sites/default/files/slides/PerconaLive.pdf"
video    = "https://www.youtube.com/watch?v=3q8jzCTI_Sg"
tags     = [ "docker", "mariadb", "maxscale", "devops", "perconalive", "talk" ]
+++

The ability to replicate the production environment in an isolated
testing environment is a key factor for the success of any
infrastructure (major or minor) component upgrade or replacement.

Before introducing a new technology and deploying components
into critical infrastructures, the maintainers must have a very deep
knowledge of them.

To reach this expertise it is really important to build and re-deploy
the testing environment in an easy and fast way.

In Colt Engine we experienced this situation when we decided to
migrate all our hosting customers from MySQL 5.1 to MariaDB 10.

During this presentation we will show how we used Docker
and docker-compose to replicate our production infrastructure in a testing environment and how we used these technologies to dramatically increase our experience and knowledge around MaxScale.
This speech will presents several real examples of different MaxScale
use cases ranging from authentication to read-write splitting and
about how we automated the provisioning of such configurations with Docker.
