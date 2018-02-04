module("luci.controller.smarthust.smarthust",package.seeall)

function index()
        entry({"admin","services","smarthust"},cbi("sh/input"),_("Smart HUST"),1
        end