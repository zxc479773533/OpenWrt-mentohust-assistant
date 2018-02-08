module("luci.controller.usermanage",package.seeall)

function index()
  entry({"admin","services","usermanage"},alias("admin","services","usermanage","input"),_("User Manage"),60)     
  entry({"admin","services","usermanage","input"},cbi("usermanage/input"),_("Add new user"),10).leaf=true
  entry({"admin","services","usermanage","delete"},cbi("usermanage/delete"),_("Delete user"),20).leaf=true
  end