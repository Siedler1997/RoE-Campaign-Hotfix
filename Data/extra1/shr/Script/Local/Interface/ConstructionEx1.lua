-----------------------------------------------------------------
-- Overwrites
-----------------------------------------------------------------


function GUI_Construction.TestSettlerLimit(_BuildingType)--return true if can construct, false if can't construct because of settlerlimit
    local PlayerID = GUI.GetPlayerID()

    -- check for settlers limit, but not for these buildings:
    if _BuildingType == UpgradeCategories.GrainField_MiddleEurope
    or _BuildingType == UpgradeCategories.GrainField_NorthAfrica
    or _BuildingType == UpgradeCategories.GrainField_NorthEurope
    or _BuildingType == UpgradeCategories.GrainField_SouthEurope
    or _BuildingType == UpgradeCategories.GrainField_Asia
    or _BuildingType == UpgradeCategories.GrainField_DarkEvelance

    or _BuildingType == UpgradeCategories.BeeHive
    or _BuildingType == UpgradeCategories.CattlePasture
    or _BuildingType == UpgradeCategories.SheepPasture

    or _BuildingType == UpgradeCategories.Outpost_MiddleEurope
    or _BuildingType == UpgradeCategories.Outpost_NorthAfrica
    or _BuildingType == UpgradeCategories.Outpost_NorthEurope
    or _BuildingType == UpgradeCategories.Outpost_SouthEurope
    or _BuildingType == UpgradeCategories.Outpost_Asia
    or _BuildingType == UpgradeCategories.Outpost_DarkEvelance

    or _BuildingType == UpgradeCategories.SpecialEdition_Column
    or _BuildingType == UpgradeCategories.SpecialEdition_Pavilion
    or _BuildingType == UpgradeCategories.SpecialEdition_StatueDario
    or _BuildingType == UpgradeCategories.SpecialEdition_StatueFamily
    or _BuildingType == UpgradeCategories.SpecialEdition_StatueProduction
    or _BuildingType == UpgradeCategories.SpecialEdition_StatueSettler

    or _BuildingType == UpgradeCategories.Beautification_Brazier
    or _BuildingType == UpgradeCategories.Beautification_Pillar
    or _BuildingType == UpgradeCategories.Beautification_Shrine
    or _BuildingType == UpgradeCategories.Beautification_StoneBench
    or _BuildingType == UpgradeCategories.Beautification_Sundial
    or _BuildingType == UpgradeCategories.Beautification_Vase
    or _BuildingType == UpgradeCategories.Beautification_TriumphalArch
    or _BuildingType == UpgradeCategories.Beautification_VictoryColumn

    or _BuildingType == UpgradeCategories.Cistern

    then

        return true

    elseif Logic.GetNumberOfEmployedWorkers(PlayerID) >= Logic.GetMaxNumberOfEmployedWorkers(PlayerID) then
        local MessageText = XGUIEng.GetStringTableText("Feedback_TextLines/TextLine_SettlerLimitReached")
        Message(MessageText)
        return false        
    end

    return true

end


function GUI_Construction.RefreshBuildingButtons()
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/BuildingButtons", 1)

    -- categories
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/BuildMenu/Categories", 1)

    -- sub menus
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/Entertainment/Buttons", 1)
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/Security/Buttons", 1)
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/Wealth/Buttons", 1)
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/Cleanliness/Buttons", 1)
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/Clothes/Buttons", 1)
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/Food/Buttons", 1)
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/Gatherer/Buttons", 1)
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/Construction/Buttons", 1)
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/SpecialEdition/Buttons", 1)

    -- beautification objects
    XGUIEng.ShowWidget("/InGame/Root/Normal/AlignBottomRight/BuildMenu/BG", 0)
    XGUIEng.ShowWidget("/InGame/Root/Normal/AlignBottomRight/BuildMenu/BG_SE", 1)
    
    
    XGUIEng.ShowWidget("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/Construction/BG", 0)
    XGUIEng.ShowWidget("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/Construction/BG_EX", 1)
    XGUIEng.ShowWidget("/InGame/Root/Normal/AlignBottomRight/BuildMenu/SubMenus/Construction/Buttons/B_Cistern", 1)
    
    -- production menu
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/HouseMenu/Dialog/City", 1)
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/HouseMenu/Dialog/OuterRim", 1)
    XGUIEng.ShowAllSubWidgets("/InGame/Root/Normal/AlignBottomRight/HouseMenu/Dialog/Special", 1)
end

function GUI_Construction.BuildUpdate(_TechnologyType, _BuildingsMenuBool)

    local CurrentWidgetID = XGUIEng.GetCurrentWidgetID()
    local IsHighLighted = XGUIEng.IsButtonHighLighted(CurrentWidgetID)

    local PlayerID = GUI.GetPlayerID()

    if _TechnologyType == nil then
        _TechnologyType = 0
    end

    -- if no right system: enable widget
    if EnableRights ~= true then
        XGUIEng.DisableButton(CurrentWidgetID, 0)

        if IsHighLighted == 1 then
            XGUIEng.HighLightButton(CurrentWidgetID, 1)
        end

        return
    end

    -- nil, true: ok, false: hide widget
    if Activated[_TechnologyType] == false then
        XGUIEng.ShowWidget(CurrentWidgetID, 0)
        return
    end
    
    -- if technology is locked: hide widget
    if _TechnologyType ~= 0 and Logic.TechnologyGetState(PlayerID, _TechnologyType) == TechnologyStates.Locked then
        if _BuildingsMenuBool ~= true then
            XGUIEng.ShowWidget(CurrentWidgetID, 0)
        else
            XGUIEng.ShowWidget(XGUIEng.GetWidgetsMotherID(CurrentWidgetID), 0)
        end
        return
    end

    -- if technology is researched: enable widget
    local DisableButton = 1
    if _TechnologyType ~= 0 and Logic.TechnologyGetState(PlayerID, _TechnologyType) == TechnologyStates.Researched then
        DisableButton = 0
    end

    XGUIEng.DisableButton(CurrentWidgetID, DisableButton)

    -- this hack is necessary because DisableButton(X, 0) sets a button to normal
    if IsHighLighted == 1 then
        XGUIEng.HighLightButton(CurrentWidgetID, 1)
    end
end


function GUI_Construction.Init()
    Activated = {}

    ActivateSpecial(Technologies.R_SpecialEdition_Column,           true)
    ActivateSpecial(Technologies.R_SpecialEdition_Pavilion,         true)
    ActivateSpecial(Technologies.R_SpecialEdition_StatueDario,      true)
    ActivateSpecial(Technologies.R_SpecialEdition_StatueFamily,     true)
    ActivateSpecial(Technologies.R_SpecialEdition_StatueProduction, true)
    ActivateSpecial(Technologies.R_SpecialEdition_StatueSettler,    true)

    GUI_Construction.RefreshBuildingButtons()
end

function GUI_Construction.HideMissionCDWidgets(_WidgetName)
end

