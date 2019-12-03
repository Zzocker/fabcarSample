#Removing world state or peer ledger
if [ -d /vagrant/ledgers ]; then
    printf '%s\n' "Removing Lock (/vagrant/ledgers)"
    rm -rf /vagrant/ledgers
fi
#Removing channel of orderer ledger
if [ -d /var/hyperledger ]; then
    printf '%s\n' "Removing Lock (/var/hyperledger)"
    rm -rf /var/hyperledger
fi