sudo apt update && sudo apt upgrade -y
sudo apt install -y git ruby ruby-dev libsqlite3-dev libpcap-dev libssl-dev libreadline-dev libpq-dev zlib1g-dev build-essential libsqlite3-0 libsqlite3-dev
git clone https://github.com/rapid7/metasploit-framework.git
cd metasploit-framework
gem install bundler
bundle install
./msfconsole
