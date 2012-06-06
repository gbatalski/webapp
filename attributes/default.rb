default[:webapp][:appname] = "twissjava"
default[:webapp][:giturl] = "https://github.com/gbatalski/twissjava"
default[:webapp][:maven_opts] = "-Xmx512m"
default[:webapp][:build_params] = "-DskipTests=true"

# WebApp Descriptor defaults
default[:webapp][:contextPath]="/twissjava"
default[:webapp][:appClass]="org.mortbay.jetty.webapp.WebAppContext"

# Storage Properties defaults  
default[:webapp][:cluster]="Nebula Cassandra Cluster"
default[:webapp][:hosts]="localhost"
default[:webapp][:keyspace]="Twissjava"
default[:webapp][:port]="9160"