#################################################################
#Checks if external elasticsearch configuration is available.	#
#if it finds one, it will copy it over to elasticsearch, 		#
#overriding default one											#
#################################################################
config_filename="/esconfig/elasticsearch.yml"

if test -e $config_filename;then
	echo "Found external configuration. Overriding the default.."
	cp -f /esconfig/*.yml /elasticsearch/config/elasticsearch.yml
else
 	echo "File Not FOUND.. continuing with default.. "
fi
