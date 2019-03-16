FROM perl:latest

RUN cpanm HTTP::AnyUA
RUN cpanm AnyEvent::HTTP
RUN cpanm Furl
RUN cpanm HTTP::Tiny
RUN cpanm LWP::UserAgent
RUN cpanm Mojo::UserAgent
RUN cpanm Net::Curl::Easy

WORKDIR /export
