require 'indent'

function readAll(file)
     local f = io.open(file, "rb")
     if not f then return "" end
     local content = f:read("*all")
     f:close()
     return content:gsub("\r", "")
end

function writeAll(file, text)
     local f = io.open(file, "w")
     assert(f ~= nil)
     f:write(text:gsub("\r", ""))
     f:close()
end

function compareText(a, b)
    local len = math.min(a:len(), b:len())
    local line = 1
    local col = 0
    for i = 1, len do
        col = col + 1
        if a:byte(i) == string.byte("\n", 1) then
	        line = line + 1
	        col = 1
        end
        if a:byte(i) ~= b:byte(i) then
	        return "Diff at character " .. tostring(line) .. ":" .. tostring(col) .. ": " .. tostring(a:byte(i)) .. " <> " .. tostring(b:byte(i))
	    end
    end
    if a:len() ~= b:len() then
        return "Different lengths"
    end
    return nil
end

-- currently unused, just saved for future refactoring
function testTokenizer()
    local str = ""
    for line in io.lines("indent.lua") do
        str = str .. line .. "\n"
    end

    local pos = 1

    while true do
        local tokenType, nextPos = nextToken(str, pos)

        if not tokenType then
            break
        end

        if true or tokenType ~= tokens.TOKEN_WHITESPACE and tokenType ~= tokens.TOKEN_LINEBREAK then
            print(string.format("Found token %d (%d-%d): (%s)", tokenType, pos, nextPos - 1, stringsub(str, pos, nextPos - 1)))
        end

        if tokenType == tokens.TOKEN_UNKNOWN then
            print("unknown token!")
            break
        end

        pos = nextPos
    end
end


function testIndenter(i)
    local lib = IndentationLib
    local input = readAll("test_input.txt")
    local output = readAll("test_output.txt")

    local colorTable = lib.defaultColorTable
    local actual = lib.indentCode(input, 4, colorTable, i)
	if output ~= actual then
	  writeAll("test_output_actual.txt", actual)
      assert(output == actual, compareText(output, actual))
	end
end


testIndenter()

function tablecopy(t)
    copy = {}
    for k, v in pairs(t) do
        copy[k] = v
    end
    return copy
end

function testAddCustomColor(i)
    local lib = IndentationLib
    local input = readAll("test_customcolor_input.txt")
    local output = readAll("test_customcolor_output.txt")

    local colorTable = tablecopy(lib.defaultColorTable)
    colorTable.SpecialFunction = '|c00112233'
    local actual = lib.indentCode(input, 4, colorTable, i)
    assert(output == actual, "Failure, got:\n" .. actual)
end

testAddCustomColor()

function testPadWithLinebreaks()
    local lib = IndentationLib

    local actual = lib.padWithLinebreaks("")
    assert("\n\n" == actual, "Failure, got:\n" .. actual)

    local actual = lib.padWithLinebreaks("if true then\n\end\n   ")
    assert("if true then\n\end\n   \n" == actual, "Failure, got:\n" .. actual)

    local actual = lib.padWithLinebreaks("local x=1\n\n")
    assert("local x=1\n\n" == actual, "Failure, got:\n" .. actual)

end
testPadWithLinebreaks()
