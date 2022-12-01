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
mkdir tools; mkdir wordlists;
export PATH=$PATH:/dev/shm/tools

# go
echo "Installing go"
wget -q https://go.dev/dl/go1.19.3.linux-amd64.tar.gz; tar -xzf go1.19.3.linux-amd64.tar.gz;
rm go1.19.3.linux-amd64.tar.gz;
mv go/bin/go tools/; rm -rf go;
echo "Done";

# Nuclei
echo "Installing Nuclei..";
nuclei="https://github.com/projectdiscovery/nuclei/releases/download/v2.7.9/nuclei_2.7.9_linux_amd64.zip";
wget -q $nuclei; unzip -q -q nuclei_2.7.9_linux_amd64.zip; rm nuclei_2.7.9_linux_amd64.zip;
mv nuclei tools/;
echo "Done";

# Subfinder
echo "Installing Subfinder..";
subfinder="https://github.com/projectdiscovery/subfinder/releases/download/v2.5.4/subfinder_2.5.4_linux_amd64.zip";
wget -q $subfinder; unzip -q -q subfinder_2.5.4_linux_amd64.zip; rm subfinder_2.5.4_linux_amd64.zip;
mv subfinder tools/;
echo "Done";

# Naabu
echo "Installing naabu..";
naabu="https://github.com/projectdiscovery/naabu/releases/download/v2.1.1/naabu_2.1.1_linux_amd64.zip";
wget -q $naabu; unzip -q -q naabu_2.1.1_linux_amd64.zip; rm naabu_2.1.1_linux_amd64.zip;
mv naabu tools/;
echo "Done";

# Httpx
echo "Installing httpx.. ";
httpx="https://github.com/projectdiscovery/httpx/releases/download/v1.2.5/httpx_1.2.5_linux_amd64.zip";
wget -q $httpx; unzip -q -q httpx_1.2.5_linux_amd64.zip; rm httpx_1.2.5_linux_amd64.zip;
mv httpx tools/;
echo "Done";

# Interactsh
echo "Installing Interactsh"
interactsh="https://github.com/projectdiscovery/interactsh/releases/download/v1.0.7/interactsh-client_1.0.7_Linux_x86_64.zip"
wget -q $interactsh; unzip -q interactsh-client_1.0.7_Linux_x86_64.zip; rm interactsh-client_1.0.7_Linux_x86_64.zip;
mv interactsh* tools/;
echo "";

# tlsx
echo "Installing tlsx";
tlsx="https://github.com/projectdiscovery/tlsx/releases/download/v0.0.9/tlsx_0.0.9_linux_amd64.zip";
wget -q $tlsx; unzip -q -q tlsx_0.0.9_linux_amd64.zip; rm tlsx_0.0.9_linux_amd64.zip;
mv tlsx* tools/;
echo "Done";

# katana
echo "Installing katana";
katana="https://github.com/projectdiscovery/katana/releases/download/v0.0.2/katana_0.0.2_linux_amd64.zip";
wget -q $katana;unzip -q katana_0.0.2_linux_amd64.zip;
mv katana tools/;
echo "Done";

# dnsx
echo "Installing dnsx";
dnsx="https://github.com/projectdiscovery/dnsx/releases/download/v1.1.1/dnsx_1.1.1_linux_amd64.zip"
wget -q $dnsx; unzip -q dnsx_1.1.1_linux_amd64.zip;rm dnsx_1.1.1_linux_amd64.zip;
mv dnsx tools/;
echo "Done";

# shuffledns
echo "Installing shuffledns";
shuffledns="https://github.com/projectdiscovery/shuffledns/releases/download/v1.0.8/shuffledns_1.0.8_linux_amd64.zip";
wget -q $shuffledns; unzip -q shuffledns_1.0.8_linux_amd64.zip; rm shuffledns_1.0.8_linux_amd64.zip;
mv shuffledns tools/;
echo "Done";

# qsreplace
echo "Installing qsreplace";
qsreplace="https://github.com/tomnomnom/qsreplace/releases/download/v0.0.3/qsreplace-linux-amd64-0.0.3.tgz";
wget -q $qsreplace; tar -xzf qsreplace-linux-amd64-0.0.3.tgz; rm qsreplace-linux-amd64-0.0.3.tgz;
mv qsreplace tools/;
echo "Done";

# assetfinder
echo "Installing assetfinder";
assetfinder="https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz";
wget -q $assetfinder; tar -xzf assetfinder-linux-amd64-0.1.1.tgz; rm assetfinder-linux-amd64-0.1.1.tgz;
mv assetfinder tools/;
echo "Done";

# httprobe
echo "Installing httprobe";
httprobe="https://github.com/tomnomnom/httprobe/releases/download/v0.2/httprobe-linux-amd64-0.2.tgz";
wget -q $httprobe; tar -xzf httprobe-linux-amd64-0.2.tgz; rm httprobe-linux-amd64-0.2.tgz;
mv httprobe tools/;
echo "Done";

# waybackurls
echo "Installing waybackurls";
waybackurls="https://github.com/tomnomnom/waybackurls/releases/download/v0.1.0/waybackurls-linux-amd64-0.1.0.tgz";
wget -q $waybackurls; tar -xzf waybackurls-linux-amd64-0.1.0.tgz; rm waybackurls-linux-amd64-0.1.0.tgz;
mv waybackurls tools/;
echo "Done";

# dalfox
echo "Installing dalfox"
dalfox="https://github.com/hahwul/dalfox/releases/download/v2.8.2/dalfox_2.8.2_linux_amd64.tar.gz";
wget -q $dalfox; tar -xzf dalfox_2.8.2_linux_amd64.tar.gz; rm dalfox_2.8.2_linux_amd64.tar.gz;
mv dalfox tools/;
echo "Done";

# gau
echo "Installing gau";
gau="https://github.com/lc/gau/releases/download/v2.1.2/gau_2.1.2_linux_amd64.tar.gz";
wget -q $gau; tar -xzf gau_2.1.2_linux_amd64.tar.gz; rm gau_2.1.2_linux_amd64.tar.gz;
mv gau tools/;
echo "Done";

# ffuf
echo "Installing ffuf";
ffuf="https://github.com/ffuf/ffuf/releases/download/v1.5.0/ffuf_1.5.0_linux_amd64.tar.gz";
wget -q $ffuf; tar -xzf ffuf_1.5.0_linux_amd64.tar.gz; rm ffuf_1.5.0_linux_amd64.tar.gz;
echo "Done";

# jq
echo "Installing jq";
jq="https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64";
wget -q $jq; mv jq-linux64 tools/jq;
echo "Done";

# arjun
echo "Installing arjun";
pip3 -q install arjun;
echo "Done";

# amass
echo "Installing amass";
amass="https://github.com/OWASP/Amass/releases/download/v3.20.0/amass_linux_amd64.zip";
wget -q $amass; unzip -q amass_linux_amd64.zip; rm amass_linux_amd64.zip;
mv amass_linux_amd64/amass tools/; rm -rf amass_linux_amd64;
echo "Done";

# puredns
echo "Installing puredns";
puredns="github.com/d3mondev/puredns/v2@latest"
go install $puredns 2>/dev/null; mv ~/go/bin/puredns tools/;
echo "Done";

# gf
echo "Installing gf";
gf="https://github.com/FrozenOption/VPS-Setup/raw/main/gf";
wget -q $gf; mv gf tools/;
echo "Done";

# anew 
echo "Installing anew";
anew="https://github.com/FrozenOption/VPS-Setup/raw/main/anew";
wget -q $anew; mv anew tools/;
echo "Done";

# filter-resolved
echo "Installing filter-resolved";
filterresolved="https://github.com/FrozenOption/VPS-Setup/raw/main/filter-resolved";
wget -q $filterresolved; mv filter-resolved tools/;
echo "Done";

# altdns
echo "Installing altdns";
pip3 -q install py-altdns==1.0.2;
echo "Done";

# dnsgen
echo "Installing dnsgen"
pip3 -q install dnsgen;
echo "Done";

#gotator
echo "Installing gotator";
go install github.com/Josue87/gotator@latest 2>/dev/null;
mv ~/go/bin/gotator tools/;
echo "Done"

# mytools
echo "Installing sectrails";
wget -q https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/sectrails; mv sectrails tools/;
echo "Done";
echo "Installing rapidns";
wget -q https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/rapidns; mv rapidns tools/;
echo "Done";
echo "Installing crtsh";
wget -q https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/crtsh; mv crtsh tools/;
echo "Done";
echo "Installing recon_me";
wget -q https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/recon_me; m recon_me tools/;
echo "Done";

# xsstrike
xsstrike="https://github.com/s0md3v/XSStrike";
wget -q $xsstrike; mv XSStrike tools/;
echo "Done";

# massdns
echo "Installing massdns";
massdns="https://github.com/blechschmidt/massdns"; git clone $massdns;
cd massdns; make -s; mv bin/massdns ../tools/;
cd ..; rm -rf massdns/;
echo "Done";

# masscan
echo "Installing masscan";
masscan="https://github.com/robertdavidgraham/masscan/archive/refs/tags/1.3.2.zip";
wget -q $masscan; unzip -q 1.3.2.zip;
cd 1.3.2; make -s; mv masscan ../tools/;
cd ..; rm -rf 1.3.2;
echo "Done";

# gf-patterns
echo "Installing gf-patterns";
gfpatterns="https://github.com/robre/gf-patterns";
git clone -q $gfpatterns; mv gf-patterns tools/;
echo "Done";

# cent
echo "Installing cent";
cent="https://github.com/xm1k3/cent";
git clone -q $cent; mv cent tools/;
echo "Done";

# recon_me
echo "Installing recon_me";
wget -q https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/recon_me;
mv recon_me tools/;
echo "Done";

# knockpy
echo "Installing knockpy";
git clone https://github.com/guelfoweb/knock; cd knock;
pip3 -q install -r requirements.txt;
python3 setup.py install 2>/dev/null; cd ..; mv knock tools/;
echo "Done";

# subdomanizer
echo "Installing Subdomanizer";
git clone -q https://github.com/nsonaniya2010/SubDomainizer; mv SubDomainizer tools/;
echo "Done";

echo "2- Wordlists";

# seclists
echo "Downloading SecLists";
seclists="https://github.com/danielmiessler/SecLists";
git clone -q $seclists; mv SecLists wordlists/;
echo "Done";

# Custom-Wordlists
echo "Downloading Custom Wordlists";
wget -q "https://raw.githubusercontent.com/ayoubfathi/leaky-paths/main/leaky-paths.txt";
mv leaky-paths wordlists/;
wget -q "https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/config-wordlist";
mv config-wordlist wordlists/;
wget -q "https://wordlists-cdn.assetnote.io/data/manual/best-dns-wordlist.txt";
wget -q best-dns-wordlist.txt wordlists/;
echo "Done"

# Resolvers
echo "3-Downloading fresh resolvers"
wget -q "https://raw.githubusercontent.com/proabiral/Fresh-Resolvers/master/resolvers.txt";
mv resolvers.txt tools/
echo "Done";

echo "";
cd tools/; chmod +x *;
echo "Finished! Your VPS is ready";
