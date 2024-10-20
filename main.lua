 -- Hash = https://docs.fivem.net/docs/game-references/ped-models/
 -- coords = vector4(X, Y, Z, H) - position X, Y, Z, H
---- and create so many npc  and have fun.
 local GlobalPeds = {
    Ped = {
        {hash = "s_m_m_doctor_01", coords = vector4(-1893.3357, 2051.9250, 140.10, 159.2402)}, --Chasse Interact
        {hash = "csb_ramp_marine", coords = vector4(-1928.8495, 2059.5825, 140, 348.0961)}, --Chasse Vente

    }
}






---dont change this -------
Citizen.CreateThread(function()
    for _,v in pairs(GlobalPeds.Ped) do
        local hash = GetHashKey(v.hash)
        while not HasModelLoaded(hash) do
            RequestModel(hash)
            Wait(20)
        end
        ped = CreatePed("BigEnos", v.hash, v.coords, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        SetEntityInvincible(ped, true)
        FreezeEntityPosition(ped, true)
    end
end)
