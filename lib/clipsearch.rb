# -*- coding: utf-8 -*-

require 'request_clipsearch'
require 'parse_clipsearch'
require 'format_search_result'

# SFC CLIPの記事を検索する
def clipsearch (keyword, count)
  # 取得の1単位は20件
  unit = 20

  # countが指定されていなかったら、デフォルト値はunit
  count = unit if !count

  # 取得するべきページ数を計算
  page = (count.to_f / unit.to_f).ceil

  # ページごとに検索ページのhtmlを取得
  # 記事をひとつひとつarticlesに貯める
  articles = []
  page.times do |i|
    html = request_clipsearch(keyword, i + 1)
    articles += parse_clipsearch(html)
  end

  # countでarticlesを切り詰める
  articles = articles[0..(count - 1)]

  # フォーマットして返す
  return format_search_result(articles)
end

