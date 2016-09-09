FROM perl:latest

RUN cpanm install Reply
RUN cpanm install Term::ReadLine::Gnu
RUN cpanm install Reply::Plugin::DataDump

WORKDIR /export

ENTRYPOINT ["/usr/local/bin/reply"]
