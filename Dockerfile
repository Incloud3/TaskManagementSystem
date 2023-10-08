FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /app

COPY TaskManagementSystem/TaskManagementSystem.csproj ./TaskManagementSystem/
RUN dotnet restore TaskManagementSystem/TaskManagementSystem.csproj

COPY TaskManagementSystem/. ./TaskManagementSystem/

RUN dotnet publish TaskManagementSystem/TaskManagementSystem.csproj -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app/out .
ENTRYPOINT ["dotnet", "TaskManagementSystem.dll"]
