Create password for users : elastic & kibana_system
docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-reset-password -u elastic
docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-reset-password -u kibana_system

use kibana_system password at docker-compose file 
use elastic password for login kibana & logstash.conf