FROM microsoft/dotnet:1.0.0-preview1
COPY project.json /app/
WORKDIR /app
RUN ["dotnet", "restore"]
COPY . /app
RUN ["dotnet", "build", "-c", "debug"]
EXPOSE 5000
ENTRYPOINT ["dotnet", "run"]
