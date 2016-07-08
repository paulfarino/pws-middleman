#!/usr/bin/env sh

# Run this script immediately after cloning the codebase.
# Removes Git remote + prompts for your repo URL

# Make sure Bundler is installed
if [ "$(gem query -i -n bundler)" = "false" ]; then
  echo "Installing Bundler..."
  gem install bundler
fi

# Set up Ruby dependencies via Bundler
echo "Installing Dependencies..."
bundle install

# Remove Git remote if it's still the default repo
if [ "$(git config --get remote.origin.url)" = "https://github.com/paulfarino/pws-middleman" ]; then
  echo "What is your repo url? Enter URL or leave blank"
  read url
  if [ -z "$url" ]; then
    git remote rm origin
    git remote add origin "$url"
  fi
fi