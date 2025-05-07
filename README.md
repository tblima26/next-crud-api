
# NextCrudApi

A simple and powerful API for managing CRUD operations. This API is designed to provide the necessary functionality for creating, reading, updating, and deleting resources in a seamless and efficient way.

## 🚀 Features

- Simple and lightweight design
- API with JSON responses
- CRUD operations for managing resources
- Authentication and authorization
- Pagination support (optional)
  
## 💻 Requirements

- Ruby version: `2.7.2` (or newer)
- Rails version: `6.x.x` (or newer)
- PostgreSQL (recommended for production)
- Redis (optional, for background jobs or caching)

## 🔧 System Dependencies

- **Ruby**: Install Ruby using [RVM](https://rvm.io/) or [rbenv](https://github.com/rbenv/rbenv)
- **Rails**: You can install Rails with `gem install rails`
- **PostgreSQL**: Follow the installation guide on the [official PostgreSQL website](https://www.postgresql.org/download/)
- **Redis**: Follow the installation guide on the [official Redis website](https://redis.io/download/)

## 🛠 Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/tblima26/next-crud-api.git
   ```

2. Install dependencies:
   ```bash
   cd next-crud-api
   bundle install
   ```

3. Setup your database:
   ```bash
   rails db:create
   rails db:migrate
   ```

4. Run the server:
   ```bash
   rails server
   ```

   Your API should be running at [http://localhost:3000](http://localhost:3000)

## 🧪 Running Tests

To run the test suite, use:

```bash
rails test
```

## 🚧 Services

- **Job Queues**: If you're using background jobs, ensure you have Redis installed and running.
- **Caching**: Use Redis or Memcached for caching purposes.

## 🔒 Authentication

Authentication is handled via **JWT tokens** (or another strategy based on your setup). Here's how you can authenticate requests:

1. First, sign in to obtain a JWT token:
   - POST to `/api/v1/authenticate` with your credentials.
   
2. Include the token in the `Authorization` header of your requests:
   ```bash
   Authorization: Bearer <your_token>
   ```

## 📦 Deployment Instructions

This API can be deployed to any platform that supports Ruby on Rails. Here’s how you can deploy it to **Heroku**:

1. Create a new Heroku app:
   ```bash
   heroku create next-crud-api
   ```

2. Push to Heroku:
   ```bash
   git push heroku main
   ```

3. Set up the database on Heroku:
   ```bash
   heroku run rails db:create
   heroku run rails db:migrate
   ```

4. Your app should be live at the URL Heroku provides.

## 🌐 API Documentation

- **POST** `/api/v1/resource`: Create a new resource
- **GET** `/api/v1/resource`: Get a list of resources
- **GET** `/api/v1/resource/:id`: Get a single resource by ID
- **PATCH** `/api/v1/resource/:id`: Update a resource
- **DELETE** `/api/v1/resource/:id`: Delete a resource

For detailed API documentation, please refer to the [API docs](./docs/api).

## 👨‍💻 Contributing

We welcome contributions! If you have suggestions, bug fixes, or enhancements, feel free to open an issue or submit a pull request.

### Steps for contributing:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and commit them (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a pull request.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Thanks for checking out the NextCrudApi project!
