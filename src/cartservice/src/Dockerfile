FROM mcr.microsoft.com/dotnet/sdk:8.0 AS builder
WORKDIR /app

COPY cartservice.csproj ./
RUN dotnet restore cartservice.csproj

COPY . .
RUN dotnet publish cartservice.csproj -c Release -o /cartservice

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

COPY --from=builder /cartservice .

ENV ASPNETCORE_URLS=http://+:7070
ENV DOTNET_EnableDiagnostics=0 \
    ASPNETCORE_HTTP_PORTS=7070

USER 1000

EXPOSE 7070

ENTRYPOINT ["dotnet", "cartservice.dll"]
