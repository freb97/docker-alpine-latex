# Docker Alpine LaTeX

Yet another docker image running texlive and biber.

Why another custom one?

Because I couldn't get any latex images running
on my M1 mac and got really angry. This one
should work on both, ARM and x86 chips.

## Getting Started

### Dependencies

* Docker
* Docker-Compose

#### Recommended

* JetBrains IntelliJ
  * TeXiFy IDEA Plugin
  * PDF Viewer Plugin
* Visual Studio
* Visual Studio Code

### Installation

* Download dependencies
  * Docker
  * Docker-Compose
* Clone repository

### Usage

Compile PDF:
```bash
$ docker-compose up -d
```

The source files are found in the ```src``` directory.

The compiled PDF file and log output are
saved to the ```build``` directory.

On initial execution the command will build the docker 
image with texlive-full and biber, which can take a few
minutes. After that, compiling the PDF should only take
a few seconds, but that also depends on hardware.

The ```src``` folder already has a working example document
to expand on (or delete if you want to do your own thing).
Just make sure to either change the ```main``` parameter in
```scripts/compile.sh``` to the name of your new document
or to name the root document ```main.tex```.
