local RedeemCode = game:GetService("ReplicatedStorage").Interactions.Server.RedeemCode
local RenderStepped = game:GetService("RunService").RenderStepped
local Codes = {"H4LL0WS","PURP3L","Y3LL0W","LUG3R","3Y3B4LL","R41N","SCYTH3","FR4NK","B4N4N4","S3N","PDJ","P00L","S1L","TURK3Y","V3NT3D","TH0R"}

function Redeem()
   for i=1,#Codes do
       RenderStepped:Connect(function()
           RedeemCode:InvokeServer(Codes[i])
       end)
   end
end

RenderStepped:Connect(function()
   Redeem()
end)
