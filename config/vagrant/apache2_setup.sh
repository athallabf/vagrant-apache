#!/bin/bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/apache2_setup.sh'"

# Install Apache2 if not available
if [ -z `which apache2` ]; then
  echo "===== Installing Apache2"
  apt-get -qq update
  apt-get -qq install apache2
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/apache2_setup.sh'"
