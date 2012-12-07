# -*- coding: utf-8 -*-

# 検索結果を受け取って、出力のきれいな形に書き直す
def format_search_result (articles)
  texts = []

  articles.each do |article|
    texts.push([
      "▼ #{article[:title]} (#{article[:date]})",
      " - #{article[:category]}",
      " - #{article[:url]}"
    ].join("\n"))
  end
  return texts.join("\n" * 2)
end
