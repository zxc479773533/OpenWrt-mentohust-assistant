require("luci.sys")

m = Map("smarthust","Usermanage","Better MentoHust")

s = m:section(TypedSection,"input","Add new user")
s.addremove = false
s.anonymous = true

macaddr = s:option(Value,"macaddr",translate("Mac Address"))
name = s:option(Value,"username",translate("Username"))
pass = s:option(Value,"password",translate("Password"))
pass.password = true

local apply = luci.http.formvalue("cbi.apply")
if apply then
        io.popen("/usr/smarthust/addnew.sh")
end

return m