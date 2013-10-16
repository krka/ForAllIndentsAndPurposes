local LuaColor = "|c00ff0033"

if type(defaultColorTableImport) ~= "table" then
	defaultColorTableImport = {}
end

if type(defaultTextColorTableImport) ~= "table" then
	defaultTextColorTableImport = {}
end

local temp = {		
	["_ALERT"] = LuaColor,
	["_ERRORMESSAGE"] = LuaColor,
	["_G"] = LuaColor,
	["_INPUT"] = LuaColor,
	["_OUTPUT"] = LuaColor,
	["_PROMPT"] = LuaColor,
	["_STDERR"] = LuaColor,
	["_STDIN"] = LuaColor,
	["_STDOUT"] = LuaColor,
	["_VERSION"] = LuaColor,
	["abs"] = LuaColor,
	["acos"] = LuaColor,
	["asin"] = LuaColor,
	["assert"] = LuaColor,
	["atan"] = LuaColor,
	["atan2"] = LuaColor,
	["band"] = LuaColor,
	["bit"] = LuaColor,
	["bit.band"] = LuaColor,
	["bit.bor"] = LuaColor,
	["bnot"] = LuaColor,
	["bor"] = LuaColor,
	["bxor"] = LuaColor,
	["byte"] = LuaColor,
	["call"] = LuaColor,
	["ceil"] = LuaColor,
	["char"] = LuaColor,
	["clock"] = LuaColor,
	["close"] = LuaColor,
	["collectgarbage"] = LuaColor,
	["concat"] = LuaColor,
	["coroutine"] = LuaColor,
	["coroutine.create"] = LuaColor,
	["coroutine.resume"] = LuaColor,
	["coroutine.running"] = LuaColor,
	["coroutine.status"] = LuaColor,
	["coroutine.wrap"] = LuaColor,
	["coroutine.yield"] = LuaColor,
	["cos"] = LuaColor,
	["cosh"] = LuaColor,
	["cpath"] = LuaColor,
	["create"] = LuaColor,
	["date"] = LuaColor,
	["debug"] = LuaColor,
	["debug.debug"] = LuaColor,
	["debug.getfenv"] = LuaColor,
	["debug.gethook"] = LuaColor,
	["debug.getinfo"] = LuaColor,
	["debug.getlocal"] = LuaColor,
	["debug.getmetatable"] = LuaColor,
	["debug.getregistry"] = LuaColor,
	["debug.getupvalue"] = LuaColor,
	["debug.setfenv"] = LuaColor,
	["debug.sethook"] = LuaColor,
	["debug.setlocal"] = LuaColor,
	["debug.setmetatable"] = LuaColor,
	["debug.setupvalue"] = LuaColor,
	["debug.traceback"] = LuaColor,
	["deg"] = LuaColor,
	["difftime"] = LuaColor,
	["dofile"] = LuaColor,
	["dostring"] = LuaColor,
	["dump"] = LuaColor,
	["error"] = LuaColor,
	["execute"] = LuaColor,
	["exit"] = LuaColor,
	["exp"] = LuaColor,
	["file"] = LuaColor,
	["file.close"] = LuaColor,
	["file.flush"] = LuaColor,
	["file.lines"] = LuaColor,
	["file.read"] = LuaColor,
	["file.seek"] = LuaColor,
	["file.setvbuf"] = LuaColor,
	["file.write"] = LuaColor,
	["find"] = LuaColor,
	["floor"] = LuaColor,
	["flush"] = LuaColor,
	["fmod"] = LuaColor,
	["foreach"] = LuaColor,
	["foreachi"] = LuaColor,
	["format"] = LuaColor,
	["frexp"] = LuaColor,
	["gcinfo"] = LuaColor,
	["getenv"] = LuaColor,
	["getfenv"] = LuaColor,
	["gethook"] = LuaColor,
	["getinfo"] = LuaColor,
	["getlocal"] = LuaColor,
	["getmetatable"] = LuaColor,
	["getn"] = LuaColor,
	["getregistry"] = LuaColor,
	["getupvalue"] = LuaColor,
	["gfind"] = LuaColor,
	["globals"] = LuaColor,
	["gmatch"] = LuaColor,
	["gsub"] = LuaColor,
	["huge"] = LuaColor,
	["input"] = LuaColor,
	["insert"] = LuaColor,
	["io"] = LuaColor,
	["io.close"] = LuaColor,
	["io.flush"] = LuaColor,
	["io.input"] = LuaColor,
	["io.lines"] = LuaColor,
	["io.open"] = LuaColor,
	["io.output"] = LuaColor,
	["io.popen"] = LuaColor,
	["io.read"] = LuaColor,
	["io.stderr"] = LuaColor,
	["io.stdin"] = LuaColor,
	["io.stdout"] = LuaColor,
	["io.tmpfile"] = LuaColor,
	["io.type"] = LuaColor,
	["io.write"] = LuaColor,
	["ipairs"] = LuaColor,
	["join"] = LuaColor,
	["ldexp"] = LuaColor,
	["len"] = LuaColor,
	["lines"] = LuaColor,
	["load"] = LuaColor,
	["loaded"] = LuaColor,
	["loaders"] = LuaColor,
	["loadfile"] = LuaColor,
	["loadlib"] = LuaColor,
	["loadstring"] = LuaColor,
	["log"] = LuaColor,
	["log10"] = LuaColor,
	["lower"] = LuaColor,
	["lshift"] = LuaColor,
	["match"] = LuaColor,
	["math"] = LuaColor,
	["math.abs"] = LuaColor,
	["math.acos"] = LuaColor,
	["math.asin"] = LuaColor,
	["math.atan"] = LuaColor,
	["math.atan2"] = LuaColor,
	["math.ceil"] = LuaColor,
	["math.cos"] = LuaColor,
	["math.cosh"] = LuaColor,
	["math.deg"] = LuaColor,
	["math.exp"] = LuaColor,
	["math.floor"] = LuaColor,
	["math.fmod"] = LuaColor,
	["math.frexp"] = LuaColor,
	["math.huge"] = LuaColor,
	["math.ldexp"] = LuaColor,
	["math.log"] = LuaColor,
	["math.log10"] = LuaColor,
	["math.max"] = LuaColor,
	["math.min"] = LuaColor,
	["math.modf"] = LuaColor,
	["math.pi"] = LuaColor,
	["math.pow"] = LuaColor,
	["math.rad"] = LuaColor,
	["math.random"] = LuaColor,
	["math.randomseed"] = LuaColor,
	["math.sin"] = LuaColor,
	["math.sinh"] = LuaColor,
	["math.sqrt"] = LuaColor,
	["math.tan"] = LuaColor,
	["math.tanh"] = LuaColor,
	["max"] = LuaColor,
	["maxn"] = LuaColor,
	["min"] = LuaColor,
	["mod"] = LuaColor,
	["modf"] = LuaColor,
	["module"] = LuaColor,
	["new"] = LuaColor,
	["newtable"] = LuaColor,
	["newtype"] = LuaColor,
	["next"] = LuaColor,
	["open"] = LuaColor,
	["os"] = LuaColor,
	["os_clock"] = LuaColor,
	["os.date"] = LuaColor,
	["os.difftime"] = LuaColor,
	["os.execute"] = LuaColor,
	["os.exit"] = LuaColor,
	["os.getenv"] = LuaColor,
	["os.remove"] = LuaColor,
	["os.rename"] = LuaColor,
	["os.setlocale"] = LuaColor,
	["os.time"] = LuaColor,
	["os.tmpname"] = LuaColor,
	["output"] = LuaColor,
	["package"] = LuaColor,
	["package.cpath"] = LuaColor,
	["package.loaded"] = LuaColor,
	["package.loaders"] = LuaColor,
	["package.loadlib"] = LuaColor,
	["package.path"] = LuaColor,
	["package.preload"] = LuaColor,
	["package.seeall"] = LuaColor,
	["pairs"] = LuaColor,
	["path"] = LuaColor,
	["pcall"] = LuaColor,
	["pi"] = LuaColor,
	["popen"] = LuaColor,
	["pow"] = LuaColor,
	["preload"] = LuaColor,
	["print"] = LuaColor,
	["rad"] = LuaColor,
	["random"] = LuaColor,
	["randomseed"] = LuaColor,
	["rawegal"] = LuaColor,
	["rawequal"] = LuaColor,
	["rawget"] = LuaColor,
	["rawset"] = LuaColor,
	["read"] = LuaColor,
	["remove"] = LuaColor,
	["rename"] = LuaColor,
	["rep"] = LuaColor,
	["require"] = LuaColor,
	["resume"] = LuaColor,
	["reverse"] = LuaColor,
	["rshift"] = LuaColor,
	["rtgsub"] = LuaColor,
	["running"] = LuaColor,
	["seeall"] = LuaColor,
	["seek"] = LuaColor,
	["select"] = LuaColor,
	["setfenv"] = LuaColor,
	["sethook"] = LuaColor,
	["setlocal"] = LuaColor,
	["setlocale"] = LuaColor,
	["setmetatable"] = LuaColor,
	["setupvalue"] = LuaColor,
	["setvbuf"] = LuaColor,
	["sin"] = LuaColor,
	["sinh"] = LuaColor,
	["sort"] = LuaColor,
	["split"] = LuaColor,
	["sqrt"] = LuaColor,
	["status"] = LuaColor,
	["stderr"] = LuaColor,
	["stdin"] = LuaColor,
	["stdout"] = LuaColor,
	["strbyte"] = LuaColor,
	["strchar"] = LuaColor,
	["strconcat"] = LuaColor,
	["strdump"] = LuaColor,
	["strfind"] = LuaColor,
	["strformat"] = LuaColor,
	["strgmatch"] = LuaColor,
	["strgsub"] = LuaColor,
	["string"] = LuaColor,
	["string_byte"] = LuaColor,
	["string_char"] = LuaColor,
	["string_dump"] = LuaColor,
	["string_find"] = LuaColor,
	["string_format"] = LuaColor,
	["string_gmatch"] = LuaColor,
	["string_gsub"] = LuaColor,
	["string_len"] = LuaColor,
	["string_lower"] = LuaColor,
	["string_match"] = LuaColor,
	["string_rep"] = LuaColor,
	["string_reverse"] = LuaColor,
	["string_sub"] = LuaColor,
	["string_upper"] = LuaColor,
	["strlen"] = LuaColor,
	["strlower"] = LuaColor,
	["strmatch"] = LuaColor,
	["strrep"] = LuaColor,
	["strreverse"] = LuaColor,
	["strsub"] = LuaColor,
	["strupper"] = LuaColor,
	["sub"] = LuaColor,
	["table"] = LuaColor,
	["table.concat"] = LuaColor,
	["table.insert"] = LuaColor,
	["table.maxn"] = LuaColor,
	["table.remove"] = LuaColor,
	["table.sort"] = LuaColor,
	["tan"] = LuaColor,
	["tanh"] = LuaColor,
	["time"] = LuaColor,
	["tinsert"] = LuaColor,
	["tmpfile"] = LuaColor,
	["tmpname"] = LuaColor,
	["tonumber"] = LuaColor,
	["tostring"] = LuaColor,
	["tostringall"] = LuaColor,
	["traceback"] = LuaColor,
	["tremove"] = LuaColor,
	["trim"] = LuaColor,
	["type"] = LuaColor,
	["unpack"] = LuaColor,
	["upper"] = LuaColor,
	["wrap"] = LuaColor,
	["write"] = LuaColor,
	["xpcall"] = LuaColor,
	["yield"] = LuaColor,

}

for index, value in pairs(temp) do
	defaultColorTableImport[index] = value
end
temp = nil
