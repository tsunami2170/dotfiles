return 
{
    "42Paris/42header",
    config = function()
        vim.api.nvim_create_user_command("ST", function() vim.cmd("Stdheader") end, {})
        vim.g.user42 = 'tssaito'
        vim.g.mail42 = 'tssaito@student.42tokyo.jp'
    end
}
