hs.alert.show('Hello Nesoy')

-- option reload
hs.hotkey.bind({'option', 'cmd'}, 'r',  hs.reload)


-- open app
hs.hotkey.bind({'option'}, '1', function() 
	hs.application.launchOrFocus('kakaotalk')
end)


hs.hotkey.bind({'option'}, '2', function() 
	hs.application.launchOrFocus('카카오워크')
end)

hs.hotkey.bind({'option'}, '3', function() 
	hs.application.launchOrFocus('Obsidian')
end)

hs.hotkey.bind({'option'}, '4', function() 
	hs.application.launchOrFocus('Things3')
end)


hs.hotkey.bind({'option'}, 'space', function() 
	hs.application.launchOrFocus('iterm')
end)


-- hint window app
hs.hints.hintChars = {'1', '2', '3', '4', 'Q', 'W', 'E', 'R'}
hs.hotkey.bind({'shift'}, 'F1', hs.hints.windowHints)


-- move window
local function move_win(xx, yy, ww, hh)
    return function()
        local win = hs.window.focusedWindow()

        if win == nil then
            win = hs.window.frontmostWindow()
        end

        local f = win:frame()
        local max = win:screen():frame()

        win:setFrame({x = max.x + max.w * xx,
                      y = max.y + max.h * yy,
                      w = max.w * ww,
                      h = max.h * hh}, 0)
    end
end

local function maximize()
    local win = hs.window.focusedWindow()
    win:maximize(0)
end

local mod = {'option', 'command'}
hs.hotkey.bind(mod, 'left', move_win(0, 0, 1/2, 1)) -- 왼쪽
hs.hotkey.bind(mod, 'right', move_win(1/2, 0, 1/2, 1)) -- 오른쪽
hs.hotkey.bind(mod, 'up', maximize) -- 전체

-- input source
hs.hotkey.bind({'cmd'}, 'i', function()
    local input_source = hs.keycodes.currentSourceID()
    print(input_source)
end)
