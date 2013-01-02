require 'test/unit'
require '../usedTableExtractor'

class TC_UsedTableExtractor < Test::Unit::TestCase
  def setup
    prefix = ['prefix_', 'prefix2_']
    @obj = UsedTableExtractor.new(prefix)
  end

  # def teardown
  # end

  def test_setTableInQuery()
    query = 'select * from prefix_hoge,prefix2_fuga join prefix_piyo on where prefix_piyo.a = prefix_hoge.a join `prefix2_aaa` on'
    @obj.setTableInQuery(query)
    assert_equal(true, @obj.table_set.member?('prefix_hoge'))
    assert_equal(true, @obj.table_set.member?('prefix_piyo'))
    assert_equal(true, @obj.table_set.member?('prefix2_fuga'))
    assert_equal(true, @obj.table_set.member?('prefix2_aaa'))
    assert_equal(false, @obj.table_set.member?('prefix2_not_exist'))
    assert_equal(false, @obj.table_set.member?('hoge_not_exist'))
  end
end
