require("luci.sys")

m = Map("usermanage","User Manage","Better MentoHust")

s = m:section(TypedSection,"input","Delete user")
s.addremove = false
s.anonymous = true

macaddr = s:option(Value,"macaddr",translate("Mac Address"))

local apply = luci.http.formvalue("cbi.apply")
if apply then
  io.popen("/root/automentohust/delete.sh")
end

return m