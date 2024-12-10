local function OnWorldSound2(x, y, z, radius, volume, source)
    if source ~= nil then
        print(source)
        if source ~= nil then
            print(source:getObjectName())
            if instanceof(source, "IsoGameCharacter") then
                --source:addLineChatElement("Te-Tue-Te-Tue")
            end
            if source:getObjectName() == "Vehicle" then
                -- print("getFactoryVehicle: ", source:getFactoryVehicle())
                -- print("getFactoryVehicle type: ", type(source:getFactoryVehicle()))
                -- noise('no such part '..tostring(args.part))
                -- print("print source: ", source)
                -- print(type(source))
                -- if instanceof(source, "IsoMovingObject") then
                    -- print("ja es ist ein IsoMovingObject")
                -- end
                if instanceof(source, "BaseVehicle") then
                    -- print("x: ", x)
                    -- getTextManager():DrawStringCentre(UIFont.Large, 500, 500, "Te-Tue-Te-tue", 0, 0, 0, 1)
                    --getTextManager().font.drawString(400, 400, "Te-Tue-Te-tue")
                    --print("Lautstärke: ", volume)
                    --print("Radius: ", radius)
                    --print("Sirene", source:getLightbarSirenMode())
                    --if source:getLightbarSirenMode() ~= "siren0" then
                    --    print("die verkackte Sirene ist an!!!!")
                    --end
                end
            end
        end
    end
end

local function OnAmbientSound(name, x, y)
	print("OnWorldSound sound variable x: ", name)
end

-- Events.OnWorldSound.Add(OnWorldSound)
Events.OnAmbientSound.Add(OnAmbientSound)