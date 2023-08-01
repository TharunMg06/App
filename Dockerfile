  
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

WORKDIR /src

COPY src/*.csproj .

RUN dotnet restore

COPY src .

RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:6.0

WORKDIR /app

COPY --from=build-env /src/out .

ENTRYPOINT ["dotnet", "MyApp.dll"]

