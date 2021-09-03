#!/bin/bash

git clone https://github.com/endtb/pih-mental-health.git /home/bahmni/pih-mental-health
mv /home/bahmni/pih-mental-health/forms/* /opt/openmrs/configuration/concepts/
chown -R bahmni:bahmni /opt/openmrs/configuration/concepts
rm -rf /home/bahmni/pih-mental-health                            
