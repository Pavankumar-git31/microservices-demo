FROM mcr.microsoft.com/dotnet/sdk:8.0 AS builder
WORKDIR /app

COPY src/cartservice.csproj src/
RUN dotnet restore src/cartservice.csproj

COPY . .
RUN dotnet publish src/cartservice.csproj -c Release -o /cartservice

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

COPY --from=builder /cartservice .

ENV ASPNETCORE_URLS=http://+:7070

EXPOSE 7070

ENTRYPOINT ["dotnet", "cartservice.dll"]
