# Use the official .NET SDK image as a base image
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

# Set the working directory in the container
WORKDIR /src

# Copy the .csproj and restore dependencies
COPY . . 
RUN dotnet restore "HelloWorldApp.Web.csproj"

#COPY . .
#WORKDIR "/src/HelloWorldApp"
#RUN dotnet build "HelloworldApp/HelloWorldApp.Web.csproj" c Release -o /app/build

# Build the application
#FROM build AS publish
RUN dotnet publish "HelloWorldApp.Web.csproj" -c Release -o /app/publish

# Build the runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app ./

# Expose the port your app will run on
EXPOSE 5000

ENTRYPOINT ["dotnet", "HelloworldApp.dll"] 
