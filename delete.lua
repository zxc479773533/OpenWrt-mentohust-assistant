require("luci.sys")

m = Map("smarthust","Usermanage","Better MentoHust")

s = m:section(TypedSection,"input","Delete user")
s.addremove = false
s.anonymous = true

macaddr = s:option(Value,"macaddr",translate("Mac Address"))

local apply = luci.http.formvalue("cbi.apply")
if apply then
        io.popen("/usr/smarthust/delete.sh")
end

return m