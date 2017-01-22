FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.3.0

RUN gem install git_tracker --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["git-tracker"]
CMD ["--help"]
