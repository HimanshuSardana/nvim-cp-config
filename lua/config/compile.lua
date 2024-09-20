function run_code()
	-- Get the current file name and its extension
	local filename = vim.fn.expand("%:p")
	local extension = vim.fn.expand("%:e")
	local output = vim.fn.tempname() -- Temporary file for compiled binary (for C/C++)

	-- Determine the correct command based on the file extension
	if extension == "c" then
		-- Compile and run C code
		local compile_cmd = string.format("gcc %s -o %s 2>&1", filename, output)
		local compile_result = vim.fn.system(compile_cmd)

		-- If there are compilation errors, show them in a floating window
		if vim.v.shell_error ~= 0 then
			show_floating_output(compile_result)
		else
			-- Run the compiled C program in a terminal
			run_in_terminal(output)
		end
	elseif extension == "cpp" then
		local compile_cmd = string.format("g++ %s -o %s 2>&1", filename, output)
		local compile_result = vim.fn.system(compile_cmd)

		-- If there are compilation errors, show them in a floating window
		if vim.v.shell_error ~= 0 then
			show_floating_output(compile_result)
		else
			-- Run the compiled C++ program in a terminal
			run_in_terminal(output)
		end
	elseif extension == "py" then
		local run_cmd = string.format("python3 %s", filename)
		run_in_terminal(run_cmd)
	elseif extension == "go" then
		local run_cmd = string.format("go run %s", filename)
		run_in_terminal(run_cmd)
	else
		show_floating_output("Unsupported file type: " .. extension)
	end
end

-- Function to display compilation errors or messages in a floating window
function show_floating_output(result)
	-- Create a new buffer
	local buf = vim.api.nvim_create_buf(false, true)

	-- Set buffer content to the result (split by lines)
	vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(result, "\n"))

	-- Create a floating window configuration
	local width = math.floor(vim.o.columns * 0.8)
	local height = math.floor(vim.o.lines * 0.6)
	local opts = {
		style = "minimal",
		relative = "editor",
		width = width,
		height = height,
		row = math.floor((vim.o.lines - height) / 2),
		col = math.floor((vim.o.columns - width) / 2),
		border = "single"
	}

	-- Open the floating window
	vim.api.nvim_open_win(buf, true, opts)
end

-- Function to run the program or script in a terminal buffer for interactive input/output
function run_in_terminal(cmd)
	-- Open a terminal buffer at the bottom and run the command
	vim.cmd("botright split term://" .. cmd)
	-- Resize the terminal buffer (optional)
	vim.cmd("resize 15")
	vim.cmd("startinsert")
end

vim.api.nvim_create_user_command("RunCode", run_code, {})
