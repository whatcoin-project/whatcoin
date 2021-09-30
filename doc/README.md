Whatcoin Core
==========

This is the official reference wallet for Whatcoin digital currency and comprises the backbone of the Whatcoin peer-to-peer network. You can [download Whatcoin Core](https://www.whatcoin.io/downloads/) or [build it yourself](#building) using the guides below.

Running
---------------------
The following are some helpful notes on how to run Whatcoin on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/whatcoin-qt` (GUI) or
- `bin/whatcoind` (headless)

### Windows

Unpack the files into a directory, and then run whatcoin-qt.exe.

### OS X

Drag Whatcoin-Qt to your applications folder, and then run Whatcoin-Qt.

### Need Help?

* See the [Whatcoin documentation](https://docs.whatcoin.io)
for help and more information.
* See the [Whatcoin Developer Documentation](https://whatcoin-docs.github.io/) 
for technical specifications and implementation details.
* Ask for help on [Whatcoin Nation Discord](http://whatcoinchat.org)
* Ask for help on the [Whatcoin Forum](https://whatcoin.io/forum)

Building
---------------------
The following are developer notes on how to build Whatcoin Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [OS X Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The Whatcoin Core repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- Source Code Documentation ***TODO***
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [Whatcoin Forum](https://whatcoin.io/forum), in the Development & Technical Discussion board.
* Discuss on [Whatcoin Nation Discord](http://whatcoinchat.org)

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
