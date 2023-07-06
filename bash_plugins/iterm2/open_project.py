#!/usr/bin/env python3

import sys
import iterm2
# This script was created with the "basic" environment which does not support adding dependencies
# with pip.

if len(sys.argv) < 3:
    print(sys.argv[0], '<path> <title> (count)')
    sys.exit()

tab_path = sys.argv[1]
tab_title = sys.argv[2]
tab_count = 1
if len(sys.argv) > 3:
    tab_count = int(sys.argv[3])

async def create_tab(window, title, path):
    tab = await window.async_create_tab()

    await tab.async_set_title(title)
    await tab.current_session.async_send_text(f"cd {path}\n")
    await tab.current_session.async_send_text(f"clear\n")

async def main(connection):
    # Your code goes here. Here's a bit of example code that adds a tab to the current window:
    app = await iterm2.async_get_app(connection)
    window = app.current_terminal_window
    
    if window is None: return 

    for i in range(0, tab_count):
        await create_tab(window, tab_title, tab_path)

iterm2.run_until_complete(main)
