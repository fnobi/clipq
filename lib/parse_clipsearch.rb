# -*- coding: utf-8 -*-

require 'kconv'

# 検索結果を見やすい形にparseする
def parse_clipsearch (html)
  # 検索結果をパースするための正規表現
  regexp = Regexp.new('<header>([^<>]+)</header></div><a href="([^<>]+)">([^<>]+)</a><div class="footer"><footer>([^<>]+)</footer>')

  articles = []
  html.scan(regexp).each do |article|
    articles.push({
      :date     => article[0].toutf8,
      :url      => article[1].toutf8,
      :title    => article[2].toutf8,
      :category => article[3].toutf8
    })
  end

  return articles
end
