homebrew-py
-----------

This is a [Homebrew][] tap containing some (Python-related) formulae that can't
be easily built with [pip][].

The packages are:

* python-gst: [Python gstreamer bindings][pygst]
* PySyck: [Python bindings][pysyck] for \_why's [fast YAML parser][syck]

[pysyck]: http://pyyaml.org/wiki/PySyck
[syck]: https://github.com/indeyets/syck
[pip]: http://www.pip-installer.org/
[pygst]: http://pygstdocs.berlios.de/
[Homebrew]: https://github.com/mxcl/homebrew/

To use this formula repository, just [tap][] it:

    $ brew tap sampsyo/py
    $ brew install gst-python

[tap]: https://github.com/mxcl/homebrew/wiki/Homebrew-0.9
