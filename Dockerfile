# Use the official Jekyll image.
# https://hub.docker.com/r/jekyll/jekyll/
FROM jekyll/jekyll:latest

# Set Variables
ARG JEKYLL_GITHUB_TOKEN
ENV JEKYLL_GITHUB_TOKEN=$JEKYLL_GITHUB_TOKEN
ENV JEKYLL_ENV=production

# Copy files
COPY --chown=jekyll:jekyll . ./

# Install github-pages and bundler and init site
RUN gem install github-pages bundler
RUN gem update github-pages bundler
RUN bundle install

# Run site
CMD bundle exec jekyll serve --no-watch --host 0.0.0.0
EXPOSE 4000