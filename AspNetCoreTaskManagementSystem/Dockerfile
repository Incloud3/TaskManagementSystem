FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /app

COPY TaskManagementSystem/TaskManagementSystem.csproj ./TaskManagementSystem/
COPY TaskManagementSystem.Tests/TaskManagementSystem.Tests.csproj ./TaskManagementSystem.Tests/
RUN dotnet restore TaskManagementSystem/TaskManagementSystem.csproj
RUN dotnet restore TaskManagementSystem.Tests/TaskManagementSystem.Tests.csproj

COPY TaskManagementSystem/. ./TaskManagementSystem/
COPY TaskManagementSystem.Tests/. ./TaskManagementSystem.Tests/

WORKDIR /app/TaskManagementSystem.Tests
RUN dotnet test --no-restore --verbosity normal

WORKDIR /app/TaskManagementSystem
RUN dotnet publish TaskManagementSystem.csproj -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app/TaskManagementSystem/out .
ENTRYPOINT ["dotnet", "TaskManagementSystem.dll"]
