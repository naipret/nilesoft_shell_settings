menu(type='*' where=(sel.count or wnd.is_taskbar or wnd.is_edit) title=title.terminal sep='top' image=icon.run_with_powershell)
{
	$tip_run_admin=["\xE1A7 Press SHIFT key to run " + this.title + " as administrator", tip.warning, 1.0]
	$has_admin=key.shift() or key.rbutton()
	
	item(where=package.exists("WindowsTerminal") title=title.Windows_Terminal tip=tip_run_admin admin=has_admin image='@package.path("WindowsTerminal")\WindowsTerminal.exe' cmd='wt.exe' arg='')
	item(title='PowerShell 7.0' admin=has_admin tip=tip_run_admin image cmd='pwsh.exe' args='')
	item(title=title.windows_powershell admin=has_admin tip=tip_run_admin image cmd='powershell.exe' args='')
	item(title=title.command_prompt tip=tip_run_admin admin=has_admin image cmd='cmd.exe' args='')
	item(title='MSYS2 MSYS' tip=tip_run_admin admin=has_admin image='C:\msys64\msys2.ico' cmd='C:/msys64/msys2_shell.cmd' args='-defterm -here -no-start -msys')
	item(title='MSYS2 UCRT64' tip=tip_run_admin admin=has_admin image='C:\msys64\ucrt64.ico' cmd='C:/msys64/msys2_shell.cmd' args='-defterm -here -no-start -ucrt64')
	item(title='Git Bash' tip=tip_run_admin admin=has_admin image='C:/Program Files/Git/mingw64/share/git/git-for-windows.ico' cmd='C:/Program Files/Git/bin/bash.exe' args='')
	item(title='Ubuntu' tip=tip_run_admin admin=has_admin image cmd='ubuntu.exe' args='')
}