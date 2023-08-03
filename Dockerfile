FROM mcr.microsoft.com/dotnet/sdk:6.0-bullseye-slim

ENV ASPNETCORE_ENVIRONMENT=Development \
    DOTNET_RUNNING_IN_CONTAINER=true \
    COMPlus_EnableDiagnostics=0

COPY . /opt

RUN cd /opt  dotnet restore api.csproj && dotnet build api.csproj -c Release && dotnet publish api.csproj -c Release -o ./publish
RUN pwd && ls
##RUN  dotnet publish api.csproj -c Release -o ./publish

 

RUN cd /opt/publish

WORKDIR /opt/publish

 

EXPOSE 8081

ENTRYPOINT ["dotnet", "api.dll"]


