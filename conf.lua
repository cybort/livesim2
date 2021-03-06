-- Configuration
-- Part of Live Simulator: 2
-- See copyright notice in main.lua

------------------
-- /gles switch --
------------------
if arg then
	local _, ffi = pcall(require, "ffi")

	if _ then
		local setenv_load = assert(loadstring("local x=... return x.setenv"))
		local putenv_load = assert(loadstring("local x=... return x._putenv"))
		ffi.cdef [[
			int setenv(const char *envname, const char *envval, int overwrite);
			int _putenv(const char *envstring);
		]]
		
		local ss, setenv = pcall(setenv_load, ffi.C)
		local ps, putenv = pcall(putenv_load, ffi.C)
		
		if ss or ps then
			-- analyze arg
			for i = 1, #arg do
				if arg[i] == "/gles" or arg[i] == "-gles" then
					if ss then
						setenv("LOVE_GRAPHICS_USE_OPENGLES", "1", 1)
					elseif ps then
						putenv("LOVE_GRAPHICS_USE_OPENGLES=1")
					end
					
					break
				end
			end
		end
	end
end

-------------------------------------------------
-- Configuration file                          --
-- TODO: Bring /width, /height, ... flags here --
-------------------------------------------------
function love.conf(t)
	t.identity = "DEPLS"                 -- The name of the save directory (string)
	t.version = "0.10.1"                 -- The L�VE version this game was made for (string)
	t.console = false                    -- Attach a console (boolean, Windows only)
	t.accelerometerjoystick = false      -- Enable the accelerometer on iOS and Android by exposing it as a Joystick (boolean)
	t.externalstorage = true             -- True to save files (and read from the save directory) in external storage on Android (boolean) 
	t.gammacorrect = false               -- Enable gamma-correct rendering, when supported by the system (boolean)
	
	t.window.title = "Live Simulator: 2" -- The window title (string)
	t.window.icon = "assets/image/icon/icon.png"-- Filepath to an image to use as the window's icon (string)
	t.window.width = 960                 -- The window width (number)
	t.window.height = 640                -- The window height (number)
	t.window.borderless = false          -- Remove all border visuals from the window (boolean)
	t.window.resizable = true            -- Let the window be user-resizable (boolean)
	t.window.minwidth = 320              -- Minimum window width if the window is resizable (number)
	t.window.minheight = 240             -- Minimum window height if the window is resizable (number)
	t.window.fullscreen = false          -- Enable fullscreen (boolean)
	t.window.fullscreentype = "desktop"  -- Choose between "desktop" fullscreen or "exclusive" fullscreen mode (string)
	t.window.vsync = true                -- Enable vertical sync (boolean)
	t.window.msaa = 0                    -- The number of samples to use with multi-sampled antialiasing (number)
	t.window.display = 1                 -- Index of the monitor to show the window in (number)
	t.window.highdpi = true              -- Enable high-dpi mode for the window on a Retina display (boolean)
	t.window.x = nil                     -- The x-coordinate of the window's position in the specified display (number)
	t.window.y = nil                     -- The y-coordinate of the window's position in the specified display (number)
	
	t.modules.audio = true               -- Enable the audio module (boolean)
	t.modules.event = true               -- Enable the event module (boolean) *
	t.modules.graphics = true            -- Enable the graphics module (boolean) *
	t.modules.image = true               -- Enable the image module (boolean) *
	t.modules.joystick = false           -- Enable the joystick module (boolean)
	t.modules.keyboard = true            -- Enable the keyboard module (boolean)
	t.modules.math = true                -- Enable the math module (boolean)
	t.modules.mouse = true               -- Enable the mouse module (boolean)
	t.modules.physics = false            -- Enable the physics module (boolean)
	t.modules.sound = true               -- Enable the sound module (boolean)
	t.modules.system = true              -- Enable the system module (boolean) *
	t.modules.timer = true               -- Enable the timer module (boolean), Disabling it will result 0 delta time in love.update *
	t.modules.touch = true               -- Enable the touch module (boolean)
	t.modules.video = true               -- Enable the video module (boolean)
	t.modules.window = true              -- Enable the window module (boolean) *
	t.modules.thread = true              -- Enable the thread module (boolean)
	-- * - Mandatory for AquaShine loader
end
