
-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by : Md Faiyaz Hossain
-- 2018-03-01
--
-- Calculates the circumfrance and area of the circle
-----------------------------------------------------------------------------------------


--all the variables







--this shows the names of which value we should put in each textbox


local InstructionTextField = display.newText( "Enter the radius", display.contentCenterX - 500, display.contentCenterY - 500, native.systemFont, 195 )

local DiameterTextField = native.newTextField( display.contentCenterX - 800, display.contentCenterY - 300, 750, 150 )


DiameterTextField.id = "length textField"

display.setDefault("background", 0.3, 0.4, 1)

local AreaTextField = display.newText( "Area", display.contentCenterX - 400, display.contentCenterY + 200, native.systemFont, 100 )

AreaTextField.id = "AreaTextField"
AreaTextField:setFillColor( 1, 1, 1 )

local CircumfranceTextField = display.newText( "Circumfrance", display.contentCenterX - 400, display.contentCenterY + 500, native.systemFont, 100 )
CircumfranceTextField.id = "CircumfranceTextField"
CircumfranceTextField:setFillColor( .3, 1, 1 )

-- the click button

local calculateButton = display.newImageRect( "enterButton.png", 406, 157 )

calculateButton.x = display.contentCenterX + 500
calculateButton.y = display.contentCenterY - 270
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )

local Diameter


local Area


local Circumfrance


   Diameter = DiameterTextField.text


   Area = AreaTextField.text


   Circumfrance = CircumfranceTextField.text


 	Area = math.pi * Diameter^2


	Circumfrance = 2 * math.pi * Diameter


	-- print( area and circumfrance )


  AreaTextField.text = "The area is " .. Area.."cm"


  CircumfranceTextField.text = "The circumfrance is " ..Circumfrance.."cm"

   return true


end

calculateButton:addEventListener( "touch", calculateButtonTouch )
