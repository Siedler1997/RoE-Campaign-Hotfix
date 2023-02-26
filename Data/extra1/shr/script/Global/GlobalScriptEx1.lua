--------------------------------------------------------------------------
--        ***************** GLOBAL SCRIPT MAIN *****************
--------------------------------------------------------------------------

local OldGameCallback_LoadScriptFiles = GameCallback_LoadScriptFiles

GameCallback_LoadScriptFiles = function() 
    
    OldGameCallback_LoadScriptFiles()        

    Script.Load( "Script\\Shared\\ScriptSystems\\SharedConstantsEx1.lua" )
    
    Script.Load( "Script\\Global\\ScriptSystems\\GlobalQuestSystemEx1.lua" )
    Script.Load( "Script\\Global\\ScriptSystems\\GlobalGameCallBacksEx1.lua" )
    Script.Load( "Script\\Global\\ScriptSystems\\GlobalEndStatisticSystemEx1.lua" )
    
    -- load overwrite functions
    Script.Load("Script\\Global\\OverwriteFunctions.lua" )
    InitGlobalOverwrite()
   
    Script.Load("Script\\Shared\\OverwriteShared.lua" )
    InitSharedOverwrite()



    -- Community Patch Global Overwrite
    Script.Load("Script\\Global\\CPOverwriteFunctions.lua")
    InitGlobalOverwriteCP()
    -- Community Patch Shared Overwrite
    Script.Load("Script\\Shared\\CPOverwriteFunctions.lua")
    InitSharedOverwriteCP()
end

g_PatchIdentifierExtra1 = "mission-pack-master"



