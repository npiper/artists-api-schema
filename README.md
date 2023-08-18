# OpenAPI Samples





## Concept

Came from a Mulesoft Idea that let you import OpenAPI schemas from maven packages.

Then looked at ability to generate OpenAPI documentation as Asciidoc or HTML to incorporate.

There is a POM file here that can be configured to parse an API Schema document at `src/main/resources/openapi/artistsV1.yaml`
 
## Plugins

```
            <groupId>org.openapitools</groupId>
            <artifactId>openapi-generator-maven-plugin</artifactId>
            <version>5.2.1</version>
```

## References

https://github.com/OpenAPITools/openapi-generator/tree/master

https://docs.mulesoft.com/studio/7.15/import-api-specification-maven

https://stackoverflow.com/questions/69669521/generate-ascii-documentation-from-openapi-3-0-with-samples
