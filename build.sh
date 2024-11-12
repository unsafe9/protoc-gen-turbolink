#!/bin/bash

set -e

dotnet publish -c Release -r osx-arm64
cp bin/Release/osx-arm64/publish/protoc-gen-turbolink ../Cricket/Plugins/TurboLink/Tools/protoc-gen-turbolink
chmod +x ../Cricket/Plugins/TurboLink/Tools/protoc-gen-turbolink

dotnet publish -c Release -r win-x64
cp bin/Release/win-x64/publish/protoc-gen-turbolink.exe ../Cricket/Plugins/TurboLink/Tools/protoc-gen-turbolink.exe
