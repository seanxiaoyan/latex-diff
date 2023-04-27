FROM debian:buster

# Sets environment variables PERL_MM_USE_DEFAULT and PERL_CPANM_OPT to 
# configure CPAN non-interactively and to force the installation without running tests.
ENV PERL_MM_USE_DEFAULT=1
ENV PERL_CPANM_OPT="--notest --force --skip-satisfied"

RUN apt-get update && \
    apt-get install -y texlive-latex-base texlive-latex-extra texlive-fonts-recommended perl make && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN cpan Algorithm::Diff

ADD https://raw.githubusercontent.com/ftilmann/latexdiff/master/latexdiff /usr/local/bin/latexdiff
RUN chmod +x /usr/local/bin/latexdiff
