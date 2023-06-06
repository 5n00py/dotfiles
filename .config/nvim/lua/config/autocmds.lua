-- lua/config/autocmds.lua

-- Jump to the last cursor position when opening a file
function LastEditPosition()
    local last_pos = vim.fn.line("'\"")
    if last_pos > 0 and last_pos <= vim.fn.line("$") then
        vim.api.nvim_win_set_cursor(0, {last_pos, 0})
    end
end
vim.cmd([[ autocmd BufReadPost * silent! lua LastEditPosition() ]])

-- Jump to the last cursor position when opening a file
function LastEditPosition()
	local last_pos = vim.fn.line("'\"")
	if last_pos > 0 and last_pos <= vim.fn.line("$") then
		vim.api.nvim_win_set_cursor(0, {last_pos, 0})
	end
end
vim.cmd([[ autocmd BufReadPost * silent! lua LastEditPosition() ]])

-- RepeatWord: Inserts a word or words repeated a specified number of times 
-- into the buffer.
--
-- Arguments:
-- 	input (string): The input string containing the repetition count and word(s)
--                   Format: "<count> <word(s)>", where <count> is the number 
--                   of repetitions and <word(s)> is the word or words to repeat.
function RepeatWord(input)
	local count, word = input:match("(%d+)%s(.+)")
	count = tonumber(count)
	if count and word then
		local repeated_word = string.rep(word, count)
		vim.api.nvim_put({repeated_word}, "c", true, true)
	else
		print("Invalid input format. Use :Rep <count> <word(s)>")
	end
end

vim.cmd("command! -nargs=1 Rep lua RepeatWord(<f-args>)")
-- Example:
--   :Rep 5 hello
--   This command will insert the word "hello" repeated 5 times into the buffer.


