module("luci.controller.smarthust.smarthust",package.seeall)

function index()
        entry({"admin","services","smarthust"},alias("admin","services","smarthust","input"),_("Smart HUST"),60)     
        entry({"admin","services","smarthust","input"},cbi("sh/input"),_("Add new user"),10).leaf=true
        entry({"admin","services","smarthust","delete"},cbi("sh/delete"),_("Delete user"),20).leaf=true
        end