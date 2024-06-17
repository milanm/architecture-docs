workspace {

    model {
        user = person "User" {
            description "A user of the system."
        }

        system = softwareSystem "System" {
            description "The system."
            user -> this "Uses"

            webapp = container "Web Application" {
                description "The web application."
                technology "Java and Spring MVC"
                user -> this "Uses"

                componentA = component "Component A" {
                    description "A component within the web application."
                    technology "Spring Bean"
                }

                componentB = component "Component B" {
                    description "Another component within the web application."
                    technology "Spring Bean"
                }
            }

            database = container "Database" {
                description "The database."
                technology "MySQL"
                webapp -> this "Reads from and writes to"
            }
        }

        deploymentEnvironment "Live" {
            deploymentNode "Web Server" {
                technology "Apache Tomcat"
                webappInstance = containerInstance webapp
            }

            deploymentNode "Database Server" {
                technology "MySQL"
                databaseInstance = containerInstance database
            }
        }
    }

    views {
        systemContext system {
            include user
            include system
            autolayout lr
        }

        container system {
            include *
            autolayout lr
        }

        component webapp {
            include *
            autolayout lr
        }

        deployment system "Live" {
            include *
            autolayout lr
        }

        theme default

        styles {
            element "Software System" {
                background "#1168bd"
                color "#ffffff"
            }

            element "Person" {
                background "#08427b"
                color "#ffffff"
                shape "person"
            }

            element "Container" {
                background "#438dd5"
                color "#ffffff"
            }

            element "Component" {
                background "#85bbf0"
                color "#000000"
            }
        }
    }
}
