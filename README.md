# Selenium (Docker) + Rspecでテストするテスト

## 参考にしたもの

- [hawksnowlog: selenium-docker を使ってみた](https://hawksnowlog.blogspot.com/2018/02/getting-started-selenium-docker.html)
- [Seleniumチートシート [Ruby] | 酒と涙とRubyとRailsと](https://morizyun.github.io/web/selenium-cheat-sheet.html)
- [Webブラウザの自動操作 (Selenium with Rubyの実例集) - Qoosky](https://www.qoosky.io/techs/71dd2d67ea)

## セットアップ

```
$ bundle install
```

## テスト実行

```
# docker起動
$ ./start

# テスト実行
$ bundle exec rspec
```
