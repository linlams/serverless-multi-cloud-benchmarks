#!/bin/bash

#build handlers
dotnet restore
dotnet publish -c release

#install zip
# apt-get -qq update
# apt-get -qq -y install zip

#create deployment package
pushd bin/release/netcoreapp2.0/publish
zip -r ./deploy-package.zip ./*
popd
