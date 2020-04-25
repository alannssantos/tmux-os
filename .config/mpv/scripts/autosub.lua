-- requires subliminal, version 1.0 or newer
-- default keybinding: b
local utils = require 'mp.utils'

--sleep function, so that subs aren't downloaded the instant a file is loaded
--taken from:http://lua-users.org/wiki/SleepFunction
function sleep(s)
    local ntime = os.time() + s
    repeat until os.time() > ntime
end

--original function, pressing b will trigger this and download the subtitle manually
function load_sub_fn()
    subl = "/usr/local/bin/subliminal" -- use 'which subliminal' to find the path
    mp.msg.info("Procurando legenda")
    mp.osd_message("Procurando legenda")
    t = {}
    
    t.args = {subl, "download", "-s", "-f", "-l", "pt-br", mp.get_property("path")}
    res = utils.subprocess(t)
    if res.status == 0 then
        mp.commandv("rescan_external_files", "reselect") 
        mp.msg.info("Legenda encontrada")
        mp.osd_message("Legenda encontrada")
    else
        mp.msg.warn("Nenhuma legenda encontrada")
        mp.osd_message("Nenhuma legenda encontrada")
    end
end

--added function, auto search for subs and download if not present, the way god intended :P
--function autosubs()
--    sleep(10)
--    subl = "/usr/local/bin/subliminal" -- use 'which subliminal' to find the path
--    mp.msg.info("Procurando legenda")
--    mp.osd_message("Procurando legenda")
--    t = {}
--    t.args = {subl, "download", "-s", "-l", "pt-br", mp.get_property("path")}
--    res = utils.subprocess(t)
--    if res.status == 0 then
--        mp.commandv("rescan_external_files", "reselect") 
--        mp.msg.info("Legenda encontrada")
--        mp.osd_message("Legenda encontrada")
--    else
--        mp.msg.warn("Nenhuma legenda encontrada")
--        mp.osd_message("Nenhuma legenda encontrada")
--    end
--end

mp.add_key_binding("b", "auto_load_subs", load_sub_fn)
--mp.register_event("file-loaded", autosubs)
