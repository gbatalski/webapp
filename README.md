Description
===========
Clones the twissjava webapp repo and deploys it on a local jetty server via maven

Requirements
============
maven
git
jetty

Attributes
==========
## Maven Build
appname  "twissjava"
giturl   "https://github.com/gbatalski/twissjava"
maven_opts   "-Xmx512m"
build_params  "-DskipTests=true"

## WebApp Descriptor defaults (web.xml)
contextPath  /twissjava
appClass  org.mortbay.jetty.webapp.WebAppContext"

## Storage Properties  
Configure cassandra database and client

cluster Nebula Cassandra Cluster"
hosts "localhost"
keyspace "Twissjava"
port  "9160"
replication_factor  "3"
read_consistency_level  "QUORUM"
write_consistency_level "QUORUM"


Usage
=====
The only available recipe is default so run:

recipe[webapp]
