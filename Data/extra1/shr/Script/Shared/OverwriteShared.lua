
function InitSharedOverwrite()
-- be careful, this table must have the same order like the "CustomGame.KnightTypes"-table *really ugly*
    MPDefaultKnightNames = {"U_KnightSaraya",
    "U_KnightTrading",
    "U_KnightChivalry",
    "U_KnightWisdom",
    "U_KnightHealing",
    "U_KnightPlunder",
    "U_KnightSong",
    "U_KnightSabatta",
    "U_KnightRedPrince",
    "U_KnightPraphat",
    "U_KnightKhana" }

    
    -- InitKnightTitleTables
    do
        local OldInitKnightTitleTables = InitKnightTitleTables
        
        InitKnightTitleTables = function()
       
            local SavedFunction = CreateTechnologyKnightTitleTable
            
            CreateTechnologyKnightTitleTable = function() end
        
            OldInitKnightTitleTables()
            
            CreateTechnologyKnightTitleTable = SavedFunction
            
            SavedFunction = nil
            
            local TechnologiesTableIndex = 4
            
            -- Cistern
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Mayor][TechnologiesTableIndex],
                Technologies.R_Cistern)

            -- Spearmen
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Mayor][TechnologiesTableIndex],
                Technologies.R_SpearMaker)
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Mayor][TechnologiesTableIndex],
                Technologies.R_BarracksSpearmen)
                
            -- Embellishments Marquees
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Marquees][TechnologiesTableIndex],
                Technologies.R_Beautification_Brazier)
            
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Marquees][TechnologiesTableIndex],
                Technologies.R_Beautification_Pillar)
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Marquees][TechnologiesTableIndex],
                Technologies.R_Beautification_Shrine)
                
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Marquees][TechnologiesTableIndex],
                Technologies.R_BarracksCavalry)
                
            -- Embellishments Duke
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Duke][TechnologiesTableIndex],
                Technologies.R_Beautification_StoneBench)
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Duke][TechnologiesTableIndex],
                Technologies.R_Beautification_Sundial)
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Duke][TechnologiesTableIndex],
                Technologies.R_Beautification_Vase)
                
                
             -- Embellishments Archduke
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Archduke][TechnologiesTableIndex],
                Technologies.R_Beautification_TriumphalArch)
                
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Archduke][TechnologiesTableIndex],
                Technologies.R_Beautification_VictoryColumn)
                
            table.insert(
                NeedsAndRightsByKnightTitle[KnightTitles.Archduke][TechnologiesTableIndex],
                Technologies.R_Cannon)
                
                
             CreateTechnologyKnightTitleTable()
            
        end
        
    end
end

function GetPlayerCategoryType(_PlayerID)

    local PlayerCategory

    local CastleID = Logic.GetHeadquarters(_PlayerID)

    if CastleID ~= 0 then

        PlayerCategory = PlayerCategories.City

    else

        local StoreHouseID = Logic.GetStoreHouse(_PlayerID)

        if StoreHouseID ~= 0 then

            if Logic.GetEntityType(StoreHouseID) == Entities.B_NPC_Cloister_ME
            or Logic.GetEntityType(StoreHouseID) == Entities.B_NPC_Cloister_SE
            or Logic.GetEntityType(StoreHouseID) == Entities.B_NPC_Cloister_NA
            or Logic.GetEntityType(StoreHouseID) == Entities.B_NPC_Cloister_NE
            or Logic.GetEntityType(StoreHouseID) == Entities.B_NPC_Cloister_AS
            then

                PlayerCategory = PlayerCategories.Cloister

            elseif Logic.GetEntityType(StoreHouseID) == Entities.B_NPC_ShipsStorehouse then

                PlayerCategory = PlayerCategories.Harbour

            elseif Logic.IsEntityInCategory(StoreHouseID, EntityCategories.VillageStorehouse) == 1 then

                PlayerCategory = PlayerCategories.Village

            else

                PlayerCategory = PlayerCategories.BanditsCamp

            end
        end

    end

    return PlayerCategory

end

function GetEntityTypeForClimatezone(_EntityTypeBaseString)

    local MapName = Framework.GetCurrentMapName()
    local MapType, Campaign = Framework.GetCurrentMapTypeAndCampaignName()
    local ClimateZoneName = Framework.GetMapClimateZone(MapName, MapType, Campaign)
    local Suffix = ""

    if ClimateZoneName == "Generic"
    or ClimateZoneName == "MiddleEurope" then
        Suffix = "_ME"
    elseif ClimateZoneName == "NorthEurope" then
        Suffix = "_NE"
    elseif ClimateZoneName == "SouthEurope" then
        Suffix = "_SE"
    elseif ClimateZoneName == "NorthAfrica" then
        Suffix = "_NA"
    elseif ClimateZoneName == "Asia" then
        Suffix = "_AS"
    elseif ClimateZoneName == "DarkEvelance" then
        Suffix = "_DE"
    end

    local EntityTypeName = _EntityTypeBaseString .. Suffix
    local EntityType = Entities[EntityTypeName]

    if EntityType == nil then
        Logic.DEBUG_AddNote("DEBUG: The upgrade category " .. _EntityTypeBaseString .."does not exist for the climate zone " ..ClimateZoneName)
    end

    return EntityType
end

