📁 next-crud-api

API criada com Ruby on Rails para gerenciamento básico de produtos, utilizando operações CRUD.

### 🔧 Tecnologias

- Ruby on Rails 7  
- PostgreSQL

### 🚀 Como rodar localmente

```bash
bundle install
rails db:create db:migrate db:seed
rails server
```

Acesse em:  
http://localhost:3000

### 🌐 Endpoints disponíveis

- **POST** /produtos – Cria um novo produto  
- **GET** /produtos – Lista todos os produtos  
- **GET** /produtos/:id – Exibe um produto específico  
- **PATCH** /produtos/:id – Atualiza um produto  
- **DELETE** /produtos/:id – Remove um produto  

### 📁 Estrutura principal

- controllers/ – Lida com as requisições  
- models/ – Define a estrutura e regras dos dados  
- routes.rb – Mapeia as rotas da aplicação  
- db/migrate/ – Controla as alterações no banco de dados  
