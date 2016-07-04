FROM perl:latest

# Prevent Data::Dump::Streamer failed to install
# See https://rt.cpan.org/Public/Bug/Display.html?id=100488
RUN cpanm install PadWalker

# Enable command history
# See http://stackoverflow.com/a/28818133
RUN cpanm install Term::ReadLine::Gnu

RUN cpanm install Devel::REPL
RUN cpanm install Devel::REPL::Plugin::DataPrinter
RUN cpanm install Devel::REPL::Plugin::History
RUN cpanm install Devel::REPL::Plugin::MultiLine::PPI
RUN cpanm install Devel::REPL::Plugin::Colors
RUN cpanm install Devel::REPL::Plugin::Completion
RUN cpanm install Devel::REPL::Plugin::CompletionDriver::INC
RUN cpanm install Devel::REPL::Plugin::CompletionDriver::LexEnv
RUN cpanm install Devel::REPL::Plugin::CompletionDriver::Keywords
RUN cpanm install Devel::REPL::Plugin::CompletionDriver::Methods

RUN mkdir /root/.re.pl
COPY repl.rc /root/.re.pl/

WORKDIR /export

ENTRYPOINT ["/usr/local/bin/re.pl"]
