local function run(msg, matches)
   if matches[1] == 'username' then
     return msg.from.username
   end
end
 return {
   patterns = {
"^[!/#](username)$",
"^(username)$",
  }, 
   run = run 
 }
