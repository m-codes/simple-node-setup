#!/usr/bin/env bash
# This make the script take an argument/parameter
# This is the directory name
# It will also be used for the files name
dirName="$1";

# Create a directory using this name
mkdir -p "$dirName"

# Change directory and go inside the diretory created
cd "$dirName"

# Create the JS file in the given directory
touch "$dirName".js
# Add all permissions to that file
chmod 755 "$dirName".js

# Create the test JS file in the given directory
touch "$dirName".test.js
# Add all permissions to that file
chmod 755 "$dirName".test.js

# Setup our environment to use node latest version
source ~/.nvm/nvm.sh
nvm use node

# Initialise the NPM project (this will create a file package.json)
npm init -y

# Add the jest package to our project
# (this will update package.json and package-lock.json)
npm add jest

# Also install jest "globally"
# (this is so we can run the `jest` command)
npm install -g jest

# This will add an empty test that you can use as a template
printf "
const %s = require('./%s.js');

describe('Hello World', () => {
  it('returns true', () => {
    expect(true).toBe(true);
  });
});
" $dirName $dirName > $dirName.test.js

# Run our tests
jest
