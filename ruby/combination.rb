def combination n
  set = [true, false]
  combination = set.product(*[set]*(n-1))
  combination.transpose.map{|c| c.join("\t")}
end
print combination(2).join("\n")
