#!/bin/bash

#build handlers
dotnet build
dotnet publish -c release

#install zip
apt-get -qq update
apt-get -qq -y install zip

#create deployment package
pushd src/iTrentImport/bin/release/netstandard2.0/publish
zip -r ./deploy-package.zip ./*

