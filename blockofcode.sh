#! /bin/bash
{ ls ; pwd ; date ; }
which docker && { echo "docker is installed" ; echo "docker version is $(docker -v)" ; }
which apache2 2>&1 2>/dev/null && echo "apache is installed" || echo "apache is not installed"
