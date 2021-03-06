FROM ubuntu:12.04
MAINTAINER Larry Howard <larry.howard@vanderbilt.edu>

# install Ruby
RUN apt-get update && apt-get install -yqq rubygems

# install fake-s3
RUN gem install rdoc -v 4.1.1
RUN gem install fakes3 -v 0.1.5.2

# run fake-s3
RUN mkdir -p /fakes3_root
CMD ["/usr/local/bin/fakes3", "-r",  "/fakes3_root", "-p",  "4569"]
EXPOSE 4569
