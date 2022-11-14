#! /bin/sh

# call using: setup.sh new -- to setup folder structure
# call using: setup.sh -- to add export NODE_ENV


# export NODE_ENV environmental variable
export NODE_ENV=development


initialisation() {
  # set default node values
  echo '\nInitialising project ...'

  echo 'Please enter - author name:'
  read NAME
  
  echo '\nPlease enter - email address:'
  read EMAIL

  echo '\nPlease enter - author URL (full url starting with http://):'
  read URI

  echo '\nSetting up project defaults'
  npm config set init-author-name "$NAME"
  npm config set init-author-email "$EMAIL"
  npm config set init-author-url "$URI"
  npm config set init-license "MIT"
  npm config set init-version "0.0.1"
  
  npx license MIT -n "$NAME" # add a suitable license (https://opensource.org/licenses/MIT)
  npx gitignore node # use the gitignore package to automatically avoid downloading irrelevant resources; creates an extensive hidden ‘.gitignore’ file.
  npx covgen "$EMAIL" # use the ‘covgen’ package to generate a Contributor Covenant (https://www.contributor-covenant.org) and setup a project based ‘code of conduct’ markdown doc that can be used to welcome contributors
  
  # initialise a new node application/project manifest, using npm to setup the JSON packages file – the ‘y’ sets all default values
  npm init -y
  

  # create local folder structure
  mkdir ./app
  mkdir ./app/server
  touch ./app/server/index.js
  
  mkdir ./app/client
  touch ./app/client/index.js
  
  mkdir ./app/scripts
  touch ./app/scripts/provision.js
  touch ./app/scripts/db.js
  
  mkdir ./app/config
  touch ./app/config/index.js
  touch ./app/config/server.js

  # update the packages.json project's entry point
  npm pkg set main='/app/server/index.js'

}


for FN in $*
do
  if [ $FN = 'new' ] 
  then
    initialisation
  fi
done

