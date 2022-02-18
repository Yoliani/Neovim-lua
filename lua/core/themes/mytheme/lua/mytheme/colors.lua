-- This file is used to define
-- the basic colors of the theme
-- and the style specific colors

local config = require('mytheme.config').options

local colors = {
	-- Common colors

	white =					'#EEFFFF',
	gray =					'#717CB4',
	black = 				'#000000',
	red =   				'#F07178',
	green = 				'#C3E88D',
	yellow =				'#FFCB6B',
	blue =  				'#82AAFF',
	paleblue =				'#B0C9FF',
	cyan =  				'#89DDFF',
	purple =				'#C792EA',
	orange =				'#F78C6C',
	pink =  				'#FF9CAC',

	-- Dark colors
	darkred =				'#dc6068',
	darkgreen =				'#abcf76',
	darkyellow =			'#e6b455',
	darkblue =				'#6e98eb',
	darkcyan =				'#71c6e7',
	darkpurple =			'#b480d6',
	darkorange =			'#e2795b',

	error =					'#FF5370',
	link =					'#80CBC4',
	cursor =				'#FFCC00',
	title =					'#EEFFFF',

	none =      			'NONE'
}

-- Style specific colors

if vim.g.mytheme_style == 'darker' then
	-- Darker theme style

	if config.high_visibility.darker == true then
		-- Darker theme style with high contrast
		colors.comments =		'#757575'
		colors.line_numbers =	'#5C5C5C'
	else
		-- default Darker theme style
		colors.comments =		'#616161'
		colors.line_numbers =	'#424242'

	end

    colors.bg =				'#212121'
    colors.bg_alt =			'#1A1A1A'
    colors.fg =				'#B0BEC5'
    colors.text =			'#727272'
    colors.selection = 		'#404040'
    colors.contrast =		'#1A1A1A'
    colors.active =			'#323232'
    colors.border =			'#343434'
    colors.highlight =		'#3F3F3F'
    colors.disabled =		'#474747'
    colors.accent =			'#FF9800'


elseif vim.g.mytheme_style == 'lighter' then

	if config.high_visibility.lighter == true then

		-- Lighter theme style with high contrast
		colors.fg =				'#213B47' -- 20% darkened
		colors.text =			'#61747D' -- 20% darkened
		colors.comments =		'#778C96' -- 20% darkened
		colors.selection = 		'#e2e9e9' -- 15% saturation, 10% lightness
		colors.line_numbers =	'#B6BFC3' -- 10% darkened
		colors.accent =			'#0089A1' -- 20% darkened

		colors.red =			'#B20602' -- 20% darkened
		colors.green =			'#5E8526' -- 20% darkened
		colors.yellow =			'#C37101' -- 20% darkened
		colors.blue = 			'#2E4F85' -- 20% darkened
		colors.paleblue =		'#54637D' -- 20% darkened
		colors.cyan = 			'#067A82' -- 20% darkened
		colors.purple =			'#491ACC' -- 20% darkened
		colors.orange =			'#C43A14' -- 20% darkened
		colors.pink = 			'#CC203D' -- 20% darkened

	else

		-- default Lighter theme style
		colors.fg =				'#546E7A'
		colors.text =			'#94A7B0'
		colors.comments =		'#AABFC9'
		colors.selection = 		'#80CBC4'
		colors.line_numbers	=	'#CFD8DC'
		colors.accent =			'#00BCD4'

		colors.red =			'#E53935'
		colors.green =			'#91B859'
		colors.yellow =			'#F6A434'
		colors.blue = 			'#6182B8'
		colors.paleblue =		'#8796B0'
		colors.cyan = 			'#39ADB5'
		colors.purple =			'#7C4DFF'
		colors.orange =			'#F76D47'
		colors.pink = 			'#FF5370'

	end

	colors.bg =				'#FAFAFA'
	colors.bg_alt =			'#FFFFFF'
	colors.contrast =		'#EEEEEE'
	colors.active =			'#E7E7E8'
	colors.border =			'#D3E1E8'
	colors.highlight =		'#E7E7E8'
	colors.disabled =		'#D2D4D5'
	colors.cursor =			'#272727'

	colors.white =			'#FFFFFF'
	colors.gray = 			'#717CB4'
    colors.title = colors.black


elseif vim.g.mytheme_style == 'palenight' then
	-- Palenight theme style

	colors.bg =				'#292D3E'
	colors.bg_alt =			'#1B1E2B'
	colors.fg =				'#A6ACCD'
	colors.text =			'#717CB4'
	colors.comments =		'#676E95'
	colors.selection =		'#444267'
	colors.contrast =		'#202331'
	colors.active =			'#414863'
	colors.border =			'#364367'
	colors.line_numbers =	'#3A3F58'
	colors.highlight =		'#444267'
	colors.disabled =		'#515772'
	colors.accent =			'#AB47BC'

elseif vim.g.mytheme_style == 'deep ocean' then
	-- Deep Ocean theme style

	colors.bg =				'#0F111A'
	colors.bg_alt =			'#090B10'
	colors.fg =				'#A6ACCD'
	colors.text =			'#717CB4'
	colors.comments =		'#464B5D'
	colors.selection = 		'#1F2233'
	colors.contrast =		'#090B10'
	colors.active =			'#1A1C25'
	colors.border =			'#232637'
	colors.line_numbers =	'#3B3F51'
	colors.highlight =		'#1F2233'
	colors.disabled =		'#464B5D'
	colors.accent =			'#84FFFF'

elseif vim.g.mytheme_style == 'oceanic' then
	-- Oceanic theme style

	colors.bg =				'#263238'
	colors.bg_alt =			'#192227'
	colors.fg =				'#B0BEC5'
	colors.text =			'#607D8B'
	colors.comments =		'#546E7A'
	colors.selection =		'#464B5D'
	colors.contrast =		'#1E272C'
	colors.active =			'#314549'
	colors.border =			'#37444C'
	colors.line_numbers =	'#37474F'
	colors.highlight =		'#425B67'
	colors.disabled =		'#415967'
	colors.accent =			'#009688'

else vim.g.mytheme_style = 'catppuccin'
	-- Oceanic theme style

	colors.bg =				'#1E1E2E'
	colors.bg_alt =			'#1A1826'
	colors.fg =				"#C3BAC6"
	colors.text =			"#D9E0EE"
	colors.comments =		'#6E6C7E'
	colors.selection =		'#464B5D'
	colors.contrast =		'#1E272C'
	colors.active =			'#314549'
	colors.border =			'#37444C'
	colors.line_numbers =	'#37474F'
	colors.highlight =		'#425B67'
	colors.disabled =		'#415967'
	colors.accent =			"#B5E8E0"	
	colors.red =			"#F28FAD"
	colors.green =			"#ABE9B3"
	colors.yellow =			"#FAE3B0"
	colors.blue = "#96CDFB"
	colors.paleblue =		"#B5E8E0"
	colors.cyan = 			"#89DCEB"
	colors.purple =			"#DDB6F2"
	colors.orange =			"#F8BD96"
	colors.pink = 			"#F5C2E7"

end
local color_palette = {
	rosewater = "#F5E0DC", -- Rosewater
	flamingo = "#F2CDCD", -- Flamingo
	mauve = "#DDB6F2", -- Mauve
	pink = "#F5C2E7", -- Pink
	red = "#F28FAD", -- Red
	maroon = "#E8A2AF", -- Maroon
	peach = "#F8BD96", -- Peach
	yellow = "#FAE3B0", -- Yellow
	green = "#ABE9B3", -- Green
	blue = "#96CDFB", -- Blue
	sky = "#89DCEB", -- Sky
	teal = "#B5E8E0", -- Teal
	lavender = "#C9CBFF", -- Lavender
	white = "#D9E0EE", -- White
	gray2 = "#C3BAC6", -- Gray2
	gray1 = "#988BA2", -- Gray1
	gray0 = "#6E6C7E", -- Gray0
	black4 = "#575268", -- Black4
	black3 = "#302D41", -- Black3
	black2 = "#1E1E2E", -- Black2
	black1 = "#1A1826", -- Black1
	black0 = "#161320", -- Black0
}
-- Apply the disabled background setting
if config.disable.background == true then
	colors.bg = 'NONE'
end

if config.disable.borders == true then
	colors.vsp = colors.bg
end

-- Disable borders
if config.disable.borders == true then
	colors.vsp = colors.bg
else
	colors.vsp = colors.border
end

-- Enable contrast sidebars
if config.contrast.sidebars == true then
	colors.sidebar = colors.bg_alt
else
	colors.sidebar = colors.bg
end

-- Enable contrast floating windows
if config.contrast.floating_windows == true then
	colors.float = colors.bg_alt
else
	colors.float = colors.bg
end

-- Enable contrast line numbers
if config.contrast.line_numbers == true then
	colors.bg_num = colors.bg_alt
else
	colors.bg_num = colors.bg
end

-- Enable contrast sign column
if config.contrast.sign_column == true then
	colors.bg_sign = colors.bg_alt
else
	colors.bg_sign = colors.bg
end

-- Enable contrast cursor line
if config.contrast.cursor_line == true then
	colors.bg_cur = colors.bg_alt
else
	colors.bg_cur = colors.active
end

if config.contrast.non_current_windows == true then
	colors.bg_nc = colors.bg_alt
else
	colors.bg_nc = colors.bg
end

-- Apply user defined colors
if type(config.custom_colors) == "table" then
	for key, value in pairs(config.custom_colors) do
		-- If the color starts with a #
		if string.sub(value, 1, 1) == "#" then
			-- Hex override
			colors[key] = value
		-- IF it doesn't
		else
			-- If the color isn't already in the colors table
			if not colors[value] then
				error("Color " .. value .. " does not exist")
			else
			-- If it is, then link to it
				colors[key] = colors[value]
			end
		end
	end
end

return colors
