#!/usr/bin/env sh

python thamw.custom.updateHostsFile.py --auto --skipstatichosts --minimise --noupdate
tail -n +8 hosts > steven.black.base

python thamw.custom.updateHostsFile.py --auto --skipstatichosts --minimise --noupdate --datapath data_empty --extensions fakenews
tail -n +2 hosts > steven.black.fakenews

python thamw.custom.updateHostsFile.py --auto --skipstatichosts --minimise --noupdate --datapath data_empty --extensions gambling
tail -n +14 hosts > steven.black.gambling

python thamw.custom.updateHostsFile.py --auto --skipstatichosts --minimise --noupdate --datapath data_empty --extensions porn
tail -n +14 hosts > steven.black.porn

python thamw.custom.updateHostsFile.py --auto --skipstatichosts --minimise --noupdate --datapath data_empty --extensions social
tail -n +12 hosts > steven.black.social # plus.google.com is missed out but it's alright
