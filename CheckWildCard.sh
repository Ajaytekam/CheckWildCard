#!/bin/bash 

Banner() {
    echo "Usage: ${0} <domain_name>"
    exit 0
}

check_wildcard() {
    DOMAIN=$1
    if [[ "$(dig @1.1.1.1 A,CNAME {randomdfklsdfhsdkfnsdmklghdfhgkjdfhigudfkghdfkgdhgd,testingforwildcard,plsdontgimmearesulti}.$DOMAIN +short | wc -l)" -gt "1" ]]
    then
        echo "[!] Wildcard detected.. exiting"
        exit 1
    else
        echo "[+] Did not detect wildcard" 
        echo "[+] Safe to bruteforce for subdomains.."
        exit 0
    fi
}

# Global vars
DOMAIN=$1

if [ ${#} -eq 1 ]
then
     check_wildcard $DOMAIN
else
    Banner
fi

