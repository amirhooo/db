local function kick_user(msg)
    local chat = 'chat#id'..msg.to.id
    local channel = 'channel#id'..msg.to.id
    local user = msg.from.id
    if msg.to.type == 'chat' then
        chat_del_user(chat, 'user#id'..user, ok_cb, true)
    elseif msg.to.type == 'channel' then
        channel_kick_user(channel, 'user#id'..user, ok_cb, true)
    end
end



return {
patterns = {
    -- Agrega mas links si es necesario
    "[Hh][Tt][Tt][Pp][Ss]://",
    "[Hh][Tt][Tt][Pp]://"
}, run = run}
