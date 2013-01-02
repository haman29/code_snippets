#! /usr/local/bin/ruby

require 'set'

# 使用されているテーブルを取得する
# author:: kyohei.hamada
class UsedTableExtractor

  attr_reader :table_set

  # set prefix and regexp
  # param:: Array prefix_list
  def initialize prefix_list

    # set of table name
    @table_set = Set.new

    # regular expression list
    @regexp_list = []

    # surround string
    surround = ', .`'
    prefix_list.each {|prefix|
      @regexp_list << Regexp.new(/[#{surround}](#{prefix}[^#{surround})]*)[#{surround})]/)
    }
  end

  # 指定したprefixを含む文字列を @table_set に格納する
  # return:: Set table_set query に含まれるテーブル名
  def setTableInQuery query
    @regexp_list.each {|regexp|
      query.scan(regexp).each {|table|
        @table_set << table[0]
      }
    }
    @table_set
  end
end

if __FILE__ == $0
  e = UsedTableExtractor.new ['mtb_', 'dtb_', 't_']
  while line = gets
    e.setTableInQuery line
  end
  e.table_set.to_a.sort.each{|table|
    puts table
  }
end
