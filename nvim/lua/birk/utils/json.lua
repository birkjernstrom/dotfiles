local M = {}

---@param string string
---@param idx number
---@return string
---@return number?
local function get_to_line_end(string, idx)
  local newline = string:find("\n", idx, true)
  local to_end = newline and string:sub(idx, newline - 1) or string:sub(idx)
  return to_end, newline
end

---Splice out an inclusive range from a string
---@param string string
---@param start_idx number
---@param end_idx? number
---@return string
local function str_splice(string, start_idx, end_idx)
  local new_content = string:sub(1, start_idx - 1)
  if end_idx then
    return new_content .. string:sub(end_idx + 1)
  else
    return new_content
  end
end

---@param string string
---@param idx number
---@param needle string
---@return number?
local function str_rfind(string, idx, needle)
  for i = idx, 1, -1 do
    if string:sub(i, i - 1 + needle:len()) == needle then
      return i
    end
  end
end

---Decodes a json string that may contain comments or trailing commas
---Found via https://github.com/stevearc/overseer.nvim/blob/271760514c2570dc544c45d3ca9754dcf2785a41/lua/overseer/util.lua#L72-L102
---@param content string
---@return any
M.json_decode = function(content)
  local ok, data = pcall(vim.json.decode, content, { luanil = { object = true } })
  while not ok do
    local char = data:match("invalid token at character (%d+)$")
    if char then
      local to_end, newline = get_to_line_end(content, char)
      if to_end:match("^//") then
        content = str_splice(content, char, newline)
        goto continue
      end
    end

    char = data:match("Expected object key string but found [^%s]+ at character (%d+)$")
    char = char or data:match("Expected value but found T_ARR_END at character (%d+)")
    if char then
      local comma_idx = str_rfind(content, char, ",")
      if comma_idx then
        content = str_splice(content, comma_idx, comma_idx)
        goto continue
      end
    end

    error(data)
    ::continue::
    ok, data = pcall(vim.json.decode, content, { luanil = { object = true } })
  end
  return data
end

return M
