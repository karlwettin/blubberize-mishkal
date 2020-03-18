#!/bin/bash

m_error() {
  echo $1
  exit 2
}

if [ ! -d "src" ]
then
  mkdir src
fi
cd src

if [ -d "mishkal" ] ; then
  cd mishkal
  if ! git pull; then
    m_error "Unable to pull from Mishkal git repo!"
  fi
else
  if ! git clone https://github.com/linuxscout/mishkal.git; then
    m_error "Unable to clone Mishkal git repo!"
  fi
  cd mishkal
fi
#cp ../../mishkal-webserver-nolog.py interfaces/web

# back to src
cd ..

# back to root
cd ..

echo "Success!"
