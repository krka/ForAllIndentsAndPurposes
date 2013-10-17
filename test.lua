require 'indent'

function readAll(file)
    local f = io.open(file, "rb")
    if not f then return "" end
    local content = f:read("*all")
    f:close()
    return content
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
   assert(output == actual, "Failure, got:\n" .. actual)
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

