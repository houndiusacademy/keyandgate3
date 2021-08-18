local function MakeAntler(name, anim, contestkey)
    local assets = { Asset("ANIM", "anim/quagmire_key.zip") } 

    local function fn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddNetwork()

        MakeInventoryPhysics(inst)

        inst.AnimState:SetBank("quagmire_key")
        inst.AnimState:SetBuild("quagmire_key")
        inst.AnimState:PlayAnimation(anim)

        inst:AddTag("klaussackkey")

        inst:SetPrefabNameOverride(anim == "safe_key" and "quagmire_key" or "quagmire_key_park")

        inst.entity:SetPristine()

        if not TheWorld.ismastersim then
            return inst
        end

        inst:AddComponent("inspectable")
		
        inst:AddComponent("inventoryitem")
		inst.components.inventoryitem.imagename = anim == "safe_key" and "quagmire_key" or "quagmire_key_park"

        inst:AddComponent("klaussackkey")
		inst.components.klaussackkey.keytype = anim

        MakeHauntableLaunch(inst)

        return inst
    end

    return Prefab(contestkey and name.."_key_contest" or name.."_key", fn, assets)
end

return MakeAntler("golden", "safe_key", true),
        MakeAntler("golden", "safe_key"),
        MakeAntler("blue", "park_key", true),
		MakeAntler("blue", "park_key")