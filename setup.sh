#!/bin/env bash

function install () {
	echo "Installing mokey"

	cp -vf src/mokey /usr/bin/mokey || { echo "ERROR" ; exit 1 ; }
	cp -vf src/etc/mokey.cnf /etc/mokey.cnf || { echo "ERROR" ; exit 1 ; }


}

set -e

test "$(id -u)" -eq "0" || { echo "must be root user" 1>&2 ; exit ; }

"$@"
