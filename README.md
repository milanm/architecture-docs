# Software Architecture Documentation with arc42 and C4 Model 

This repository provides an example of generating architecture documentation using the arc42 template and the C4 model, with the help of Structurizr CLI and Asciidoctor. The documentation includes various architectural views and diagrams, generated automatically using Docker and Docker Compose.

## Overview

The repository demonstrates how to:
1. Define architecture using Structurizr DSL.
2. Generate PlantUML diagrams using Structurizr CLI.
3. Generate HTML documentation using Asciidoctor.
4. Serve the documentation using Nginx or GitHub Pages.

## Prerequisites

- Docker
- Docker Compose

## Usage

Follow these steps to generate and serve the architecture documentation.

### 1. Generate PlantUML diagrams

Run the following command to generate PlantUML diagrams from the Structurizr DSL:

```sh
docker-compose run --rm generate-diagrams
```
### 2. Generate HTML documentation
Run the following command to generate the HTML documentation:

````sh
docker-compose run --rm generate-docs
````
### 3. Serve the documentation
Run the following command to serve the documentation using Nginx:

````sh
docker-compose up serve-docs
````

### 4. View the documentation
Open your browser and go to http://localhost:8080 to view the generated documentation.

## GitHub Pages Demo
You can view the demo of this documentation on GitHub Pages at the following [URL](https://<your-github-username>.github.io/<your-repository-name>/).

## Explanation of Key Files
- src/docs/structurizr/structurizr.dsl: Defines the architecture using Structurizr DSL.
- src/docs/asciidoc/index.adoc: Main AsciiDoc file that includes other sections.
- src/docs/asciidoc/sections/: Directory containing individual AsciiDoc section files.
- docker-compose.yml: Docker Compose configuration to orchestrate the generation and serving of documentation.

## Customization
You can customize the Structurizr DSL file (structurizr.dsl) to reflect your own system's architecture. Similarly, you can edit the AsciiDoc files in the sections directory to include more detailed information about your system.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

