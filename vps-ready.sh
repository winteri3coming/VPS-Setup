#!/bin/bash

nuclei="https://github.com/projectdiscovery/nuclei/releases/download/v2.7.9/nuclei_2.7.9_linux_amd64.zip"
subfinder="https://github.com/projectdiscovery/subfinder/releases/download/v2.5.4/subfinder_2.5.4_linux_amd64.zip"
naabu="https://github.com/projectdiscovery/naabu/releases/download/v2.1.1/naabu_2.1.1_linux_amd64.zip"
httpx="https://github.com/projectdiscovery/httpx/releases/download/v1.2.5/httpx_1.2.5_linux_amd64.zip"
interactsh="https://github.com/projectdiscovery/interactsh/releases/download/v1.0.7/interactsh-client_1.0.7_Linux_x86_64.zip"
nuclei-templates="https://github.com/projectdiscovery/nuclei-templates"
amass="https://github.com/OWASP/Amass/releases/download/v3.20.0/amass_linux_amd64.zip"
masscan="https://github.com/robertdavidgraham/masscan/archive/refs/tags/1.3.2.zip"
altdns="https://github.com/infosec-au/altdns"
assetfinder="https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz"
httprobe="https://github.com/tomnomnom/httprobe/releases/download/v0.2/httprobe-linux-amd64-0.2.tgz"
qsreplace="https://github.com/tomnomnom/qsreplace/releases/download/v0.0.3/qsreplace-linux-amd64-0.0.3.tgz"
waybackurls="https://github.com/tomnomnom/waybackurls/releases/download/v0.1.0/waybackurls-linux-amd64-0.1.0.tgz"
filter-resolved="https://github.com/FrozenOption/VPS-Setup/raw/main/filter-resolved"
anew="https://github.com/FrozenOption/VPS-Setup/raw/main/anew"
gau="https://github.com/lc/gau/releases/download/v2.1.2/gau_2.1.2_linux_amd64.tar.gz"
gf-patterns="https://github.com/robre/gf-patterns"
gf="https://github.com/FrozenOption/VPS-Setup/raw/main/gf"

wget $nuclei; 
wget $subfinder;
wget $naabu;
wget $httpx;
wget $interactsh;
git clone $nuclei-templates;
wget $amass;
git clone $altdns;
wget $assetfinder;
wget $httprobe;
wget $qsreplace;
wget $waybackurls;
wget $filter-resolved
wget $anew;
wget $gau;
git clone $gf-patterns;
wget gf;
unzip *.zip
tar -xzf *gz

