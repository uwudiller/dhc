local a = (syn and syn.request) or (http and http.request) or request
if not a then
    return game:GetService("Players").LocalPlayer:Kick("unsupported exploit")
end

pcall(function()
    a({
        Url = "http://127.0.0.1:6463/rpc?v=1",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["Origin"] = "https://discord.com"
        },
        Body = game:GetService("HttpService"):JSONEncode({
            cmd = "INVITE_BROWSER",
            args = {code = "DWntmKJdxf"},
            nonce = game:GetService("HttpService"):GenerateGUID(false)
        })
    })
end)

local p = game:GetService("Players").LocalPlayer
local g = Instance.new("ScreenGui")
g.IgnoreGuiInset = true
g.Parent = p:WaitForChild("PlayerGui")

local f = Instance.new("Frame")
f.Size = UDim2.new(1,0,1,0)
f.BackgroundColor3 = Color3.new(0,0,0)
f.Parent = g

local i = Instance.new("ImageLabel")
i.Size = UDim2.new(0,700,0,310)
i.Position = UDim2.new(0.52,-44,0.4,-20)
i.AnchorPoint = Vector2.new(0.5,0.5)
i.BackgroundTransparency = 1
i.Image = "rbxassetid://88901573982824"
i.Parent = f

local t = Instance.new("TextLabel")
t.Size = UDim2.new(1,0,1,-50)
t.Position = UDim2.new(0,0,0,50)
t.BackgroundTransparency = 1
t.Text = "Sorry, the free version is no longer available.\nGo to discord.gg/wakapoop to get the new version."
t.TextColor3 = Color3.new(1,1,1)
t.TextScaled = true
t.Font = Enum.Font.SourceSansBold
t.Parent = f

local b = Instance.new("TextButton")
b.Size = UDim2.new(0,200,0,50)
b.Position = UDim2.new(0.5,-100,0.85,0)
b.AnchorPoint = Vector2.new(0.5,0.5)
b.BackgroundColor3 = Color3.new(0.2,0.2,0.2)
b.Text = "Copy Link"
b.TextColor3 = Color3.new(1,1,1)
b.TextScaled = true
b.Font = Enum.Font.SourceSansBold
b.Parent = f

b.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/DWntmKJdxf")
    b.Text = "Copied!"
    wait(1.5)
    b.Text = "Copy Link"
end)
