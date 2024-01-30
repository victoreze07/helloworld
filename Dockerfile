FROM mcr.microsoft.com/dotnet/sdk:8.0 

# Set the working directory in the container
WORKDIR /app

#COPY /app /app

EXPOSE 5000

ENTRYPOINT ["dotnet", "HelloworldApp.dll"]