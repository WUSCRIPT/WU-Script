local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
while not player:FindFirstChild("PlayerGui") do
    wait(0.1)
end

local gui = Instance.new("ScreenGui")
gui.Name = "UltraPremiumLoader"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = player.PlayerGui

local blurEffect = Instance.new("BlurEffect")
blurEffect.Size = 0
blurEffect.Parent = game:GetService("Lighting")

local colorCorrection = Instance.new("ColorCorrectionEffect")
colorCorrection.Brightness = 0
colorCorrection.Contrast = 0
colorCorrection.Saturation = 0
colorCorrection.TintColor = Color3.new(1, 1, 1)
colorCorrection.Parent = game:GetService("Lighting")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 460, 0, 350)
mainFrame.Position = UDim2.new(0.5, -230, 0.5, -175)
mainFrame.BackgroundColor3 = Color3.fromRGB(10, 12, 18)
mainFrame.BackgroundTransparency = 1
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 20)
corner.Parent = mainFrame

local backgroundGradient = Instance.new("UIGradient")
backgroundGradient.Rotation = 90
backgroundGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 22, 30)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(15, 17, 25)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 12, 18))
})
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 17, 25)

local outerGlow = Instance.new("UIStroke")
outerGlow.Color = Color3.fromRGB(40, 100, 200)
outerGlow.Thickness = 3
outerGlow.Transparency = 1
outerGlow.Parent = mainFrame

local innerGlow = Instance.new("UIStroke")
innerGlow.Color = Color3.fromRGB(80, 160, 255)
innerGlow.Thickness = 1
innerGlow.Transparency = 1
innerGlow.Parent = mainFrame

local backgroundPattern = Instance.new("ImageLabel")
backgroundPattern.Size = UDim2.new(1, 0, 1, 0)
backgroundPattern.Position = UDim2.new(0, 0, 0, 0)
backgroundPattern.BackgroundTransparency = 1
backgroundPattern.Image = "rbxassetid://8992238293"
backgroundPattern.ImageColor3 = Color3.fromRGB(20, 30, 50)
backgroundPattern.ImageTransparency = 0.9
backgroundPattern.ScaleType = Enum.ScaleType.Tile
backgroundPattern.TileSize = UDim2.new(0, 50, 0, 50)
backgroundPattern.Parent = mainFrame

local titleContainer = Instance.new("Frame")
titleContainer.Size = UDim2.new(0.9, 0, 0, 70)
titleContainer.Position = UDim2.new(0.05, 0, 0.05, 0)
titleContainer.BackgroundTransparency = 1
titleContainer.Parent = mainFrame

local accentLine = Instance.new("Frame")
accentLine.Size = UDim2.new(0, 4, 0, 40)
accentLine.Position = UDim2.new(0, 0, 0.5, -20)
accentLine.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
accentLine.BorderSizePixel = 0
accentLine.BackgroundTransparency = 1
accentLine.Parent = titleContainer

local accentCorner = Instance.new("UICorner")
accentCorner.CornerRadius = UDim.new(0, 2)
accentCorner.Parent = accentLine

local icon = Instance.new("TextLabel")
icon.Size = UDim2.new(0, 36, 0, 36)
icon.Position = UDim2.new(0, 15, 0.5, -18)
icon.BackgroundTransparency = 1
icon.Text = "⟳"
icon.TextColor3 = Color3.fromRGB(0, 180, 255)
icon.TextScaled = true
icon.Font = Enum.Font.GothamBlack
icon.TextTransparency = 1
icon.Parent = titleContainer

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -60, 0.6, 0)
title.Position = UDim2.new(0, 60, 0, 5)
title.BackgroundTransparency = 1
title.Text = "LOADING.........."
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Font = Enum.Font.GothamBlack
title.TextTransparency = 1
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = titleContainer

local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.new(1, -60, 0.4, 0)
subtitle.Position = UDim2.new(0, 60, 0.6, 0)
subtitle.BackgroundTransparency = 1
subtitle.Text = " "
subtitle.TextColor3 = Color3.fromRGB(180, 200, 255)
subtitle.TextScaled = true
subtitle.Font = Enum.Font.Gotham
subtitle.TextTransparency = 1
subtitle.TextXAlignment = Enum.TextXAlignment.Left
subtitle.Parent = titleContainer

local statusContainer = Instance.new("Frame")
statusContainer.Size = UDim2.new(0.9, 0, 0, 30)
statusContainer.Position = UDim2.new(0.05, 0, 0.28, 0)
statusContainer.BackgroundTransparency = 1
statusContainer.Parent = mainFrame

local statusText = Instance.new("TextLabel")
statusText.Size = UDim2.new(1, 0, 1, 0)
statusText.Position = UDim2.new(0, 0, 0, 0)
statusText.BackgroundTransparency = 1
statusText.Text = " "
statusText.TextColor3 = Color3.fromRGB(220, 230, 255)
statusText.TextScaled = true
statusText.Font = Enum.Font.GothamBold
statusText.TextTransparency = 1
statusText.TextXAlignment = Enum.TextXAlignment.Left
statusText.Parent = statusContainer

local progressArea = Instance.new("Frame")
progressArea.Size = UDim2.new(0.9, 0, 0, 120)
progressArea.Position = UDim2.new(0.05, 0, 0.45, 0)
progressArea.BackgroundTransparency = 1
progressArea.Parent = mainFrame

local progressContainer = Instance.new("Frame")
progressContainer.Size = UDim2.new(1, 0, 0, 25)
progressContainer.Position = UDim2.new(0, 0, 0.05, 0)
progressContainer.BackgroundColor3 = Color3.fromRGB(30, 35, 45)
progressContainer.BackgroundTransparency = 1
progressContainer.BorderSizePixel = 0
progressContainer.Parent = progressArea

local progressCorner = Instance.new("UICorner")
progressCorner.CornerRadius = UDim.new(0, 12)
progressCorner.Parent = progressContainer

local progressBackground = Instance.new("Frame")
progressBackground.Size = UDim2.new(1, 0, 1, 0)
progressBackground.Position = UDim2.new(0, 0, 0, 0)
progressBackground.BackgroundColor3 = Color3.fromRGB(25, 30, 40)
progressBackground.BorderSizePixel = 0
progressBackground.Parent = progressContainer

local bgCorner = Instance.new("UICorner")
bgCorner.CornerRadius = UDim.new(0, 12)
bgCorner.Parent = progressBackground

local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(0, 0, 1, 0)
progressBar.Position = UDim2.new(0, 0, 0, 0)
progressBar.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
progressBar.BorderSizePixel = 0
progressBar.Parent = progressBackground

local barCorner = Instance.new("UICorner")
barCorner.CornerRadius = UDim.new(0, 12)
barCorner.Parent = progressBar

local progressGradient = Instance.new("UIGradient")
progressGradient.Rotation = 90
progressGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 200, 255)),
    ColorSequenceKeypoint.new(0.3, Color3.fromRGB(0, 180, 255)),
    ColorSequenceKeypoint.new(0.7, Color3.fromRGB(0, 160, 230)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 140, 210))
})
progressGradient.Parent = progressBar

local progressGlow = Instance.new("UIStroke")
progressGlow.Color = Color3.fromRGB(0, 200, 255)
progressGlow.Thickness = 2
progressGlow.Transparency = 1
progressGlow.Parent = progressBar

local progressShine = Instance.new("Frame")
progressShine.Size = UDim2.new(1, 0, 0.3, 0)
progressShine.Position = UDim2.new(0, 0, 0, 0)
progressShine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
progressShine.BackgroundTransparency = 0.8
progressShine.BorderSizePixel = 0
progressShine.Parent = progressBar

local shineCorner = Instance.new("UICorner")
shineCorner.CornerRadius = UDim.new(0, 12)
shineCorner.Parent = progressShine

local percentText = Instance.new("TextLabel")
percentText.Size = UDim2.new(1, 0, 0, 45)
percentText.Position = UDim2.new(0, 0, 0.75, 0)
percentText.BackgroundTransparency = 1
percentText.Text = "0%"
percentText.TextColor3 = Color3.fromRGB(200, 220, 255)
percentText.TextScaled = true
percentText.Font = Enum.Font.GothamBlack
percentText.TextTransparency = 1
percentText.Parent = progressArea

local glowOrb = Instance.new("Frame")
glowOrb.Size = UDim2.new(0, 150, 0, 150)
glowOrb.Position = UDim2.new(0.5, -75, 0.5, -75)
glowOrb.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
glowOrb.BackgroundTransparency = 1
glowOrb.BorderSizePixel = 0
glowOrb.Parent = mainFrame

local orbCorner = Instance.new("UICorner")
orbCorner.CornerRadius = UDim.new(1, 0)
orbCorner.Parent = glowOrb

local particlesContainer = Instance.new("Frame")
particlesContainer.Size = UDim2.new(1, 0, 1, 0)
particlesContainer.BackgroundTransparency = 1
particlesContainer.Parent = mainFrame

local nodesContainer = Instance.new("Frame")
nodesContainer.Size = UDim2.new(1, 0, 1, 0)
nodesContainer.BackgroundTransparency = 1
nodesContainer.Parent = mainFrame

local function createNode(position)
    local node = Instance.new("Frame")
    node.Size = UDim2.new(0, 6, 0, 6)
    node.Position = position
    node.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
    node.BorderSizePixel = 0
    node.BackgroundTransparency = 1
    node.Parent = nodesContainer
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = node
    
    return node
end

local nodes = {
    createNode(UDim2.new(0, 10, 0, 10)),
    createNode(UDim2.new(1, -10, 0, 10)),
    createNode(UDim2.new(0, 10, 1, -10)),
    createNode(UDim2.new(1, -10, 1, -10))
}

local function playFadeInAnimation()
    local blurTween = TweenService:Create(blurEffect, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = 15
    })
    
    local colorTween = TweenService:Create(colorCorrection, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Brightness = 0.05,
        Contrast = 0.1,
        Saturation = -0.1
    })
    
    blurTween:Play()
    colorTween:Play()
    
    local frameTween = TweenService:Create(mainFrame, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0.05
    })
    frameTween:Play()
    
    local outerGlowTween = TweenService:Create(outerGlow, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 0.7
    })
    
    local innerGlowTween = TweenService:Create(innerGlow, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 0.5
    })
    
    outerGlowTween:Play()
    innerGlowTween:Play()
    
    local accentTween = TweenService:Create(accentLine, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0
    })
    accentTween:Play()
    
    local iconTween = TweenService:Create(icon, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 0
    })
    iconTween:Play()
    
    local titleTween = TweenService:Create(title, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 0
    })
    
    local subtitleTween = TweenService:Create(subtitle, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 0
    })
    
    local statusTween = TweenService:Create(statusText, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 0
    })
    
    local percentTween = TweenService:Create(percentText, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 0
    })
    
    local progressTween = TweenService:Create(progressContainer, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0
    })
    
    local progressGlowTween = TweenService:Create(progressGlow, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 0.8
    })
    
    local glowTween = TweenService:Create(glowOrb, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0.9
    })
    
    for _, node in ipairs(nodes) do
        local nodeTween = TweenService:Create(node, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 0
        })
        nodeTween:Play()
    end
    
    titleTween:Play()
    subtitleTween:Play()
    statusTween:Play()
    percentTween:Play()
    progressTween:Play()
    progressGlowTween:Play()
    glowTween:Play()
    
    wait(1.2)
end

local function startGlowAnimation()
    spawn(function()
        while gui.Parent do
            local sizeTween1 = TweenService:Create(glowOrb, TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Size = UDim2.new(0, 180, 0, 180),
                Position = UDim2.new(0.5, -90, 0.5, -90),
                BackgroundColor3 = Color3.fromRGB(0, 120, 220)
            })
            
            local sizeTween2 = TweenService:Create(glowOrb, TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Size = UDim2.new(0, 150, 0, 150),
                Position = UDim2.new(0.5, -75, 0.5, -75),
                BackgroundColor3 = Color3.fromRGB(0, 100, 200)
            })
            
            sizeTween1:Play()
            sizeTween1.Completed:Wait()
            sizeTween2:Play()
            sizeTween2.Completed:Wait()
        end
    end)
end

local function startNodeAnimation()
    spawn(function()
        while gui.Parent do
            for _, node in ipairs(nodes) do
                local scaleTween = TweenService:Create(node, TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                    Size = UDim2.new(0, 8, 0, 8)
                })
                
                local scaleBackTween = TweenService:Create(node, TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                    Size = UDim2.new(0, 6, 0, 6)
                })
                
                scaleTween:Play()
                scaleTween.Completed:Wait()
                scaleBackTween:Play()
                scaleBackTween.Completed:Wait()
                
                wait(0.5)
            end
        end
    end)
end

local function createParticleEffect()
    spawn(function()
        while gui.Parent do
            for i = 1, 3 do
                local particle = Instance.new("Frame")
                local size = math.random(4, 8)
                particle.Size = UDim2.new(0, size, 0, size)
                particle.Position = UDim2.new(math.random(), -size/2, math.random(), -size/2)
                
                if i == 1 then
                    particle.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
                elseif i == 2 then
                    particle.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
                else
                    particle.BackgroundColor3 = Color3.fromRGB(150, 220, 255)
                end
                
                particle.BorderSizePixel = 0
                particle.Parent = particlesContainer
                
                local corner = Instance.new("UICorner")
                corner.CornerRadius = UDim.new(1, 0)
                corner.Parent = particle
                
                local tweenInfo = TweenInfo.new(math.random(2, 3), Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                local tween = TweenService:Create(particle, tweenInfo, {
                    Position = UDim2.new(
                        particle.Position.X.Scale + (math.random() - 0.5) * 0.4,
                        particle.Position.X.Offset,
                        1.2,
                        0
                    ),
                    BackgroundTransparency = 1,
                    Size = UDim2.new(0, 0, 0, 0)
                })
                
                tween:Play()
                tween.Completed:Connect(function()
                    particle:Destroy()
                end)
            end
            
            wait(0.1)
        end
    end)
end

local function startProgressPulse()
    spawn(function()
        while gui.Parent do
            local tween1 = TweenService:Create(progressGlow, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Transparency = 0.3,
                Thickness = 2.5
            })
            
            local tween2 = TweenService:Create(progressGlow, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Transparency = 0.8,
                Thickness = 2
            })
            
            tween1:Play()
            tween1.Completed:Wait()
            tween2:Play()
            tween2.Completed:Wait()
        end
    end)
end

local function startShineAnimation()
    spawn(function()
        while gui.Parent do
            local tween = TweenService:Create(progressShine, TweenInfo.new(1.0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(0, 0, 0.7, 0)
            })
            
            tween:Play()
            tween.Completed:Wait()
            
            progressShine.Position = UDim2.new(0, 0, 0, 0)
            wait(2.5)
        end
    end)
end

local function startIconAnimation()
    spawn(function()
        local rotation = 0
        while gui.Parent do
            rotation = (rotation + 1) % 360
            icon.Rotation = rotation
            RunService.Heartbeat:Wait()
        end
    end)
end

local function playCompletionAnimation()
    local completionTween1 = TweenService:Create(progressGlow, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Transparency = 0.1,
        Thickness = 4
    })
    
    local completionTween2 = TweenService:Create(progressGlow, TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
        Transparency = 0.8,
        Thickness = 2
    })
    
    local iconColorTween = TweenService:Create(icon, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextColor3 = Color3.fromRGB(0, 255, 150)
    })
    
    local titleColorTween = TweenService:Create(title, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextColor3 = Color3.fromRGB(0, 255, 150)
    })
    
    local accentColorTween = TweenService:Create(accentLine, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.fromRGB(0, 255, 150)
    })
    
    completionTween1:Play()
    iconColorTween:Play()
    titleColorTween:Play()
    accentColorTween:Play()
    completionTween1.Completed:Wait()
    completionTween2:Play()
end

local function playProgressBarFadeOut()
    local progressScaleTween = TweenService:Create(progressBar, TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.new(1, 0, 0, 0),
        Position = UDim2.new(0, 0, 0.5, 0)
    })
    
    local progressAlphaTween = TweenService:Create(progressBar, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1
    })
    
    local progressGlowTween = TweenService:Create(progressGlow, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 1,
        Thickness = 0
    })
    
    local shineTween = TweenService:Create(progressShine, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1
    })
    
    local containerTween = TweenService:Create(progressContainer, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1
    })
    
    local percentTween = TweenService:Create(percentText, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 1
    })
    
    progressScaleTween:Play()
    progressAlphaTween:Play()
    progressGlowTween:Play()
    shineTween:Play()
    containerTween:Play()
    percentTween:Play()
    
    wait(0.8)
end

local function playFadeOutAnimation()
    playProgressBarFadeOut()
    
    local frameTween = TweenService:Create(mainFrame, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1,
        Position = UDim2.new(0.5, -230, 0.45, -175)
    })
    
    local outerGlowTween = TweenService:Create(outerGlow, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 1
    })
    
    local innerGlowTween = TweenService:Create(innerGlow, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 1
    })
    
    local accentTween = TweenService:Create(accentLine, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1
    })
    
    local iconTween = TweenService:Create(icon, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 1
    })
    
    local titleTween = TweenService:Create(title, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 1
    })
    
    local subtitleTween = TweenService:Create(subtitle, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 1
    })
    
    local statusTween = TweenService:Create(statusText, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 1
    })
    
    local glowTween = TweenService:Create(glowOrb, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 1
    })
    
    local blurTween = TweenService:Create(blurEffect, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = 0
    })
    
    local colorTween = TweenService:Create(colorCorrection, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Brightness = 0,
        Contrast = 0,
        Saturation = 0
    })
    
    for _, node in ipairs(nodes) do
        local nodeTween = TweenService:Create(node, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundTransparency = 1
        })
        nodeTween:Play()
    end
    
    frameTween:Play()
    outerGlowTween:Play()
    innerGlowTween:Play()
    accentTween:Play()
    iconTween:Play()
    titleTween:Play()
    subtitleTween:Play()
    statusTween:Play()
    glowTween:Play()
    blurTween:Play()
    colorTween:Play()
    
    frameTween.Completed:Wait()
    
    gui:Destroy()
    blurEffect:Destroy()
    colorCorrection:Destroy()
end

local function loadScriptWithProgress()
    playFadeInAnimation()
    
    startGlowAnimation()
    startNodeAnimation()
    createParticleEffect()
    startProgressPulse()
    startShineAnimation()
    startIconAnimation()
    
    local success, result = pcall(function()
        local steps = {
            {"INITIALIZING SYSTEM...", 1.8},
            {"LOADING CORE MODULES...", 2.2},
            {"DOWNLOADING RESOURCES...", 2.8},
            {"VERIFYING SECURITY PROTOCOLS...", 2.0},
            {"OPTIMIZING PERFORMANCE...", 1.8},
            {"FINALIZING SETUP...", 1.5},
            {"PREPARING EXECUTION...", 1.2}
        }
        
        local totalTime = 0
        for _, step in ipairs(steps) do
            totalTime = totalTime + step[2]
        end
        
        local currentTime = 0
        for i, step in ipairs(steps) do
            statusText.Text = step[1]
            
            local startProgress = (currentTime / totalTime)
            local endProgress = ((currentTime + step[2]) / totalTime)
            
            local tweenInfo = TweenInfo.new(step[2], Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local tween = TweenService:Create(progressBar, tweenInfo, {
                Size = UDim2.new(endProgress, 0, 1, 0)
            })
            
            tween:Play()
            
            local startPercent = math.floor((currentTime / totalTime) * 100)
            local endPercent = math.floor(((currentTime + step[2]) / totalTime) * 100)
            
            for percent = startPercent, endPercent do
                percentText.Text = percent .. "%"
                RunService.Heartbeat:Wait()
            end
            
            currentTime = currentTime + step[2]
        end
        
        statusText.Text = "准备加载..."
        percentText.Text = "100%"
        
        progressBar.Size = UDim2.new(1, 0, 1, 0)
        
        playCompletionAnimation()
        
        wait(1.8)
        
        statusText.Text = "  加载脚本中..."
        
        wait(2.0)
        
        playFadeOutAnimation()
