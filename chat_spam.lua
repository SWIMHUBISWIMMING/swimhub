return (function(Library, groupbox, sayfunc, maxemojis, maxlen)
    local spams = {
        ["swimhub skeet"] = {
            [1] = "\83\87\73\77\72\85\66\32\68\79\78\39\84\32\78\69\69\68\32\85\80\68\65\84\69\32\40\226\151\163\95\226\151\162\41",
            [2] = "\83\87\73\77\72\85\66\32\68\79\78\39\84\32\78\69\69\68\32\76\85\65\82\77\79\82\32\40\226\151\163\95\226\151\162\41",
            [3] = "\83\87\73\77\72\85\66\32\62\32\65\76\76\32\40\226\151\163\95\226\151\162\41",
            [4] = "\83\87\73\77\72\85\66\32\79\76\68\32\62\32\65\76\76\32\40\226\151\163\95\226\151\162\41",
            [5] = "\83\87\73\77\72\85\66\32\68\69\86\32\84\73\77\69\58\32\49\32\72\79\85\82\32\65\32\68\65\89\32\40\226\151\163\95\226\151\162\41",
            [6] = "\83\87\73\77\72\85\66\32\83\75\73\68\32\80\69\82\67\69\78\84\65\71\69\58\32\49\37\32\40\226\151\163\95\226\151\162\41",
            [7] = "\83\87\73\77\72\85\66\32\80\82\73\67\69\58\32\51\36\32\77\79\78\84\72\32\40\226\151\163\95\226\151\162\41",
            [8] = "\83\87\73\77\72\85\66\32\85\78\68\69\84\69\67\84\69\68\58\32\89\69\83\32\40\226\151\163\95\226\151\162\41",
            [9] = "\83\87\73\77\72\85\66\32\85\78\68\69\84\69\67\84\69\68\58\32\89\69\83\32\40\226\151\163\95\226\151\162\41",
        },
        ["emojis"] = {
            [1] = "\240\159\152\128",
            [2] = "\240\159\152\188",
            [3] = "\240\159\152\173",
            [4] = "\240\159\152\161",
            [5] = "\240\159\164\150",
            [6] = "\240\159\152\142",
        },
        ["random words"] = {
            [1] = "\83\87\73\77\72\85\66",
            [2] = "\40\226\151\163\95\226\151\162\41",
            [3] = "\80\65\83\84\69",
            [4] = "\76\69\65\75",
            [5] = "\83\67\82\73\80\84",
            [6] = "\66\69\83\84",
            [7] = "\79\78\32\84\79\80",
            [8] = "\35\49",
            [9] = "\68\79\87\78\76\79\65\68",
            [10] = "\50\48\50\52",
            [11] = "\78\79\32\86\73\82\85\83",
            [12] = "\82\69\65\76",
            [13] = "\70\65\75\69",
            [14] = "\50\48\50\51",
            [15] = "\70\76\89",
            [16] = "\78\79\67\76\73\80",
            [17] = "\75\73\76\76\65\85\82\65",
            [18] = "\83\73\76\69\78\84\32\65\73\77",
            [19] = "\65\73\77\66\79\84",
        }
    }
    local enabled, spamtype, speed = false, "swimhub skeet", 3
    groupbox:AddToggle('newchatspam_enabled', {Text = 'new chat spam',Default = false,Callback = function(first)
        enabled = first
    end})
    groupbox:AddDropdown('newchatspam_type', {Values = {"swimhub skeet", "emojis", "random words"},Default = 1,Multi = false,Text = 'chat spam type',Callback = function(Value)
        spamtype = Value
    end})
    groupbox:AddSlider('newchatspam_multiplier', { Text = 'spam speed', Default = 3, Min = 1, Max = 5, Rounding = 1, Suffix = "s", Compact = false, Callback = function(first)
        speed = first
    end})
    local pos = 0
    local function genrandom()
        local currstring = ""
        local tbl = spams["random words"]
        while currstring:len() <= maxlen do
            currstring = currstring..tbl[math.random(#tbl)].." "
        end
        return currstring
    end
    local function genemjois()
        local currstring = ""
        local emoji = spams["emojis"][pos]
        while currstring:len() / 4 --[[\240\159\152\128, four bytes]] <= maxemojis do
            currstring = currstring..emoji
        end
        return currstring
    end
    task.spawn(function()
        while wait(speed) do if enabled then
            pos = spamtype ~= "random words" and (spams[spamtype][pos] and #spams[spamtype][pos] <= pos + 1 and 1 or pos + 1) or pos
            sayfunc(spamtype == "random words" and genrandom() or spamtype == "emojis" and genemjois() or spams[spamtype][pos])
        end end
    end)
end)(...)
