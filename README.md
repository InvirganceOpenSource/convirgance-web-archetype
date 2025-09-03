# Convirgance (Web Services) Archetype

Maven Archetype for creating a new Convirgance (Web Services) project. Run the following command to create the project:

```sh
mvn -DarchetypeGroupId=com.invirgance \
    -DarchetypeArtifactId=convirgance-web-archetype \
    -DarchetypeVersion=0.1.0 \
    org.apache.maven.plugins:maven-archetype-plugin:3.2.1:generate
```

Once your project is created, you can run the following command to compile it:

```sh
mvn clean package
```

This produces a `.war` file that can be deployed to a Jakarta EE server as well as a `.jar` file that is fully executable.

To start the server on port `8080`, run the following command:

```sh
java -jar target/<project name>.jar -p 8080
```

