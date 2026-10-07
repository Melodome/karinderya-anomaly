local Workspace = game:GetService("Workspace")

local part = Workspace.TouchPart

local function onTouch(hit) 
    print("Something touched the part! It was:", hit.Name)

    local character = hit.Parent
    local humanoid = character:FindFirstChild("Humanoid")

    if humanoid then
        part.Color = Color3.fromRGB(0, 170, 0)
    end
end

part.Touched:Connect(onTouch)