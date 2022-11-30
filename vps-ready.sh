#!/bin/bash

echo "
__      _______   _____ _____ _______ 
 \ \    / /  __ \ / ____|_   _|__   __|
  \ \  / /| |__) | (___   | |    | |   
   \ \/ / |  ___/ \___ \  | |    | |   
    \  /  | |     ____) |_| |_   | |   
     \/   |_|    |_____/|_____|  |_|   
                                       
                                       
";

echo "";
echo "1- Downloading Tools";
echo "";
mkdir tools;

#Nuclei
echo "Installing Nuclei..";
nuclei="https://github.com/projectdiscovery/nuclei/releases/download/v2.7.9/nuclei_2.7.9_linux_amd64.zip";
wget $nuclei;
unzip -o nuclei_2.7.9_linux_amd64.zip;
echo "";

# Subfinder
echo "Installing Subfinder..";
subfinder="https://github.com/projectdiscovery/subfinder/releases/download/v2.5.4/subfinder_2.5.4_linux_amd64.zip";
wget $subfinder;
unzip -o subfinder_2.5.4_linux_amd64.zip;
echo "";

# Naabu
echo "Installing Naabu..";
naabu="https://github.com/projectdiscovery/naabu/releases/download/v2.1.1/naabu_2.1.1_linux_amd64.zip";
wget $naabu;
unzip -o naabu_2.1.1_linux_amd64.zip;
echo "";

# Httpx
echo "Installing httpx.. ";
httpx="https://github.com/projectdiscovery/httpx/releases/download/v1.2.5/httpx_1.2.5_linux_amd64.zip";
wget $httpx;
unzip -o httpx_1.2.5_linux_amd64.zip;
echo "";

# Interactsh
interactsh="https://github.com/projectdiscovery/interactsh/releases/download/v1.0.7/interactsh-client_1.0.7_Linux_x86_64.zip"
wget $interactsh;
unzip -o interactsh-client_1.0.7_Linux_x86_64.zip;
echo "";

# tlsx
tlsx="https://github.com/projectdiscovery/tlsx/releases/download/v0.0.9/tlsx_0.0.9_linux_amd64.zip";
wget $tlsx;
unzip -o tlsx_0.0.9_linux_amd64.zip;
echo "";

# katana
katana="https://github.com/projectdiscovery/katana/releases/download/v0.0.2/katana_0.0.2_linux_amd64.zip";
wget $katana;
unzip -o katana_0.0.2_linux_amd64.zip;
echo "";

# dnsx
dnsx="https://github.com/projectdiscovery/dnsx/releases/download/v1.1.1/dnsx_1.1.1_linux_amd64.zip"
wget $dnsx;
unzip -o dnsx_1.1.1_linux_amd64.zip;
echo "";

# uncover
uncover="https://github.com/projectdiscovery/uncover/releases/download/v0.0.9/uncover_0.0.9_linux_amd64.zip";
wget $uncover;
unzip -o uncover_0.0.9_linux_amd64.zip;
echo "";

# shuffledns
shuffledns="https://github.com/projectdiscovery/shuffledns/releases/download/v1.0.8/shuffledns_1.0.8_linux_amd64.zip";
wget $shuffledns;
unzip -o shuffledns_1.0.8_linux_amd64.zip;
echo "";

# qsreplace
qsreplace="https://github.com/tomnomnom/qsreplace/releases/download/v0.0.3/qsreplace-linux-amd64-0.0.3.tgz";
wget $qsreplace;
tar -xzf qsreplace-linux-amd64-0.0.3.tgz;
echo "";

# assetfinder
assetfinder="https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz";
wget $assetfinder;
tar -xzf assetfinder-linux-amd64-0.1.1.tgz;
echo "";

# httprobe
httprobe="https://github.com/tomnomnom/httprobe/releases/download/v0.2/httprobe-linux-amd64-0.2.tgz";
wget $httprobe;
tar -xzf httprobe-linux-amd64-0.2.tgz;
echo "";

# waybackurls
waybackurls="https://github.com/tomnomnom/waybackurls/releases/download/v0.1.0/waybackurls-linux-amd64-0.1.0.tgz";
wget $waybackurls;
tar -xzf waybackurls-linux-amd64-0.1.0.tgz;
echo "";

# dalfox
dalfox="https://github.com/hahwul/dalfox/releases/download/v2.8.2/dalfox_2.8.2_linux_amd64.tar.gz";
wget $dalfox;
tar -xzf dalfox_2.8.2_linux_amd64.tar.gz;
echo "";

# gau
gau="https://github.com/lc/gau/releases/download/v2.1.2/gau_2.1.2_linux_amd64.tar.gz";
wget $gau;
tar -xzf gau_2.1.2_linux_amd64.tar.gz;
echo "";

# ffuf
ffuf="https://github.com/ffuf/ffuf/releases/download/v1.5.0/ffuf_1.5.0_linux_amd64.tar.gz";
wget $ffuf;
tar -xzf ffuf_1.5.0_linux_amd64.tar.gz;
echo "";

# jq
jq="https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64";
wget $jq;
mv jq-linux64 jq;
echo "";

# arjun
pip3 install arjun;
echo "";

# amass
amass="https://github.com/OWASP/Amass/releases/download/v3.20.0/amass_linux_amd64.zip";
wget $amass;
unzip -o amass_linux_amd64.zip;
mv amass_linux_amd64/amass .;
rm -rf amass_linux_amd64.zip;
echo "";


# go
wget https://go.dev/dl/go1.19.3.linux-amd64.tar.gz;
tar -xzf go1.19.3.linux-amd64.tar.gz;
rm go1.19.3.linux-amd64.tar.gz;
echo "";
cd go/bin/;
export PATH=$PATH:`pwd`

# puredns
cd ../../
puredns="github.com/d3mondev/puredns/v2@latest"
go install $puredns;
echo "";

# gf
gf="https://github.com/FrozenOption/VPS-Setup/raw/main/gf";
wget $gf;
echo "";

# anew 
anew="https://github.com/FrozenOption/VPS-Setup/raw/main/anew";
wget $anew;
echo "";

# filter-resolved
filterresolved="https://github.com/FrozenOption/VPS-Setup/raw/main/filter-resolved";
wget $filterresolved;
echo "";

# altdns
pip3 install py-altdns==1.0.2;
echo "";

# dnsgen
pip3 install dnsgen;
echo "";

#gotator
git clone https://github.com/Josue87/gotator;
echo "";

# mytools
wget https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/sectrails;
wget https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/rapidns;
wget https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/jldc;
wget https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/crtsh;
wget https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/recon_me;

# xsstrike
xsstrike="https://github.com/s0md3v/XSStrike";
wget $xsstrike;
echo "";

# massdns
massdns="https://github.com/blechschmidt/massdns"
git clone $massdns;
cd massdns;
make;
make install;
cd ..;
echo "";

# masscan
masscan="https://github.com/robertdavidgraham/masscan/archive/refs/tags/1.3.2.zip";
wget $masscan;
unzip -o 1.3.2.zip;
cd 1.3.2; make; make install;
cd ..; rm -rf 1.3.2;
echo "";

# nuclei-templates
nucleitemplates="https://github.com/projectdiscovery/nuclei-templates";
git clone $nucleitemplates;
echo "";

# gf-patterns
gfpatterns="https://github.com/robre/gf-patterns";
git clone $gfpatterns;
echo "";

# cent
cent="https://github.com/xm1k3/cent";
git clone $cent;
echo "";

# recon_me
wget https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/recon_me;
echo "";

# knockpy
git clone https://github.com/guelfoweb/knock; cd knock;
pip3 install -r requirements.txt;
python3 setup.py install;
echo "";
cd ..;

# subdomanizer
git clone https://github.com/nsonaniya2010/SubDomainizer;
echo "";
echo "2- Downloading Wordlists.."
echo "";

# seclists
seclists="https://github.com/danielmiessler/SecLists";
git clone $seclists;
echo "";

# wordlists
wget "https://raw.githubusercontent.com/ayoubfathi/leaky-paths/main/leaky-paths.txt";
wget "https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/config-wordlist";
wget "https://wordlists-cdn.assetnote.io/data/manual/best-dns-wordlist.txt";

# fresh resolvers
wget "https://raw.githubusercontent.com/proabiral/Fresh-Resolvers/master/resolvers.txt";

chmod +x *;
export PATH=$PATH:$(pwd);
