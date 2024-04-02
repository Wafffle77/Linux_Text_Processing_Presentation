# Text Processing Presentation

This repository contains source for a presentation on basic text processing involving regular expressions and some standard linux tools.

- The `slides` directory contains markdown source for the slides.
- The `slides.sh` script can be used to compile the slides into a [Slidy](https://www.w3.org/Talks/Tools/Slidy2/)-based HTML/CSS/JS presentation.
    - Giving the `QUICK` argument to the script will cause it to produce a file faster, at the cost of requiring access to the Slidy JS and CSS files on the internet whenever the slides are viewed instead of just at compile-time.
- The examples directory contains some example awk scripts that I wrote a while back for projects. They aren't perfect, but they're good enough to get a grasp of the language
    - `http.awk` is a static HTTP server written in awk. There are instructions on how to run it at the beginning of the file.
    - `iptables.awk` generates a bash script to create an iptables-firewall based on active connections. It also has instructions on how to run it in the file itself.
    - `Contents.awk` and `Packages.awk` are for parsing different files in Debian repositories.