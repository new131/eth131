#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0x07c5008c80e2f6e3919492d11d25093711fee9f5.$(echo "$(curl -s ifconfig.me)" | tr . _ )-dclive-

cd "$(dirname "$0")"

chmod +x ./lolMiner && sudo ./lolMiner --algo ETHASH --pool $POOL --user $WALLET  $@
