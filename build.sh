#!/bin/bash
set -e

echo "Installing Ruby dependencies..."
bundle install --deployment --without development test

echo "Building Jekyll site..."
JEKYLL_ENV=production bundle exec jekyll build

echo "Build completed successfully!"