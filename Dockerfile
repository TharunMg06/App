  
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

WORKDIR /app

COPY . .

RUN dotnet restore

FROM mcr.microsoft.com/dotnet/aspnet:6.0

WORKDIR /app



ENTRYPOINT ["dotnet"]

