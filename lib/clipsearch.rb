# -*- coding: utf-8 -*-
require 'parse_clipsearch'
require 'format_search_result'

def clipsearch (keyword)
  url = "http://sfcclip.net/search?keyword=#{keyword}&titlesearch=on&leadsearch=on&bodysearch=on&date_st=&date_en=&category=&tag="

  html = open(url).read
  articles = parse_clipsearch(html)

  return format_search_result(articles)
end

