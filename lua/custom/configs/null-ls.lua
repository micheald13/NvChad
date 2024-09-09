local null_ls = require("null-ls")
local helpers = require("null-ls.helpers")

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
   formatting.prettier,
   formatting.stylua,
   formatting.black,

   lint.shellcheck,
   lint.gccdiag,
   lint.ruff,
   -- lint.cppcheck,
}

null_ls.setup {
   debug = true,
   sources = sources,
}

-- local blackbox_build = {
--     method = null_ls.methods.DIAGNOSTICS,
--     filetypes = { "c", "cpp" },
--     -- null_ls.generator creates an async source
--     -- that spawns the command with the given arguments and options
--     generator = null_ls.generator({
--         command = "/home/developer/Emerald_sources/branches/develop_buildroot_update/BB_BUILD.sh",
--         args = { "$PWD", "--encoder", "--zerou" },
--         to_stdin = true,
--         from_stderr = true,
--         -- choose an output format (raw, json, or line)
--         format = "line",
--         check_exit_code = function(code, stderr)
--             local success = code <= 1
--
--             if not success then
--                 -- can be noisy for things that run often (e.g. diagnostics), but can
--                 -- be useful for things that run on demand (e.g. formatting)
--                 print(stderr)
--             end
--             print(stdout)
--             return success
--         end,
--         -- use helpers to parse the output from string matchers,
--         -- or parse it manually with a function
--         on_output = helpers.diagnostics.from_patterns({
--             {
--                 pattern = [[:(%d+):(%d+) [%w-/]+ (.*)]],
--                 groups = { "row", "col", "message" },
--             },
--             {
--                 pattern = [[:(%d+) [%w-/]+ (.*)]],
--                 groups = { "row", "message" },
--             },
--         }),
--     }),
-- }
-- null_ls.register(blackbox_build)
