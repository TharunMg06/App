FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /app

COPY api.csproj .
RUN dotnet restore api.csproj

COPY . .
RUN dotnet publish -c Release -o out

FROM microsoft/dotnet:2.2-aspnetcore-runtime AS runtime
WORKDIR /app
COPY --from=build /app/out ./

ENTRYPOINT ["dotnet", "<your app>.dll"]
