# Basic LaTeX Docker Image
FROM ubuntu:26.04

# Install LaTeX
RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-xetex \
    texlive-lang-german \
	texlive-extra-utils \
    lmodern \
    && rm -rf /var/lib/apt/lists/* 

# Install utils
# pdftk       : for watermarking
# ghostscript : needed by pdftk
RUN apt-get update && apt-get install -y --no-install-recommends \
	wget \
	curl \
	vim \
	unzip \
	git \
	ssh \ 
	make \
	zsh \
	ghostscript \
	pdftk \
	&& rm -rf /var/lib/apt/lists/*

# Default command
CMD ["pdflatex", "--version"]