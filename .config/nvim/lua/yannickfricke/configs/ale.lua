local vim = vim

vim.g.ale_fix_on_save = true
vim.g.ale_fixers = {
    ["*"] = {"trim_whitespace"}
}
