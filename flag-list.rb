#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

original_word = ""
unless ARGV.size == 1
  original_word = STDIN.read.dup.chomp
else
  original_word = ARGV.shift.dup
end

#=====================================================================
def notice_disp(str)
  puts "--> #{str} "
end
#=====================================================================

# 全てを小文字変換
notice_disp "downcase"
puts original_word.downcase


# 全て大文字
notice_disp "upcase"
puts original_word.upcase


# キャピタライズ
notice_disp "Capitalize"
puts original_word.capitalize


# 単語先頭大文字
notice_disp "Word Captialize"
upcase_words = ""
original_word.split(' ').each do |word|
  upcase_words << ' '  unless upcase_words.empty?
  upcase_words << word.capitalize
end
puts upcase_words


# 全ての空白削除
notice_disp "delete all space"
puts original_word.delete(' ')


