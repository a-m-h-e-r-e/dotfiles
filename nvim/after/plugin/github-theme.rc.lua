local status, g = pcall(require, "github-theme")
if (not status) then return end


g.setup({
  theme_style = "dark",
})
