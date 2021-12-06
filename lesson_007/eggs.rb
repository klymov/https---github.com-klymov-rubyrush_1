eggs = [0,0,1,0,0,0,5,0,6,0,0,0]

good_eggs = []
broken_eggs = 0

for egg in eggs do
  if egg == 0
    broken_eggs +=1
  else
    good_eggs << egg
  end
end

puts eggs.to_s
puts good_eggs.to_s
puts broken_eggs.to_s
