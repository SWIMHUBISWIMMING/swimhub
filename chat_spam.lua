return (function(Library, groupbox, sayfunc, maxemojis, maxlen)
    local spams = {
        ["random words"] = {
            ["words"] = {
                [1] = "\83\87\73\77\72\85\66",
                [2] = "\226\151\163\95\226\151\162",
                [3] = "\80\65\83\84\69",
                [4] = "\76\69\65\75",
                [5] = "\83\67\82\73\80\84",
                [6] = "\66\69\83\84",
                [7] = "\79\78\32\84\79\80",
                [8] = "\35\49",
                [9] = "\50\48\50\52",
                [10] = "\78\79\32\86\73\82\85\83",
                [11] = "\82\69\65\76",
                [12] = "\70\65\75\69",
                [13] = "\50\48\50\51",
                [14] = "\70\76\89",
                [15] = "\78\79\67\76\73\80",
                [16] = "\83\73\76\69\78\84\32\65\73\77",
                [17] = "\65\84\86\32\70\76\89",
                [18] = "\65\73\77\66\79\84",
            },
            ["mode"] = 2,
        },
        ["emojis"] = {
            ["words"] = {
                [1] = "\240\159\152\128",
                [2] = "\240\159\152\188",
                [3] = "\240\159\164\145",
                [4] = "\240\159\152\142",
            },
            ["mode"] = 1,
        },
        ["swimhub safe"] = {
            ["words"] = {
                [1] = "\83\87\73\77\72\85\66\32\68\79\78\39\84\32\78\69\69\68\32\85\80\68\65\84\69",
                [2] = "\83\87\73\77\72\85\66\32\68\79\78\39\84\32\78\69\69\68\32\76\85\65\82\77\79\82",
                [3] = "\83\87\73\77\72\85\66\32\62\32\65\76\76",
                [4] = "\83\87\73\77\72\85\66\32\79\76\68\32\62\32\65\76\76",
                [5] = "\83\87\73\77\72\85\66\32\68\69\86\32\84\73\77\69\58\32\49\32\72\79\85\82\32\65\32\68\65\89",
                [6] = "\83\87\73\77\72\85\66\32\83\75\73\68\32\80\69\82\67\69\78\84\65\71\69\58\32\49\37",
                [7] = "\83\87\73\77\72\85\66\32\80\82\73\67\69\58\32\51\36\32\77\79\78\84\72",
                [8] = "\83\87\73\77\72\85\66\32\85\78\68\69\84\69\67\84\69\68\58\32\89\69\83",
            },
            ["mode"] = 0,
        },
        ["swimhub skeet"] = {
            ["words"] = {
                [1] = "\83\87\73\77\72\85\66\32\68\79\78\39\84\32\78\69\69\68\32\85\80\68\65\84\69\32\226\151\163\95\226\151\162",
                [2] = "\83\87\73\77\72\85\66\32\68\79\78\39\84\32\78\69\69\68\32\76\85\65\82\77\79\82\32\226\151\163\95\226\151\162",
                [3] = "\83\87\73\77\72\85\66\32\62\32\65\76\76\32\226\151\163\95\226\151\162",
                [4] = "\83\87\73\77\72\85\66\32\79\76\68\32\62\32\65\76\76\32\226\151\163\95\226\151\162",
                [5] = "\83\87\73\77\72\85\66\32\68\69\86\32\84\73\77\69\58\32\49\32\72\79\85\82\32\65\32\68\65\89\32\226\151\163\95\226\151\162",
                [6] = "\83\87\73\77\72\85\66\32\83\75\73\68\32\80\69\82\67\69\78\84\65\71\69\58\32\49\37\32\226\151\163\95\226\151\162",
                [7] = "\83\87\73\77\72\85\66\32\80\82\73\67\69\58\32\51\36\32\77\79\78\84\72\32\226\151\163\95\226\151\162",
                [8] = "\83\87\73\77\72\85\66\32\85\78\68\69\84\69\67\84\69\68\58\32\89\69\83\32\226\151\163\95\226\151\162",
            },
            ["mode"] = 0,
        },
        ["hvh nns"] = {
            ["words"] = {
                [1] = "\110\105\99\101\32\112\97\115\116\101",
                [2] = "\103\111\111\100\32\100\101\97\116\104",
                [3] = "\97\109\97\122\105\110\103\32\107\100",
                [4] = "\105\110\115\97\110\101\32\99\102\103",
                [5] = "\115\105\99\107\32\115\99\114\105\112\116",
                [6] = "\112\108\122\32\103\105\118\101\32\112\97\115\116\101",
                [7] = "\114\101\102\117\110\100\32\116\104\97\116\32\112\97\115\116\101\32\97\110\100\32\103\101\116\32\115\119\105\109\104\117\98",
                [8] = "\119\104\101\114\101\32\105\115\32\121\111\117\114\32\98\114\97\105\110\63",
            },
            ["mode"] = 1,
        },
        ["LE LE LE MAMY EBAL"] = {
            ["words"] = {
                [1] = "\108\101\32\108\101\32\108\101\32\208\149\208\145\208\163\32\208\146\208\149\208\161\208\172\32\208\161\208\149\208\160\208\146\208\149\208\160\32\208\161\208\146\208\152\208\156\208\165\208\144\208\145\208\158\208\156",
                [2] = "\108\101\32\108\101\32\108\101\32\103\103\47\32\111\99\116\111\104\111\111\107",
                [3] = "\108\101\32\108\101\32\108\101\32\208\158\208\167\208\149\208\157\208\172\32\208\154\208\160\208\163\208\162\208\158\208\153\32\208\161\208\154\208\160\208\152\208\159\208\162\58\32\208\161\208\146\208\152\208\156\208\165\208\144\208\145\33\32\208\149\208\145\208\129\208\162\32\208\146\208\161\208\129\32\208\152\32\208\146\208\161\208\175",
                [4] = "\108\101\32\108\101\32\108\101\32\208\162\208\146\208\158\208\175\32\208\156\208\144\208\156\208\144\32\208\158\208\167\208\149\208\157\208\172\32\208\154\208\160\208\144\208\161\208\152\208\146\208\144\208\175",
                [5] = "\108\101\32\108\101\32\108\101\32\208\147\208\148\208\149\32\208\162\208\146\208\158\208\153\32\208\156\208\158\208\151\208\147\32\208\163\208\129\208\145\208\152\208\169\208\149\63",
                [6] = "\108\101\32\108\101\32\108\101\32\208\176\32\209\131\32\208\178\208\176\209\129\32\208\191\208\190\209\133\208\190\208\180\209\131\32\209\131\208\188\208\184\209\128\208\176\209\130\209\140\32\209\141\209\130\208\190\32\209\129\208\181\208\188\208\181\208\185\208\189\208\190\208\181\41",
                [7] = "\108\101\32\108\101\32\108\101\32\208\189\208\176\209\133\209\131\209\143\32\208\191\208\184\208\180\208\190\209\128\208\176\209\129\208\176\32\209\131\208\177\208\184\208\187\63",
                [8] = "\108\101\32\108\101\32\108\101\32\209\135\208\176\208\190\32\208\191\208\181\209\128\209\129\208\184\208\186\32\208\180\208\190\208\183\209\128\208\181\208\178\208\176\208\185",
                [9] = "\108\101\32\108\101\32\108\101\32\209\131\208\178\208\176\208\182\208\176\208\181\208\188\209\139\208\185\32\208\178\32\209\130\209\142\209\128\209\140\208\188\208\181\32\208\178\209\139\32\208\177\209\131\208\180\208\181\209\130\208\181\32\208\178\208\190\208\180\208\190\208\187\208\176\208\183\208\190\208\188",
                [10] = "\108\101\32\108\101\32\108\101\32\208\179\208\190\208\178\208\190\209\128\208\184\32\208\177\209\131\208\180\209\131\32\208\191\208\187\208\190\209\133\208\190\32\208\179\208\190\208\178\208\190\209\128\208\184\209\130\209\140\32\208\177\209\131\208\180\209\131\32\209\129\208\190\209\129\208\176\209\130\209\140\44\32\208\177\209\131\208\180\209\131\32\208\191\208\181\209\128\208\181\209\129\208\176\209\129\209\139\208\178\208\176\209\130\209\140",
                [11] = "\108\101\32\108\101\32\108\101\32\208\180\208\190\208\187\208\177\208\176\208\181\208\177\32\208\184\208\180\208\184\32\208\177\208\176\209\136\208\188\208\176\209\135\208\186\208\184\32\208\178\32\209\129\209\131\208\189\208\180\209\131\209\135\208\190\208\186\32\209\136\208\186\208\190\208\187\209\140\208\189\209\139\208\185\32\209\129\208\190\208\177\208\184\209\128\208\176\208\185",
                [12] = "\108\101\32\108\101\32\108\101\32\208\177\208\190\209\130\208\184\208\189\208\190\208\186\32\208\181\208\177\208\176\208\189\209\139\208\185\32\209\135\208\190\32\209\129\208\187\208\181\209\130\208\181\208\187",
                [13] = "\108\101\32\108\101\32\108\101\32\208\177\209\128\208\176\209\130\208\184\208\186\32\208\188\208\176\208\188\208\181\32\208\191\209\128\208\184\208\178\208\181\209\130\32\208\191\208\181\209\128\208\181\208\180\208\176\208\185",
                [14] = "\108\101\32\108\101\32\108\101\32\208\189\208\181\32\208\191\209\128\208\190\209\130\208\184\208\178\208\189\208\184\208\186",
                [15] = "\108\101\32\108\101\32\108\101\32\208\176\32\209\130\209\139\32\209\135\208\181\32\208\186\208\187\208\190\209\131\208\189\63\63\63",
                [16] = "\108\101\32\108\101\32\108\101\32\209\143\32\208\190\208\177\208\190\209\129\209\129\208\176\208\187\32\209\130\208\181\208\177\209\143\32\40",
                [17] = "\108\101\32\108\101\32\108\101\32\209\130\209\139\32\209\135\208\181\32\209\130\208\176\208\188\32\208\190\209\130\208\187\208\181\209\130\208\181\208\187\32\209\130\208\190\63",
                [18] = "\108\101\32\108\101\32\108\101\32\208\180\208\190\32\209\129\208\178\209\143\208\183\208\184\32\208\177\208\176\209\136\208\188\208\176\208\186",
                [19] = "\108\101\32\108\101\32\108\101\32\208\189\208\184\209\137\208\181\209\130\208\176\32\208\179\208\187\209\131\208\191\208\181\208\185\209\136\208\176\209\143\32\208\184\208\179\209\128\208\176\209\130\209\140\32\209\131\209\135\208\184\209\129\209\140",
                [20] = "\108\101\32\108\101\32\108\101\32\208\190\208\191\209\131\209\137\208\181\208\189\32\209\129\209\139\208\189\32\209\130\208\178\208\176\209\128\208\184",
                [21] = "\108\101\32\108\101\32\108\101\32\208\189\208\184\209\137\208\184\208\185\32\209\131\208\187\208\181\209\130\208\181\208\187",
                [22] = "\108\101\32\108\101\32\108\101\32\209\129\209\128\208\176\208\183\209\131\32\208\178\208\184\208\180\208\189\208\190\32\209\129\208\186\209\128\208\184\208\191\209\130\32\208\184\209\129\209\129\209\131\208\181\32\208\188\208\177\32\209\129\208\186\209\128\208\184\208\191\209\130\32\209\131\32\115\119\105\109\104\117\98\32\208\191\209\128\208\184\208\186\209\131\208\191\208\184\209\136\209\140\32\63",
                [23] = "\108\101\32\108\101\32\108\101\32\208\182\208\184\208\178\208\190\209\130\208\189\208\190\208\181\32\208\176\208\180\208\180\208\190\208\189\32\209\129\208\186\208\176\209\135\208\176\208\185\32\208\176\32\209\130\208\190\32\208\191\208\176\208\180\208\176\208\181\209\136\209\140",
                [24] = "\108\101\32\108\101\32\108\101\32\208\190\209\130\209\130\208\176\209\128\208\176\208\177\208\176\208\189\208\181\208\189\32\208\176\209\128\208\188\209\143\208\189\209\129\208\186\208\176\209\143\32\208\186\208\190\209\128\208\190\208\187\208\181\208\178\208\176",
                [25] = "\108\101\32\108\101\32\108\101\32\209\129\209\131\208\186\208\176\32\208\189\208\181\32\208\191\208\190\208\183\208\190\209\128\209\140\209\129\209\143\32\208\184\32\208\187\208\184\208\178\208\189\208\184",
                [26] = "\108\101\32\108\101\32\108\101\32\209\131\208\187\208\181\209\130\208\181\208\187\32\209\130\208\176\208\191\208\190\209\135\208\181\208\186\32\208\181\208\177\208\176\208\189\209\139\208\185",
                [27] = "\108\101\32\108\101\32\108\101\32\208\181\208\180\208\184\208\189\208\184\209\134\208\181\208\185\32\209\129\208\178\208\176\208\187\208\184\208\187\209\129\209\143\32\209\132\209\131\209\132\208\187\209\139\208\182\208\189\208\184\208\186",
                [28] = "\108\101\32\108\101\32\108\101\32\208\183\208\176\209\135\208\181\208\188\32\209\130\209\139\32\208\184\208\179\209\128\208\176\208\181\209\136\209\140\32\209\130\209\131\209\130\32\208\177\208\181\208\183\208\188\208\190\208\183\208\179\208\187\209\139\208\185",
                [29] = "\108\101\32\108\101\32\108\101\32\208\184\208\180\208\184\32\208\186\209\131\208\188\209\139\209\129\208\176\32\208\191\208\190\208\191\208\181\208\185\32\208\190\209\135\208\181\209\128\208\181\208\180\208\189\209\143\209\128\208\176",
                [30] = "\108\101\32\108\101\32\108\101\32\208\190\209\130\208\186\208\184\209\129\208\176\208\185\32\209\129\208\190\208\187\209\143\209\128\208\189\208\184\208\186",
                [31] = "\108\101\32\108\101\32\108\101\32\208\189\208\176\32\208\188\209\139\208\187\208\190\32\208\184\32\208\178\208\181\209\128\208\181\208\178\208\186\209\131\32\209\130\208\190\32\208\180\208\181\208\189\209\140\208\179\208\184\32\208\181\209\129\209\130\209\140\63\63\63\63",
                [32] = "\108\101\32\108\101\32\108\101\32\209\129\208\178\208\181\208\182\208\184\208\185\32\208\186\208\176\208\177\208\176\208\189\209\135\208\184\208\186",
                [33] = "\108\101\32\108\101\32\108\101\32\208\180\208\190\32\209\129\208\178\209\143\208\183\208\184\32\208\189\208\176\32\208\191\208\190\208\180\209\129\208\186\208\190\208\186\208\181\32\208\186\208\176\208\177\208\176\208\189\209\135\208\184\208\186",
                [34] = "\108\101\32\108\101\32\108\101\32\209\129\208\186\208\176\208\182\208\184\32\208\188\208\176\208\188\208\181\32\209\129\209\131\209\133\208\176\209\128\208\184\208\186\208\184\32\208\186\209\131\208\191\208\184\209\130\209\140\32\208\180\208\190\208\187\208\177\208\176\208\181\208\177",
                [35] = "\108\101\32\108\101\32\108\101\32\208\181\208\177\208\176\209\130\209\140\32\209\130\209\139\32\208\186\209\128\208\176\209\129\208\184\208\178\208\190\32\208\189\208\176\32\208\177\209\131\209\130\209\139\208\187\208\186\209\131\32\208\191\209\128\208\184\209\129\208\181\208\187\32\44\32\209\130\208\181\208\177\208\181\32\208\180\208\176\209\130\209\140\32\208\176\208\187\209\140\209\130\32\63",   
                [36] = "\108\101\32\108\101\32\108\101\32\208\191\209\128\208\190\209\129\209\130\208\184\32\209\135\209\130\208\190\32\208\177\208\181\208\183\32\209\129\208\188\208\176\208\183\208\186\208\184\41",            [37] = "\108\101\32\108\101\32\108\101\32\208\176\208\187\208\187\208\190\32\209\141\209\130\208\190\32\209\129\208\186\208\190\209\128\208\176\209\143\63\32\209\130\209\131\209\130\32\209\130\208\176\208\186\208\176\209\143\32\209\129\208\184\209\130\209\131\208\176\209\134\208\184\209\143\32\208\191\208\176\209\128\208\189\209\142\32\208\186\208\190\209\130\208\190\209\128\209\139\208\185\32\209\131\208\191\208\176\208\187\32\208\189\209\131\208\182\208\189\208\176\32\209\129\208\186\208\190\209\128\208\176\209\143\41",
                [38] = "\108\101\32\108\101\32\108\101\32\208\176\208\187\208\190\32\209\130\209\139\32\208\188\208\176\208\191\209\131\32\208\187\209\131\208\183\208\176\208\181\209\136\209\140\32\208\180\209\131\209\128\208\176\32\208\190\209\135\208\189\208\184\209\129\209\140",
                [39] = "\108\101\32\108\101\32\108\101\32\209\130\209\143\208\182\208\181\208\187\208\190\32\209\129\32\209\132\209\128\208\176\208\179\208\190\208\188\63\63\63\63",
                [40] = "\108\101\32\108\101\32\108\101\32\208\149\208\145\208\163\208\167\208\149\208\161\208\162\208\172\32\208\146\208\162\208\158\208\160\208\158\208\147\208\158\32\208\160\208\144\208\151\208\160\208\175\208\148\208\144\32\208\146\208\171\208\148\208\146\208\152\208\150\208\149\208\157\208\149\208\166\32\208\158\208\162\208\154\208\152\208\161",
                [41] = "\108\101\32\108\101\32\108\101\32\208\176\208\187\208\181\32\208\176\32\208\191\209\128\208\190\209\130\208\184\208\178\208\189\208\184\208\186\208\184\32\209\130\208\190\32\208\179\208\180\208\181\63\63\63",
                [42] = "\108\101\32\108\101\32\108\101\32\209\130\209\139\32\208\191\208\190\32\208\187\208\181\208\179\208\184\209\130\209\131\32\208\184\208\179\209\128\208\176\208\181\209\136\209\140\32\63",     
                [43] = "\108\101\32\108\101\32\108\101\32\208\165\208\163\208\149\208\159\208\160\208\171\208\147\208\144\208\155\208\158\32\208\162\208\163\208\161\208\158\208\146\208\158\208\167\208\157\208\158\208\149\32\208\154\208\163\208\148\208\144\32\208\159\208\158\208\155\208\149\208\162\208\149\208\155\208\158",
                [44] = "\108\101\32\108\101\32\108\101\32\209\130\209\139\32\208\186\209\131\208\180\208\176\32\208\182\208\181\209\128\209\130\208\178\208\176\32\208\186\208\190\208\183\209\140\208\181\208\179\208\190\32\208\176\208\177\208\190\209\128\209\130\208\176",
                [45] = "\108\101\32\108\101\32\108\101\32\105\113\63",
                [46] = "\108\101\32\108\101\32\108\101\32\98\114\97\105\110\63",
            },
            ["mode"] = 0,
        },
    }
    local enabled, spamtype, speed = false, "swimhub skeet", 3
    groupbox:AddToggle('newchatspam_enabled', {Text = 'new chat spam',Default = false,Callback = function(first)
        enabled = first
    end})
    groupbox:AddDropdown('newchatspam_type', {Values = {
        "swimhub skeet", "emojis", "random words",
        "LE LE LE MAMY EBAL", "hvh nns", "swimhub safe"
    },Default = 1,Multi = false,Text = 'chat spam type',Callback = function(Value)
        spamtype = Value
    end})
    groupbox:AddSlider('newchatspam_multiplier', { Text = 'spam speed', Default = 3, Min = 1, Max = 5, Rounding = 1, Suffix = "s", Compact = false, Callback = function(first)
        speed = first
    end})
    local pos = 0
    local function genrandom(_table)
        local currstring = ""
        while currstring:len() <= maxlen do
            currstring = currstring.._table[math.random(#_table)].." "
        end
        return currstring
    end
    local function genemjois(_table)
        local currstring = ""
        local emoji = _table
        while currstring:len() / 4 --[[\240\159\152\128, four bytes]] <= maxemojis do
            currstring = currstring..emoji
        end
        return currstring
    end
    task.spawn(function()
        while wait(speed) do if enabled and spams[spamtype] then
            local spammode = spams[spamtype].mode
            local spamwords = spams[spamtype].words
            local generated = false
            if spammode == 0 or spammode == 1 then
                pos = (
                    spamwords[pos] and #spamwords[pos] <= (pos + 1) and pos + 1 or 1
                ) or 1 -- fail safely
                sayfunc(spammode == 1 and genemjois(spamwords[pos]) or spamwords[pos])
                generated = true
            end
            if spammode == 2 then
                sayfunc(genrandom(spamwords))
                generated = true
            end
            if not generated then print("hmmm...") end
        elseif not spams[spamtype] then
            print('wtf', spamtype)
        end end
    end)
end)(...)
