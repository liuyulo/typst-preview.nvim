local M = {
  opts = {
    open_cmd = nil,
    port = 0,
    invert_colors = 'never',
    debug = false,
    dependencies_bin = {
      ['typst-preview'] = nil,
      ['websocat'] = nil,
    },
    get_root = function(_)
      return vim.fn.getcwd()
    end,
  },
}

function M.config(opts)
  M.opts = vim.tbl_deep_extend('force', M.opts, opts or {})
end

return M
