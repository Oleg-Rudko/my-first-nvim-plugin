local function createFloatingWindow()
  local width = vim.api.nvim_win_get_width(0)
  local height = vim.api.nvim_win_get_height(0)

  print("Window size", width, height)
  local bufh = vim.api.nvim_create_buf(false, true) 
  local winId = vim.api.nvim_open_win(bufh, true, {
    relative="editor",
    width = width - 4,
    height = height - 4,
    col = 2,
    row = 2,
  })
end

local function onResize()
  print('hi')
end

return {
  createFloatingWindow = createFloatingWindow
}
