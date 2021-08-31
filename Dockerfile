FROM ruby:2.6.3
ADD . /var/prometheus_exporter
WORKDIR /var/prometheus_exporter
RUN gem install bundler
RUN bundle install
ENTRYPOINT [ "bundle", "exec", "prometheus_exporter", "-b", "0.0.0.0" ]