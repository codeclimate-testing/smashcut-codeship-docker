FROM ruby:2.3.3
RUN mkdir /smashcut
RUN mkdir /smashcut/lib
RUN mkdir /smashcut/lib/smashcut
WORKDIR /smashcut
ADD gems.rb /smashcut/gems.rb
ADD gems.locked /smashcut/gems.locked
ADD lib/smashcut/version.rb /smashcut/lib/smashcut/version.rb
ADD smashcut.gemspec /smashcut/smashcut.gemspec
RUN bundle install
ADD . /smashcut
