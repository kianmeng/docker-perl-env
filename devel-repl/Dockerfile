FROM perl:latest

RUN cpanm install \
    # Prevent Data::Dump::Streamer failed to install
    # See https://rt.cpan.org/Public/Bug/Display.html?id=100488
    PadWalker \
    # Enable command history
    # See http://stackoverflow.com/a/28818133
    Term::ReadLine::Gnu \
    Devel::REPL

WORKDIR /export
