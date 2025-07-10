# Projeto de Estudos em QA com Robot Framework e Swagger

Este projeto faz parte dos meus estudos em **automação de testes para APIs REST** utilizando o **Robot Framework**. O foco está em testar endpoints reais com autenticação, envio de dados e verificação de respostas, utilizando as bibliotecas `RequestsLibrary`, `String` e `Collections`.

---

## 🔧 Ferramentas Utilizadas

- [Robot Framework](https://robotframework.org/)
- [RequestsLibrary](https://marketsquare.github.io/robotframework-requests/)
- Swagger para inspeção e teste da API
- Visual Studio Code (VSCode) com extensão Robot Framework
- Terminal / Zsh no macOS

---

## 📁 Estrutura do Projeto

```
ProjetoRF/
├── login.robot           # Realiza login e captura o token
├── get.robot             # Realiza requisições GET (listar usuários, buscar por ID)
├── post.robot            # Envia dados via POST (ex: cadastro)
├── put.robot             # Altera status de usuário via PUT
├── logs/                 # Contém os arquivos de execução dos testes
│   ├── output.xml
│   ├── log.html
│   └── report.html
├── run_tests.sh          # Script para automatizar a execução dos testes
└── README.md             # Documentação do projeto
```

---

## 🧪 Casos de Teste Implementados

### ✅ Login e Captura de Token

- Realiza autenticação via `POST /login`
- Armazena o token de acesso para chamadas futuras

### ✅ Listagem e Contagem de Usuários

- `GET /user/` → lista todos os usuários
- `GET /user/{id}` → busca um usuário específico

### ✅ Alteração de Status

- `PUT /user/status/{id}` → altera o status (ativo/inativo)
- O token é passado via parâmetro ou header, dependendo da exigência da API

---

## ▶️ Execução dos Testes

### Comando para executar um teste específico:

```bash
robot --output logs/output.xml --log logs/log.html --report logs/report.html login.robot
```

### Comando para executar todos os testes:

```bash
mkdir -p logs
robot --output logs/output.xml --log logs/log.html --report logs/report.html *.robot
```

### Script para automatizar:

Arquivo: `run_tests.sh`

```bash
#!/bin/bash
mkdir -p logs
robot --output logs/output.xml --log logs/log.html --report logs/report.html *.robot
```

Tornar executável:
```bash
chmod +x run_tests.sh
./run_tests.sh
```

---

## 📌 Aprendizados

- Como estruturar testes para diferentes métodos HTTP (GET, POST, PUT)
- Utilização de tokens para autenticação dinâmica
- Montagem de dicionários e requisições JSON no Robot Framework
- Direcionamento de logs e relatórios para pastas específicas
- Resolução de erros como `400 Bad Request` e `401 Unauthorized`

---

## 🧠 Próximos Passos

- Implementar testes para DELETE
- Tratar cenários de erro (ex: 404, 403, 500)
- Reutilizar sessões e modularizar com arquivos de recursos (`.resource`)
- Criar casos negativos e testes de performance básicos

---

## 📎 Observações

API utilizada: `https://api-suits.qacoders.dev.br/api`  
Conta de teste: `sysadmin@qacoders.com`  
Senha: `1234@Test`

---

## 💬 Contato

Para dúvidas ou trocas de aprendizado, fique à vontade para me chamar pelo LinkedIn ou GitHub.
