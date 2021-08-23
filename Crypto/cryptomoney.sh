#!/bin/bash

# the first command-line parameter is in $1, the second in $2, etc.

case "$1" in

    name) echo "WillyBuck(TM)"
	  # additional parameters provided: (none)
	  ;;

    genesis) python3 crypto.py genesis
	     # additional parameters provided: (none)
             ;;

    generate) python3 crypto.py generate $2
	      # additional parameters provided: the wallet file name
              ;;

    address) python3 crypto.py address $2
	     # additional parameters provided: the file name of the wallet
	     ;;

    fund) python3 crypto.py fund $2 $3 $4
	  # additional parameters provided: destination wallet
	  # address, the amount, and the transaction file name
          ;;

    transfer) python3 crypto.py transfer $2 $3 $4 $5
	      # additional parameters provided: source wallet file
	      # name, destination address, amount, and the transaction
	      # file name
	      ;;

    balance) python3 crypto.py balance $2
	     # additional parameters provided: wallet address
	     ;;

    verify) python3 crypto.py verify $2 $3
	    # additional parameters provided: wallet file name,
	    # transaction file name
	    ;;

    mine) python3 crypto.py mine $2
		 # additional parameters provided: difficulty
		 ;;
    
    validate) python3 crypto.py validate
	      # additional parameters provided: (none)
	      ;;

    *) echo Unknown function: $1
       ;;

esac