-- Blox Fruits Tối Ưu
local L,W,P,RS=game:GetService("Lighting"),workspace,game:GetService("Players"),game:GetService("RunService")
L:SetMinutesAfterMidnight(840)L.Brightness,L.GlobalShadows,L.FogEnd,L.Ambient=0.5,false,500,Color3.new(.5,.5,.5)
settings().Rendering.QualityLevel=1 settings().Rendering.EnableFRM=false settings().Rendering.EnableShadowMap=false
pcall(function()W.Terrain:Clear()end)
local function R(O)for _,v in pairs(O:GetDescendants())do pcall(function()if v:IsA("BasePart")then v.Material=Enum.Material.Plastic v.Reflectance=0 v.CastShadow=false end
if v:IsA("Decal")or v:IsA("Texture")then v:Destroy()end
if v:IsA("ParticleEmitter")or v:IsA("Trail")or v:IsA("Smoke")or v:IsA("Fire")or v:IsA("Sparkles")or v:IsA("Explosion")or v:IsA("Beam")or v:IsA("Glow")or v:IsA("SpotLight")or v:IsA("PointLight")or v:IsA("SurfaceLight")then v.Enabled=false v:Destroy()end
if v:IsA("Sound")or v:IsA("SoundGroup")then v.Playing=false v:Destroy()end
if v.Name:lower():match("bone")or v.Name:lower():match("effect")or v.Name:lower():match("particle")or v.Name:lower():match("aura")or v.Name:lower():match("ability")or v.Name:lower():match("skill")or v.Name:lower():match("move")or v.Name:lower():match("attack")then v:Destroy()end
if v:IsA("Accessory")and(v.Name:lower():match("effect")or v.Name:lower():match("aura"))then v:Destroy()end end)end end
R(W)
for _,p in pairs(P:GetPlayers())do if p.Character then R(p.Character)end end
P.PlayerAdded:Connect(function(p)p.CharacterAdded:Connect(function(c)wait(.3)R(c)end)end)
RS:SetThrottleFps(0.03)print("✅ Tối ưu thành công!")
