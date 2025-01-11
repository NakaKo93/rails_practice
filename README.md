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
