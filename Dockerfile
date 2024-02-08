# Use the official .NET SDK image as a base image
FROM mcr.microsoft.com/dotnet/sdk:3.1

COPY HelloWorldApp.Web/bin/Release/net8.0/Publish/ App/

WORKDIR /App

EXPOSE 5000

ENTRYPOINT ["dotnet", "HelloworldApp.dll"] 
