#!/bin/bash

set -e

dotnet publish -c Release -r osx-arm64

# copy to the plugin path
cp bin/Release/osx-arm64/publish/protoc-gen-turbolink ../Cricket/Plugins/TurboLink/Tools/protoc-gen-turbolink
chmod +x ../Cricket/Plugins/TurboLink/Tools/protoc-gen-turbolink