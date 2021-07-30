# Autogen Model Laravel

A small utility that supports the creation of basic Laravel Models based on the database structure.

## Installation

Run git clone

```bash
git clone https://github.com/tcongcq/autogen-model-laravel.git
```

## Usage

Create database and import data example from file "database.sql"

```bash
mysql -u username -p database_name < database.sql
```

Copy .env and change it to correct database configs.

```bash
cp .env.example .env
```

Install dependencies by NPM and run start.

```bash
npm install
npm start
```

And next step. Oh no. No need any step, file export already store in "export_data" folder.

--- It's too easy, isn't it? ---