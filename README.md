
What is Whatcoin?
-------------
The name Whatcoin is what we came up with after over a week of complete failures. We're gonna be honest here folks, Whatcoin is a fork of [Raptoreum](https://raptoreum.com/).  They created the Ghostrider algo, we just liked it so much, we decided to spread it around a bit.

Introduction
-----
Whatcoin began as the fairly simple idea, spread ghostrider into more by leveraging smart contracts, trustless transfers and the automation of assets and WATC (Whatcoin). 

The project is still new, we do not have an official roadmap.  We have memes and coins.

Whatcoin is a fork of Raptoreum, which forked Dash.

Our hope is to contriubte to the community by sharing Ghostrider with more users, demonstratie its ASIC resiliance and providing lots and lots of rain.

License
-------

Whatcoin Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

The `master` branch is meant to be stable. Development is done in separate branches.
[Tags](https://github.com/whatcoin/whatcoin/tags) are created to indicate new official,
stable release versions of Whatcoin Core.

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md).

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/test), written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/test) are installed) with: `test/functional/test_runner.py`

The Travis CI system makes sure that every pull request is built for Windows, Linux, and OS X, and that unit/sanity tests are run automatically.

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.
