# Software Architecture Documentation with arc42 and C4 Model 

This repository provides an example of generating architecture documentation using the arc42 template and the C4 model, with the help of Structurizr CLI and Asciidoctor. The documentation includes various architectural views and diagrams, generated automatically using Docker and Docker Compose locally, or by using GitHub pages.

The complete explanation of the process is explain in [the text](https://newsletter.techworld-with-milan.com/p/documenting-software-architectures).

## Give a Star! :star:

If you like or are using this project to learn or start your solution, please give it a star. Thanks!

## Overview

The repository demonstrates how to:
1. Define architecture using Structurizr DSL.
2. Generate PlantUML diagrams using Structurizr CLI.
3. Generate HTML documentation using Asciidoctor.
4. Serve the documentation using Nginx or GitHub Pages.

![Workflow](/images/Workflow.png "Workflow")

## Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Technologies Used

- **[Structurizr DSL](https://structurizr.com/help/dsl)**: Used to define the architecture model.
- **[PlantUML](http://plantuml.com/)**: Used to generate UML diagrams.
- **[Asciidoctor](https://asciidoctor.org/)**: Used to convert AsciiDoc files to HTML.

## Directory Structure

```
architecture-docs/
├── src/                       # Source files for documentation
│   └── docs/                  # Documentation source directory
│       ├── asciidoc/          # AsciiDoc files
│       │   ├── sections/      # Individual section files for arc42 template
│       │   │   ├── 01_introduction_and_goals.adoc
│       │   │   ├── ...
│       │   └── index.adoc     # Main AsciiDoc file including all sections
│       ├── structurizr/       # Structurizr DSL files and generated PlantUML diagrams
│       │   ├── structurizr.dsl
│       │   ├── structurizr.properties
│       │   ├── ... Generated PUML files
```

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
You can view the demo of this documentation on GitHub Pages at the following [URL](https://milanm.github.io/architecture-docs/).

## Explanation of Key Files
- src/docs/structurizr/structurizr.dsl: Defines the architecture using Structurizr DSL.
- src/docs/asciidoc/index.adoc: Main AsciiDoc file that includes other sections.
- src/docs/asciidoc/sections/: Directory containing individual AsciiDoc section files.
- docker-compose.yml: Docker Compose configuration to orchestrate the generation and serving of documentation.

## Customization
You can customize the Structurizr DSL file (structurizr.dsl) to reflect your own system's architecture. Similarly, you can edit the AsciiDoc files in the sections directory to include more detailed information about your system.

## Wrap Up

If you think the repository can be improved, please open a PR with any updates and submit any issues. Also, I will continue to improve this, so you should star this repository, too.

## Contribution

- Open a pull request with improvements
- Discuss ideas in issues
- Spread the word

## License

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## Author

[Dr. Milan Milanović](https://milan.milanovic.org) -  CTO at [3MD](https://3mdinc.com) 