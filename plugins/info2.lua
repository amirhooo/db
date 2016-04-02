local function callback_info(cb_extra, success, result)
local title ="Info for SuperGroup: ["..result.title.."]\n\n"
local admin_num = "Admin count: "..result.admins_count.."\n"
local user_num = "User count: "..result.participants_count.."\n"
local kicked_num = "Kicked user count: "..result.kicked_count.."\n"
local channel_id = "ID: "..result.peer_id.."\n"
if result.username then
	channel_username = "Username: @"..result.username
else
	channel_username = ""
end
local text = title..admin_num..user_num..kicked_num..channel_id..channel_username
    send_large_msg(cb_extra.receiver, text)
end
