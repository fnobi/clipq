# -*- coding: utf-8 -*-

# 検索結果を受け取って、出力のきれいな形に書き直す
def format_search_result (articles)
  texts = []

  if articles.empty?
    return 'no matching articles.'
  end

  articles.each do |article|
    texts.push([
      "▼ #{article[:title]}",
      " - #{article[:url]}",
      " - 掲載日: #{article[:date]}",
      " - カテゴリ: #{article[:category]}"
    ].join("\n"))
  end

  return texts.join("\n" * 2)
end
