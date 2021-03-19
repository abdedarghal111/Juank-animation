update = function(loop,rev)
  local loop = rev == true and loop - 1
  or rev == false and loop + 1
  local rev = loop == 100 and true
  or loop == -100 and false
  or loop ~= 100 and loop ~= -100 and rev
  return loop,rev
end
return update
