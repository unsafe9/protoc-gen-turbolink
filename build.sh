#!/bin/bash

set -e

dotnet publish -c Release -r osx-arm64
cp bin/Release/osx-arm64/publish/protoc-gen-turbolink ../cricket-server/tools/protoc/protoc-gen-turbolink
chmod +x ../cricket-server/tools/protoc/protoc-gen-turbolink

dotnet publish -c Release -r win-x64
cp bin/Release/win-x64/publish/protoc-gen-turbolink.exe ../cricket-server/tools/protoc/protoc-gen-turbolink.exe
