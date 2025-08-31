-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.560089946, 0, 0.135756671, 0)
Frame.Size = UDim2.new(0, 271, 0, 298)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0885608867, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 223, 0, 30)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "my gui!"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 30.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0885608867, 0, 0.17091836, 0)
TextButton.Size = UDim2.new(0, 222, 0, 40)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "message"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0885608867, 0, 0.352040827, 0)
TextButton_2.Size = UDim2.new(0, 221, 0, 36)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "spam part"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

-- Scripts:

local function VXKQIVF_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	-- Đặt LocalScript bên trong TextButton hoặc ScreenGui
	local button = script.Parent  -- giả sử LocalScript nằm trong TextButton
	
	button.MouseButton1Click:Connect(function()
		-- Tạo Message trong Workspace
		local msg = Instance.new("Message")
		msg.Text = "haha team c00lkidd join today"
		msg.Parent = workspace
	
		-- Xóa Message sau 3 giây
		game:GetService("Debris"):AddItem(msg, 3)
	end)
end
coroutine.wrap(VXKQIVF_fake_script)()
local function AJYJ_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local button = script.Parent
	local workspace = game:GetService("Workspace")
	local runSpam = false
	
	-- Danh sách các mặt decal
	local faces = {
		Enum.NormalId.Top,
		Enum.NormalId.Bottom,
		Enum.NormalId.Left,
		Enum.NormalId.Right,
		Enum.NormalId.Front,
		Enum.NormalId.Back
	}
	
	button.MouseButton1Click:Connect(function()
		runSpam = not runSpam  -- nhấn lần 1 bật spam, nhấn lần 2 tắt spam
	
		if runSpam then
			while runSpam do
				local decalPart = Instance.new("Part")
				decalPart.Size = Vector3.new(5,5,5)
				decalPart.Anchored = true
				decalPart.Position = Vector3.new(
					math.random(-50,50),
					5,
					math.random(-50,50)
				)
				decalPart.Parent = workspace
	
				-- Tạo decal trên tất cả các mặt
				for _, face in pairs(faces) do
					local decal = Instance.new("Decal")
					decal.Texture = "rbxassetid://138488830920232"  -- đổi decal của bạn
					decal.Face = face
					decal.Parent = decalPart
				end
	
				-- Xóa decalPart sau 10 giây để giảm lag
				game:GetService("Debris"):AddItem(decalPart, 10)
	
				wait(0.1)  -- tốc độ spawn
			end
		end
	end)
	
end
coroutine.wrap(AJYJ_fake_script)()
