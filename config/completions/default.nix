{
  plugins.cmp = {
    enable = true;
    settings = {
      autoEnableSources = true;
      experimental = {
        ghost_text = true;
      };
      mapping = {
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<C-j>" = "cmp.mapping.select_next_item()";
        "<C-k>" = "cmp.mapping.select_prev_item()";
        "<C-e>" = "cmp.mapping.abort()";
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
      };
      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "path"; }
        {
          name = "buffer";
          option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
        }
        # { name = "copilot"; }
      ];

      window = {
        completion = {
          winhighlight =
            "FloatBorder:CmpBorder,Normal:CmpPmenu,Search:PmenuSel";
          scrollbar = false;
          sidePadding = 0;
          border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
        };

        settings.documentation = {
          border = [ "╭" "─" "╮" "│" "╯" "─" "╰" "│" ];
          winhighlight =
            "FloatBorder:CmpBorder,Normal:CmpPmenu,Search:PmenuSel";
        };
      };

      formatting = {
        fields = [ "abbr" "kind" "menu" ];
        format =
          # lua
          ''
            function(_, item)
              local icons = {
                Namespace = "󰌗",
                Text = "󰉿",
                Method = "󰆧",
                Function = "󰆧",
                Constructor = "",
                Field = "󰜢",
                Variable = "󰀫",
                Class = "󰠱",
                Interface = "",
                Module = "",
                Property = "󰜢",
                Unit = "󰑭",
                Value = "󰎠",
                Enum = "",
                Keyword = "󰌋",
                Snippet = "",
                Color = "󰏘",
                File = "󰈚",
                Reference = "󰈇",
                Folder = "󰉋",
                EnumMember = "",
                Constant = "󰏿",
                Struct = "󰙅",
                Event = "",
                Operator = "󰆕",
                TypeParameter = "󰊄",
                Table = "",
                Object = "󰅩",
                Tag = "",
                Array = "[]",
                Boolean = "",
                Number = "",
                Null = "󰟢",
                String = "󰉿",
                Calendar = "",
                Watch = "󰥔",
                Package = "",
                Copilot = "",
                Codeium = "",
                TabNine = "",
              }

              local icon = icons[item.kind] or ""
              item.kind = string.format("%s %s", icon, item.kind or "")
              return item
            end
          '';
      };
    };
  };
}
