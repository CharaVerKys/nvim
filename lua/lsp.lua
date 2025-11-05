vim.lsp.enable("lua_ls"); -- search in /lsp/*
vim.lsp.enable("clangd"); -- search in /lsp/*

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id);
    if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
      vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' };
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })

      -- its fine...
       vim.keymap.set('i', '<C-Space>', function()
         vim.lsp.completion.get()
       end)

      local opts = {expr = true, noremap = true};
      -- took like forever to find this vi.fn.visible
    -- https://neovim.io/doc/user/lua.html => fn.pumvisible
      vim.keymap.set('i', '<Tab>', function()
        return vim.fn.pumvisible() == 1 and '<C-n>' or '<Tab>'
      end, opts);
      vim.keymap.set('i', '<S-Tab>', function()
        return vim.fn.pumvisible() == 1 and '<C-p>' or '<S-Tab>'
      end, opts);
      vim.keymap.set('i', '<CR>', function()
        return vim.fn.pumvisible() == 1 and '<C-y>' or '<CR>'
      end, opts);

      -- begin lsp key-map
    -- local nw_opts = {nowait = true, expr = true, noremap = true}; -- ???, that just not work
      vim.keymap.set('n', 'gh', vim.lsp.buf.hover, { nowait = true, noremap = true, silent = true });
      vim.keymap.set('n', 'gf', vim.lsp.buf.references, { nowait = true, noremap = true, silent = true });
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { nowait = true, noremap = true, silent = true });
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { nowait = true, noremap = true, silent = true });
      vim.keymap.set('n', 'gq', vim.lsp.buf.code_action, { nowait = true, noremap = true, silent = true });
      vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, { nowait = true, noremap = true, silent = true });
      vim.keymap.set('n', 'gr', vim.lsp.buf.rename, { nowait = true, noremap = true, silent = true });

      -- g have really different behavior, so async for some reasons! i love async!
        vim.keymap.set('n', 'ge', function()
          vim.schedule(function() vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR}) end);
        end, { nowait = true, noremap = true, silent = true });
        vim.keymap.set('n', 'gE', function()
          vim.schedule(function() vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR}) end);
        end, { nowait = true, noremap = true, silent = true });

        vim.keymap.set('n', 'gw', function()
          vim.schedule(function() vim.diagnostic.goto_next() end);
        end, { nowait = true, noremap = true, silent = true });
        vim.keymap.set('n', 'gW', function()
          vim.schedule(function() vim.diagnostic.goto_prev() end);
        end, { nowait = true, noremap = true, silent = true });

      --  end  lsp key-map
    end; -- if client
  end, -- callback = function
});

-- Diagnostics
vim.diagnostic.config({
  -- Use the default configuration
  -- virtual_lines = true

  -- Alternatively, customize specific options
  virtual_lines = {
    -- Only show virtual line diagnostics for the current cursor line
    current_line = true,
  },
});
