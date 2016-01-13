# Vagrant PHP

PHP開発環境

## 構築環境

* CentOS6.7
* PHP 5.4
* MySQL 5.5

## 必要環境

* VirtualBoxのインストール
* Vagrantのインストール
* 仮想化支援機能(VT-x/AMD-V)の有効化

## 利用方法

```
git clone https://github.com/8845musign/vagrant_php
cd vagrant_php
vagrant up
```

もしくは `https://github.com/8845musign/vagrant_php` から直接zipファイルをDLし、
解凍してできたフォルダにコマンドプロンプトで入り以下のコマンドを実行する

```
vagrant up
```

しばらくすると環境が構築される

自動的にサーバーが起動するので `http://192.168.33.10/` にアクセスしてApacheの画面が表示されるはず

### 構築途中でエラーになった場合

サーバにログインした後で以下のコマンドを実行

```
su
(vagrantとパスワードを入力)
cd /vagrant/chef-repo
chef-solo -c solo.rb -j localhost.json
```

## 起動と終了

それぞれ `start.sh` と `stop.sh` を実行

## ドキュメントルート

`html/` ディレクトリがルートとなる

## サーバへのアクセス方法

仮想で構築したサーバへのアクセス方法は

**Macの場合**

ディレクトリ内で

```
vagrant ssh
```

**Windowsの場合**

`tera term` や `putty` などのアプリケーションで以下に接続

* ホスト:192.168.33.10
* ポート:22
* ユーザー:vagrant
* パスワード:vagrant

## rootユーザー

パスワードは `vagrant`