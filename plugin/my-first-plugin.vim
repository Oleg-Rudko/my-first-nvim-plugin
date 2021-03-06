fun! MyFirstPlugin()
  lua for k in pairs(package.loaded) do if k:match("^my%-first%-plugin") then package.loaded[k] = nil end end
  lua require("my-first-plugin").createFloatingWindow()
endfun

augroup MyFirstPlugin
  autocmd!
  autocmd VimResized * :lua require("my-first-plugin").onResize()
augroup END
