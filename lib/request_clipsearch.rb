# -*- coding: utf-8 -*-

require 'open-uri'
require 'uri'

# CLIP検索ページのhtmlを取得
def request_clipsearch (keyword, page)
  keyword = URI.encode(keyword)

  url = [
    "http://sfcclip.net/search?",
    "keyword=#{keyword}&",
    "page=#{page}&",
    "titlesearch=on&",
    "leadsearch=on&",
    "bodysearch=on&",
    "date_st=&",
    "date_en=&",
    "category=&",
    "tag="
  ].join('')

  return open(url).read
end
