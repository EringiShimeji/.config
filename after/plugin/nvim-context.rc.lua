local status,context_nvim = pcall(require,"nvim_context_vt")
if (not status) then return end

context_nvim.setup({
  -- Enable by default. You can disable and use :NvimContextVtToggle to maually enable.
  -- Default: true
  enabled = true,

})