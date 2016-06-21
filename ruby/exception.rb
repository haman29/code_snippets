def exception
  if false
  else
    begin
      raise Exception
      return 'aa'
    rescue Exception
      return 'bb'
    end
  end
end

p exception


begin
  # raise StandardError
  # raise Exception
  raise ActiveRecord::RecordNotUnique.new('mock', 'mock')
rescue Exception => e
  puts '1'
  puts e
rescue StandardError => e
  puts '2'
  puts e
end
