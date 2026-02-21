ddsk = {'ドド','スコ'}  -- always adds 2 characters each time
ddsk_goal='ドドスコスコスコドドスコスコスコドドスコスコスコ'


ddsked=false
str_pool =''


while ddsked == false do
   math.randomseed(os.time() + math.floor(os.clock() * 1e6))
   temp=math.random(2) -- 'ドド' or 'スコ'
   print(ddsk[temp])
   str_pool = str_pool .. ddsk[temp]
   
   -- judge
   if string.len(str_pool) >= string.len(ddsk_goal) then
      -- really judge
      if string.find(str_pool,ddsk_goal) ~= nil then
	 ddsked = true
      end
      
      -- purge the old
      -- character is treated as UTF-8
      str_pool = string.sub(str_pool,string.len(ddsk[1])+1,string.len(str_pool))
   end

end

print("ラブ注入♡")

