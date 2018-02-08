require("luci.sys")

m = Map("usermanage","User Manage","Better MentoHust")

s = m:section(TypedSection,"input","Add new user")
s.addremove = false
s.anonymous = true

macaddr = s:option(Value,"macaddr",translate("Mac Address"))
name = s:option(Value,"username",translate("Username"))
pass = s:option(Value,"password",translate("Password"))
pass.password = true

local apply = luci.http.formvalue("cbi.apply")
if apply then
	io.popen("/root/autoconnect/addnew.sh")
end

return m