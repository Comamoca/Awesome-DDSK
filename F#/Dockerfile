FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine

WORKDIR /work
COPY ./ddsk.fsx .

ENTRYPOINT ["dotnet", "fsi", "./ddsk.fsx"]