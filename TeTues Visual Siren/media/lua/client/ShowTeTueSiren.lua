ShowTeTueSiren = ISUIElement:derive("ShowTeTueSiren")

function ShowTeTueSiren:initialize()
    ISUIElement.initialise(self);
end

function ShowTeTueSiren:new(x, y, z, radius, volume, source)
    local o = {};
    o = ISUIElement:new(x, y, 1, 1);
    setmetatable(o, self);
    self.__index = self;
    
    o.x = 600
    o.y = 300
    o.text = "Te-Tue-Te-tue"
    o.font = UIFont.Medium
    o.r = 1
    o.g = 1
    o.b = 1
    o.a = 0.7
    
    return o
end

function ShowTeTueSiren:prerender()
    --self:DrawTextCentre(UIFont.Large, "Te-Tue-Te-tue",self.x, self.y, 255, 0, 0, 1);
    self:drawText(self.text, 0, 0, self.r, self.g, self.b, self.a, self.font);
end

local function OnWorldSound(x, y, z, radius, volume, source)
    if source ~= nil then
        if source:getObjectName() == "Vehicle" then
            if instanceof(source, "BaseVehicle") then
                print("Hier muss was passieren")
                local newWeb = ShowTeTueSiren:new(x, y, z, radius, volume, source)
                newWeb:initialize();
                newWeb:instantiate();
                newWeb:addToUIManager();
             end
        end
    end
end

Events.OnWorldSound.Add(OnWorldSound)