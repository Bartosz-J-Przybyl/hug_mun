```bash
wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/7.4.0/openapi-generator-cli-7.4.0.jar -O openapi-generator-cli.jar
java -jar openapi-generator-cli.jar generate -i openapi.json -g dart-dio --enable-post-process-file  --skip-validate-spec
```
