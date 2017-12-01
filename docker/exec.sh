#!/bin/zsh

#################################
### 実行方法
### $ ./exec.sh rails db:migrate
#################################

# $1~9は引数
echo $1 $2 $3 $4 $5 $6 $7 $8 $9

docker exec ruby-on-rails-examples_app $1 $2 $3 $4 $5 $6 $7 $8 $9
