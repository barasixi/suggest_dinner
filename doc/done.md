done.md

## HTTparty入らぬ問題
- json gemがruby2.4.0に対応しとらん
  - githubで最新指定する

## docker
- Dockerで開発環境
- 参考
  - [docker-compose で Rails の開発環境を作る
](http://qiita.com/skyriser/items/2cf98b747ed6577cc5ee)
  - [dockerでRails5+postgres+redisの開発環境を丁寧に構築してみた](http://qiita.com/pokohide/items/7397b92a188da841b435)

Dockerfile書く
docker-compose.yml書く
database.yml弄る

初期生成または変更したら叩く
docker-compose build

初期設定
$ docker-compose run web bin/rake db:create db:migrate db:seed 

起動
docker-compose up

なんかやるとき
基本的に ``` docker-compose run web ``` をつける
rails g model Member  docker-compose run web rails g model Member
rake db:migrate docker-compose run web rake db:migrate
rails dbconsole docker-compose run web rails dbconsole
RAILS_ENV=test bundle exec rake db:setup  docker-compose run -e RAILS_ENV=test web bundle exec rake db:setup


## 初期設定
- [【Rails】ぼくのかんがえたさいきょうの設定（rails newそのあとに）](http://qiita.com/izumin5210/items/1375199226b5084c3c9a)


## new
``` rails new suggest_dinner -d postgresql -M -B -T ```
