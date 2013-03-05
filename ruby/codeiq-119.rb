# coding: utf-8
# 飽きた。。

HAMBURGER = 250
POTATO    = 200
DRINK     = 150
SET       = 550

total = (HAMBURGER * ARGV[0].to_i) + (POTATO * ARGV[1].to_i) + (DRINK * ARGV[2].to_i)

puts "ハンバーガー：#{HAMBURGER}円 x #{ARGV[0]}"
puts "ポテト      ：#{POTATO}円 x #{ARGV[1]}"
puts "ドリンク    ：#{DRINK}円 x #{ARGV[2]}"
puts "セット      ；#{SET}円 x #{set_cnt}"
puts "合計金額    ：#{total}円"

# ----- Sample Display ----- #
# $ ruby answer1.rb 1 2 3
#
# ハンバーガー：250円 x 1
# ポテト      ：200円 x 2
# ドリンク    ：150円 x 3
# 合計金額    ：1100円
