# rails_practice

## railsを追加する方法
  ```sh
  $ docker compose build --no-cache
  ```
  ```sh
  $ docker compose run --rm web rails new . --database=postgresql --skip-docker
  ```
  ```sh
  $ docker compose run --rm web bundle install
  ```

## 初回のセットアップ
  ```sh
  $ docker compose build --no-cache
  ```
  ```sh
  $ docker compose up
  ```
  ```sh
  $ docker compose exec web rails db:create
  ```
  ```sh
  $ docker compose exec web rails db:migrate
  ```

## rubocop
  ```sh
  $ docker compose exec web bundle exec rubocop -A
  ```
