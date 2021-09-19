# Use the official Jekyll image.
# https://hub.docker.com/r/jekyll/jekyll/
FROM custom/githubpages

# Copy files
COPY --chown=jekyll:jekyll . ./

# Install github-pages and bundler and init site
RUN bundle install

# Run site
CMD bundle exec jekyll serve --no-watch --host 0.0.0.0
EXPOSE 4000