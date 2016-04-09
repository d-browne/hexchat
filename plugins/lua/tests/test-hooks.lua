print('script loaded')

hexchat.hook_command('command', function (word, word_eol)
	print('Command hook running')
	if word[2] ~= 'TESTING' then
		print('command server callback has incorrect arugment')
		os.exit(1)
	end
	return hexchat.EAT_ALL
end)

hexchat.command('command TESTING')
os.exit(0)
