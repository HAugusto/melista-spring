### Estrutura do projeto (22/07/2026)

```text
spring-server/
├── .github/                     # Configurações do GitHub Actions (CI/CD)
│   └── workflows/
│       └── ci.yml
│
├── docs/                        # Documentação técnica
│   └── architecture.md
│
├── src/                         # Código fonte
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── personal/
│   │   │           └── server/
│   │   │               ├── Application.java
│   │   │               └── controllers/
│   │   │                   └── HomeController.java
│   │   │
│   │   └── resources/
│   │       ├── application.properties
│   │       ├── static/
│   │       └── templates/
│   │
│   └── test/
│       └── java/
│           └── com/
│               └── personal/
│                   └── spring_server/
│                       └── SpringServerApplicationTests.java
│
├── .gitignore
├── CHANGELOG.md                 # Histórico de versões
├── CONVENTIONS.md               # Convenções do projeto
├── Dockerfile                   # Construção da imagem Docker
├── docker-compose.yml           # Orquestração local
├── mvnw                         # Maven Wrapper (Linux/macOS)
├── mvnw.cmd                     # Maven Wrapper (Windows)
├── pom.xml                      # Dependências e configuração Maven
└── README.md                    # Documentação principal
```