#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.whatcoincore/whatcoind.pid file instead
whatcoin_pid=$(<~/.whatcoincore/testnet3/whatcoind.pid)
sudo gdb -batch -ex "source debug.gdb" whatcoind ${whatcoin_pid}
