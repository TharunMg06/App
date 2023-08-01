  
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

WORKDIR /app

COPY /opt/dotnet6-openapi/api/* .

RUN dotnet restore

FROM mcr.microsoft.com/dotnet/aspnet:6.0

WORKDIR /app



ENTRYPOINT ["dotnet", "MyApp.dll"]

