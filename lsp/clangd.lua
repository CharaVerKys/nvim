return{
  -- Command and arguments to start the server.
  cmd = { 'clangd' },
  -- Filetypes to automatically attach to.
  filetypes = { 'cpp','c' },
  -- Sets the "workspace" to the directory where any of these files is found.
  -- Files that share a root directory will reuse the LSP server connection.
  -- Nested lists indicate equal priority, see |vim.lsp.Config|.
  root_markers = { { '.clangd', '.clang-tidy', 'compile_commands.json' }, '.git' },
  -- Specific settings to send to the server. The schema is server-defined.
  -- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
  settings = {
      -- i have no idea what to write here
  }
}
