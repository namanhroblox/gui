-- Gui to Lua
-- Version: 3.2

-- Instances:
--
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UtLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")

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

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0885608867, 0, 0.550335586, 0)
TextButton_3.Size = UDim2.new(0, 220, 0, 34)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "fly"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

TextButton_4.Parent = ScreenGui
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.560089946, 0, 0.135608852, 0)
TextButton_4.Size = UDim2.new(0, 24, 0, 24)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "x"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 14.000

-- Scripts:

local function JOXDA_fake_script() -- TextButton.LocalScript 
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
coroutine.wrap(JOXDA_fake_script)()
local function ZKXDT_fake_script() -- TextButton_2.LocalScript 
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
coroutine.wrap(ZKXDT_fake_script)()
local function XDODZR_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	local button = script.Parent
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local hrp = character:WaitForChild("HumanoidRootPart")
	local flying = false
	local speed = 50
	
	local bodyGyro
	local bodyVelocity
	
	local UserInputService = game:GetService("UserInputService")
	local camera = workspace.CurrentCamera
	local moveVector = Vector3.new(0,0,0)
	
	-- Cập nhật vận tốc dựa theo hướng camera
	local function updateVelocity()
		if bodyVelocity then
			local camCFrame = camera.CFrame
			local direction = (camCFrame.LookVector * moveVector.Z + camCFrame.RightVector * moveVector.X)
			bodyVelocity.Velocity = direction * speed + Vector3.new(0, moveVector.Y * speed, 0)
		end
	end
	
	-- Nhấn phím
	UserInputService.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if input.KeyCode == Enum.KeyCode.W then moveVector = Vector3.new(moveVector.X, moveVector.Y, 1) end
			if input.KeyCode == Enum.KeyCode.S then moveVector = Vector3.new(moveVector.X, moveVector.Y, -1) end
			if input.KeyCode == Enum.KeyCode.A then moveVector = Vector3.new(-1, moveVector.Y, moveVector.Z) end
			if input.KeyCode == Enum.KeyCode.D then moveVector = Vector3.new(1, moveVector.Y, moveVector.Z) end
			if input.KeyCode == Enum.KeyCode.Space then moveVector = Vector3.new(moveVector.X, 1, moveVector.Z) end
			if input.KeyCode == Enum.KeyCode.LeftShift then moveVector = Vector3.new(moveVector.X, -1, moveVector.Z) end
		end
	end)
	
	-- Nhả phím
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			if input.KeyCode == Enum.KeyCode.W or input.KeyCode == Enum.KeyCode.S then
				moveVector = Vector3.new(moveVector.X, moveVector.Y, 0)
			end
			if input.KeyCode == Enum.KeyCode.A or input.KeyCode == Enum.KeyCode.D then
				moveVector = Vector3.new(0, moveVector.Y, moveVector.Z)
			end
			if input.KeyCode == Enum.KeyCode.Space or input.KeyCode == Enum.KeyCode.LeftShift then
				moveVector = Vector3.new(moveVector.X, 0, moveVector.Z)
			end
		end
	end)
	
	-- Bật/Tắt bay
	button.MouseButton1Click:Connect(function()
		flying = not flying
	
		if flying then
			bodyGyro = Instance.new("BodyGyro")
			bodyGyro.P = 9e4
			bodyGyro.MaxTorque = Vector3.new(9e5,9e5,9e5)
			bodyGyro.CFrame = hrp.CFrame
			bodyGyro.Parent = hrp
	
			bodyVelocity = Instance.new("BodyVelocity")
			bodyVelocity.MaxForce = Vector3.new(9e5, 9e5, 9e5)
			bodyVelocity.Velocity = Vector3.new(0,0,0)
			bodyVelocity.Parent = hrp
	
			button.Text = "unfly"
	
			-- Loop cập nhật bay
			spawn(function()
				while flying and bodyVelocity and bodyGyro do
					bodyGyro.CFrame = CFrame.new(hrp.Position, hrp.Position + camera.CFrame.LookVector)
					updateVelocity()
					wait()
				end
			end)
		else
			if bodyGyro then bodyGyro:Destroy() end
			if bodyVelocity then bodyVelocity:Destroy() end
			button.Text = "fly"
		end
	end)
	
end
coroutine.wrap(XDODZR_fake_script)()
local function GQQLST_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	local button = script.Parent
	local guiFrame = button.Parent:WaitForChild("Frame") -- Frame muốn bật/tắt
	local visible = true
	
	button.MouseButton1Click:Connect(function()
		visible = not visible
		guiFrame.Visible = visible
	
		-- Thay đổi text nút tùy trạng thái
		if visible then
			button.Text = "Ẩn GUI"
		else
			button.Text = "Hiện GUI"
		end
	end)
	
end
coroutine.wrap(GQQLST_fake_script)()ICorner = Instance.new("UICorner")
local Tex
