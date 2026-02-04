local icon_trans = {
  ["Color"] = " ",
  ["Unit"]  = " ",
  ["Dict"]  = " "
}

return {
    "saghen/blink.cmp",
    -- optional: provides snippets for the snippet source
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "*",
    opts = {
        -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
        -- 'super-tab' for mappings similar to VSCode (tab to accept)
        -- 'enter' for enter to accept
        -- 'none' for no mappings
        --
        -- All presets have the following mappings:
        -- C-space: Open menu or open docs if already open
        -- C-n/C-p or Up/Down: Select next/previous item
        -- C-e: Hide menu
        -- C-k: Toggle signature help (if signature.enabled = true)
        --
        -- See :h blink-cmp-config-keymap for defining your own keymap
        keymap = {
            -- Each keymap may be a list of commands and/or functions
            preset = "super-tab",
            -- Select completions
            ["<Up>"] = { "select_prev", "fallback" },
            ["<Down>"] = { "select_next", "fallback" },
            ["<S-Tab>"] = {"show"},
            -- Scroll documentation
            ["<C-b>"] = { "scroll_documentation_up", "fallback" },
            ["<C-f>"] = { "scroll_documentation_down", "fallback" },
            -- Show/hide signature
            ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
        },

        appearance = {
            -- 'mono' () for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = "mono",
        },

        sources = {
            -- `lsp`, `buffer`, `snippets`, `path`, and `omni` are built-in
            -- so you don't need to define them in `sources.providers`
            default = { "lsp", "path", "snippets", "buffer" },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" },
        
        completion = {
            keyword = { range = "prefix" },
            
            menu = {
                auto_show = false,
                draw = {
                    columns = {
                      { "label", "label_description", gap = 1 },
                      { "kind_icon", "kind" }
                    },
                    components = {
                        kind_icon = {
                            text = function(ctx)
                              ctx.kind_icon = icon_trans[ctx.kind] or ctx.kind_icon
                              return " " .. ctx.kind_icon .. " "
                            end,
                            highlight = function(ctx) return "BlinkCmpKind" .. ctx.kind .. "Rev" end
                        },
                    }
                },
            },
            -- Show completions after typing a trigger character, defined by the source
            trigger = { show_on_trigger_character = true },
            
            documentation = { auto_show = true},
            
            ghost_text = { enabled = true }
        },

        -- Signature help when tying
        signature = { enabled = true, window = { border = 'single'} },
    },
    opts_extend = { "sources.default" },
}
