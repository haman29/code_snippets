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
