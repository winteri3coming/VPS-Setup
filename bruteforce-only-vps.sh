#!/bin/bash
RED='\033[0;31m';
GREEN='\033[0;32m';
YELLOW='\033[1;33m';
NC='\033[0m'

workspace=$(pwd);

echo "";
echo -e "${RED}1-Downloading Tools${NC}";
echo "";
mkdir tools; mkdir wordlists;
export PATH=$PATH:$(pwd)/tools;

# go
echo -n "Installing go";
wget -q https://go.dev/dl/go1.19.3.linux-amd64.tar.gz; tar -xzf go1.19.3.linux-amd64.tar.gz;
rm go1.19.3.linux-amd64.tar.gz;
mv go/ $workspace/tools/; export PATH=$PATH:$(pwd)/tools/go/bin/;
echo -e "\t \tDone ✔";

# ffuf
echo -n "Installing ffuf";
ffuf="https://github.com/ffuf/ffuf/releases/download/v1.5.0/ffuf_1.5.0_linux_amd64.tar.gz";
wget -q $ffuf; tar -xzf ffuf_1.5.0_linux_amd64.tar.gz; rm ffuf_1.5.0_linux_amd64.tar.gz;
mv ffuf $workspace/tools/;
echo -e "\t \tDone ✔";

# puredns
echo -n "Installing puredns";
puredns="github.com/d3mondev/puredns/v2@latest";
go install $puredns 2>/dev/null; mv ~/go/bin/puredns $workspace/tools/;
echo -e "\t \tDone ✔";

# anew 
echo -n "Installing anew";
anew="https://github.com/FrozenOption/VPS-Setup/raw/main/anew";
wget -q $anew; mv anew $workspace/tools/;
echo -e "\t \tDone ✔";

# altdns
echo -n "Installing altdns";
pip3 -q install py-altdns==1.0.2;
echo -e "\t \tDone ✔";

# dnsgen
echo -n "Installing dnsgen"
pip3 -q install dnsgen;
wget -q https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/dnsgen;
mv dnsgen $workspace/tools/;
echo -e "\t \tDone ✔";
export PATH=$PATH:$(pwd)/tools/go/bin/;

# Gotator
echo -n "Installing gotator";
go install github.com/Josue87/gotator@latest 2>/dev/null;
mv ~/go/bin/gotator $workspace/tools/;
echo -e "\t \tDone ✔"

# massdns
echo -n "Installing massdns";
massdns="https://github.com/blechschmidt/massdns";
git clone -q $massdns;
cd massdns;
make -s;
mv bin/massdns $workspace/tools/;
cd $workspace;
rm -rf massdns/;
echo -e "\t \tDone ✔";

# masscan
echo -n "Installing masscan";
masscan="https://github.com/robertdavidgraham/masscan";
git clone -q $masscan;
cd masscan/;
make -s;
mv bin/* $../tools/;
cd ..;
rm -rf masscan;
echo -e "\t \tDone ✔";

echo -e "${RED}2-Downloading Wordlists${NC}";
echo "";
# seclists
echo -n "Downloading SecLists";
seclists="https://github.com/danielmiessler/SecLists";
git clone -q $seclists; mv SecLists wordlists/;
echo -e "\t \tDone ✔";

# Custom-Wordlists
echo -n "Downloading Custom Wordlists";
wget -q "https://raw.githubusercontent.com/ayoubfathi/leaky-paths/main/leaky-paths.txt";
mv leaky-paths.txt wordlists/;
wget -q "https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/config-wordlist";
mv config-wordlist wordlists/;
wget -q "https://wordlists-cdn.assetnote.io/data/manual/best-dns-wordlist.txt";
mv best-dns-wordlist.txt wordlists/;
wget -q "https://raw.githubusercontent.com/infosec-au/altdns/master/words.txt";
mv words.txt $workspace/tools/;
wget -q "https://raw.githubusercontent.com/FrozenOption/VPS-Setup/main/config.ini";
mv config.ini $workspace/tools/;
echo -e "\t \tDone ✔";

# Resolvers
echo -n "Downloading fresh resolvers";
wget -q "https://raw.githubusercontent.com/proabiral/Fresh-Resolvers/master/resolvers.txt";
mv resolvers.txt $workspace/tools/;

