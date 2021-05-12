# CheckWildCard 

Check the dns has wildcard enable or not for a domain.  

* If wildcard dns is enable then it is not suitable to bruteforce for subdomain enumeration.   
* If wildcard dns is disable then go for bruteforce for subdomain enumeration.  

```
./CheckWildCard.sh olx.com
[!] Wildcard detected.. exiting
```  

```   
./CheckWildCard.sh google.com  
[+] Did not detect wildcard
[+] Safe to bruteforce for subdomains..
```  

