# Base image
ARG RUBY_VERSION=2.6.6
FROM ruby:$RUBY_VERSION
# Setup environment variables that will be available to the instance
# and set it as the working directory.
ENV APP_HOME /app
WORKDIR $APP_HOME

# Install ruby dependency packages
ARG GITHUB_OAUTH_CREDENTIALS
ARG BUNDLER_VERSION_NUMBER=1.17.3
ARG BUNDLE_GEMFILE=Gemfile
ENV BUNDLE_GITHUB__COM $GITHUB_OAUTH_CREDENTIALS
ENV BUNDLER_VERSION $BUNDLER_VERSION_NUMBER
ENV BUNDLE_GEMFILE $BUNDLE_GEMFILE

RUN gem install bundler:$BUNDLER_VERSION_NUMBER \
  && bundle config https://rubygems.pkg.github.com/bodyshopbidsdotcom $GITHUB_OAUTH_CREDENTIALS

# Copy over our application code
COPY ./ $APP_HOME

ENV PATH "$APP_HOME/bin:$PATH"