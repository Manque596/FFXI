function user_job_setup()

	state.OffenseMode:options('Normal','Acc','FullAcc')
	state.HybridMode:options('Normal','DTLite','Tank')
	state.WeaponskillMode:options('Match','Normal','Acc','FullAcc')
	state.CastingMode:options('Normal','SIRD')
	state.PhysicalDefenseMode:options('PDT_HP','PDT')
	state.MagicalDefenseMode:options('MDT_HP','BDT_HP','MDT','BDT')
	state.ResistDefenseMode:options('MEVA_HP','MEVA','Death','Charm','DTCharm')
	state.IdleMode:options('Normal','Tank','KiteTank','Sphere')
	state.Weapons:options('None','Epeolatry','DualWeapons','GA','Axe')
	
	state.ExtraDefenseMode = M{['description']='Extra Defense Mode','None','MP'}

	gear.enmity_jse_back = {name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}}
	gear.phalanx_hands = {name="Herculean Gloves", augments={'MND+8','Mag. Acc.+1','Phalanx +4','Accuracy+14 Attack+14','Mag. Acc.+8 "Mag.Atk.Bns."+8',}}
	gear.herc_nuke_feet = {name="Herculean Boots", augments={'Accuracy+10','"Triple Atk."+4','Attack+7',}}
	gear.FC_jse_back = {name="Ogma's Cape", augments={'"Fast Cast"+10',}}
	gear.WSD_jse_back = { name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','Weapon skill damage +10%','"Regen"+1',}}
	gear.herc_TAacc_feet = {name="Herculean Boots", augments={'Accuracy+10','"Triple Atk."+4','Attack+7',}}
	gear.herc_acclegs = {name="Herculean Trousers", augments={'Accuracy+21 Attack+21','Weapon skill damage +2%','DEX+4','Accuracy+11',}}
	gear.herc_WSDacc_head = {name="Herculean Helm", augments={'Accuracy+23 Attack+23','Weapon skill damage +3%','DEX+5','Attack+4',}}
	gear.herc_WSDacc_body = {name="Herculean Vest", augments={'Enmity+2','Attack+2','Weapon skill damage +8%','Accuracy+17 Attack+17',}}
	gear.herc_Phalanx_body = {name="Herculean Vest", augments={'AGI+5','Pet: "Mag.Atk.Bns."+25','Phalanx +4','Accuracy+8 Attack+8',}}
	gear.herc_Phalanx_hands = {name="Herculean Gloves", augments={'MND+8','Mag. Acc.+1','Phalanx +4','Accuracy+14 Attack+14','Mag. Acc.+8 "Mag.Atk.Bns."+8',}}
	gear.taeon_Phalanx_legs = {name="Taeon Tights", augments={'Accuracy+15','"Triple Atk."+2','Phalanx +3',}}
	gear.taeon_Phalanx_feet = {name="Taeon Boots", augments={'Accuracy+24','"Dual Wield"+5','Phalanx +3',}}
	gear.TP_jse_back = {name="Ogma's Cape", augments={'DEX+20','DEX+10','"Dbl.Atk."+10',}}
	gear.herc_THfeet = {name="Herculean Boots", augments={'CHR+3','Attack+1','"Treasure Hunter"+2','Mag. Acc.+17 "Mag.Atk.Bns."+17',}}
	gear.herc_MBhands = {name="Herculean Gloves", augments={'"Mag.Atk.Bns."+30','MND+5','Accuracy+4 Attack+4','Mag. Acc.+2 "Mag.Atk.Bns."+2',}}

	-- Additional local binds
	send_command('bind !` gs c SubJobEnmity')
	send_command('bind @` gs c cycle RuneElement')
	send_command('bind ^` gs c RuneElement')
	send_command('bind @pause gs c toggle AutoRuneMode')
	send_command('bind ^delete input /ja "Provoke" <stnpc>')
	send_command('bind !delete input /ma "Cure IV" <stal>')
	send_command('bind @delete input /ma "Flash" <stnpc>')
	send_command('bind ^\\\\ input /ma "Protect IV" <t>')
	send_command('bind @\\\\ input /ma "Shell V" <t>')
	send_command('bind !\\\\ input /ma "Crusade" <me>')
	send_command('bind ^backspace input /ja "Lunge" <t>')
	send_command('bind @backspace input /ja "Gambit" <t>')
	send_command('bind !backspace input /ja "Rayke" <t>')
	send_command('bind @f8 gs c toggle AutoTankMode')
	send_command('bind @f10 gs c toggle TankAutoDefense')
	send_command('bind ^@!` gs c cycle SkillchainMode')
	
	select_default_macro_book()

end

function init_gear_sets()

    sets.Enmity = {main="Epeolatry",sub="Utu Grip",ammo="Sapience Orb",
	     head="Fu. Bandeau +2",neck="Futhark Torque +2",ear1="Friomisi Earring",ear2="Etiolation earring",
	     body="Emet Harness +1",hands="Futhark Mitons +1",ring1="Provocare Ring",ring2="Petrov Ring",
		 back=gear.enmity_jse_back,waist="Goading Belt",legs="Eri. Leg Guards +1",feet="Erilaz greaves +1"}
		 
    sets.Enmity.SIRD = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
		head="Fu. Bandeau +2",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Etiolation earring",
		body="Emet Harness +1",hands="Erilaz gauntlets +1",ring1="Moonlight Ring",ring2="Defending Ring",
		back=gear.enmity_jse_back,waist="Goading Belt",legs="Carmine Cuisses +1",feet="Erilaz Greaves +1"}
		
    sets.Enmity.SIRDT = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Fu. Bandeau +2",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Odnowa Earring +1",
        body="Runeist's Coat +2",hands="Erilaz gauntlets +1",ring1="Moonlight Ring",ring2="Defending Ring",
        back="Evasionist's cape",waist="Goading Belt",legs="Carmine Cuisses +1",feet="Erilaz Greaves +1"}

    sets.Enmity.DT = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Fu. Bandeau +2",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Odnowa Earring +1",
        body="Runeist's Coat +2",hands="Erilaz gauntlets +1",ring1="Provocare Ring",ring2="Defending Ring",
        back="Evasionist's cape",waist="Flume Belt +1",legs="Eri. Leg Guards +1",feet="Erilaz Greaves +1"}
		
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Item sets.

	-- Precast sets to enhance JAs
    sets.precast.JA['Vallation'] = set_combine(sets.Enmity,{body="Runeist's Coat +2",legs="Futhark Trousers +1"})
    sets.precast.JA['Valiance'] = sets.precast.JA['Vallation']
    sets.precast.JA['Pflug'] = set_combine(sets.Enmity,{feet="Runeist's Bottes +1"})
    sets.precast.JA['Battuta'] = set_combine(sets.Enmity,{head="Futhark Bandeau +2"})
    sets.precast.JA['Liement'] = set_combine(sets.Enmity,{body="Futhark Coat +2"})
    sets.precast.JA['Gambit'] = set_combine(sets.Enmity,{hands="Runeist's Mitons +1"})
    sets.precast.JA['Rayke'] = set_combine(sets.Enmity,{feet="Futhark Boots +1"})
    sets.precast.JA['Elemental Sforzo'] = set_combine(sets.Enmity,{body="Futhark Coat +2"})
    sets.precast.JA['Swordplay'] = set_combine(sets.Enmity,{hands="Futhark Mitons +1"})
    sets.precast.JA['Embolden'] = set_combine(sets.Enmity,{})
    sets.precast.JA['One For All'] = set_combine(sets.Enmity,{waist="Gold Mog. Belt"})
    sets.precast.JA['Provoke'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Warcry'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Defender'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Berserk'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Last Resort'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Aggressor'] = set_combine(sets.Enmity, {})
	sets.precast.JA['Animated Flourish'] = set_combine(sets.Enmity, {})

    sets.precast.JA['Vallation'].DT = set_combine(sets.Enmity.DT,{body="Runeist's Coat +2", legs="Futhark Trousers +1"})
    sets.precast.JA['Valiance'].DT = sets.precast.JA['Vallation'].DT
    sets.precast.JA['Pflug'].DT = set_combine(sets.Enmity.DT,{feet="Runeist's Boots +1"})
    sets.precast.JA['Battuta'].DT = set_combine(sets.Enmity.DT,{head="Futhark Bandeau +2"})
    sets.precast.JA['Liement'].DT = set_combine(sets.Enmity.DT,{body="Futhark Coat +2"})
    sets.precast.JA['Gambit'].DT = set_combine(sets.Enmity.DT,{hands="Runeist's Mitons +1"})
    sets.precast.JA['Rayke'].DT = set_combine(sets.Enmity.DT,{feet="Futhark Boots +1"})
    sets.precast.JA['Elemental Sforzo'].DT = set_combine(sets.Enmity.DT,{body="Futhark Coat +2"})
    sets.precast.JA['Swordplay'].DT = set_combine(sets.Enmity.DT,{hands="Futhark Mitons +1"})
    sets.precast.JA['Embolden'].DT = set_combine(sets.Enmity.DT,{})
    sets.precast.JA['One For All'].DT = set_combine(sets.Enmity.DT,{waist="Gold Mog. Belt"})
    sets.precast.JA['Provoke'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Warcry'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Defender'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Berserk'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Last Resort'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Aggressor'].DT = set_combine(sets.Enmity.DT, {})
	sets.precast.JA['Animated Flourish'].DT = set_combine(sets.Enmity.DT, {})

    sets.precast.JA['Lunge'] = {ammo="Seeth. Bomblet +1",
        head="Carmine Mask +1",neck="Eddy Necklace",ear1="Friomisi Earring",ear2="Hecate's earring",
        body="Lapidary tunic",hands=gear.herc_MBhands,ring1="Fenrir Ring",ring2="Shiva Ring +1",
        back="Evasionist's cape",waist="Eschan Stone",legs="Schneddick tights +1",feet=gear.herc_nuke_feet,}

	sets.precast.JA['Swipe'] = sets.precast.JA['Lunge']

	-- Gear for specific elemental nukes.
	sets.element.Dark = {head="Pixie Hairpin +1",ring2="Archon Ring"}

	-- Pulse sets, different stats for different rune modes, stat aligned.
    sets.precast.JA['Vivacious Pulse'] = {head="Erilaz Galea +1",neck="Incanter's Torque",ring1="Stikini Ring +1",ring2="Stikini Ring +1",legs="Rune. Trousers +1"}
    sets.precast.JA['Vivacious Pulse']['Ignis'] = set_combine(sets.precast.JA['Vivacious Pulse'], {})
	sets.precast.JA['Vivacious Pulse']['Gelus'] = set_combine(sets.precast.JA['Vivacious Pulse'], {})
	sets.precast.JA['Vivacious Pulse']['Flabra'] = set_combine(sets.precast.JA['Vivacious Pulse'], {})
	sets.precast.JA['Vivacious Pulse']['Tellus'] = set_combine(sets.precast.JA['Vivacious Pulse'], {})
	sets.precast.JA['Vivacious Pulse']['Sulpor'] = set_combine(sets.precast.JA['Vivacious Pulse'], {})
	sets.precast.JA['Vivacious Pulse']['Unda'] = set_combine(sets.precast.JA['Vivacious Pulse'], {})
	sets.precast.JA['Vivacious Pulse']['Lux'] = set_combine(sets.precast.JA['Vivacious Pulse'], {})
	sets.precast.JA['Vivacious Pulse']['Tenebrae'] = set_combine(sets.precast.JA['Vivacious Pulse'], {})
	
	
    -- Waltz set (chr and vit)
    sets.precast.Waltz = {ammo="Yamarang",
        head="Sukeroku hachimaki",neck="Futhark Torque +2",ear1="Enchntr. Earring +1",ear2="Handler's Earring +1",
        body=gear.herculean_waltz_body,hands=gear.herculean_waltz_hands,ring1="Moonlight Ring",ring2="Defending Ring",
        back="Evasionist's cape",waist="Chaac Belt",legs="Dashing Subligar",feet=gear.herculean_waltz_feet}
        
    -- Don't need any special gear for Healing Waltz.
    sets.precast.Waltz['Healing Waltz'] = {}
	
    sets.precast.Step = {}
		
	sets.precast.JA['Violent Flourish'] = {}
		
	-- Fast cast sets for spells
    sets.precast.FC = {main="Malignance Sword",sub="Chanter's Shield",ammo="Impatiens",
            head="Rune. Bandeau +1",neck="Orunmila's Torque",ear1="Enchntr. Earring +1",ear2="Loquac. Earring",
            body="Futhark coat +2",hands="Leyline Gloves",ring1="Moonlight Ring",ring2="Kishar Ring",
            back=gear.FC_jse_back,waist="Sailfi belt +1",legs="Rawhide Trousers",feet="Turms leggings +1"}
			
	sets.precast.FC.DT = {main="Malignance Sword",sub="Chanter's Shield",ammo="Impatiens",
        head="Rune. Bandeau +1",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Odnowa Earring +1",
        body="Runeist's Coat +2",hands="Leyline Gloves",ring1="Moonlight Ring",ring2="Defending Ring",
        back=gear.FC_jse_back,waist="Sailfi belt +1",legs="Eri. Leg Guards +1",feet="Turms leggings +1"}
		
	sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {head="Carmine Mask +1",waist="Siegel Sash", legs="Futhark Trousers +1"})
    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck='Magoraga Beads'})
	sets.precast.FC.Cure = set_combine(sets.precast.FC, {})

	-- Weaponskill sets
	sets.precast.WS = {ammo="Knobkierrie",
            head=gear.herc_WSDacc_head,neck="Fotia Gorget",ear1="Moonshade Earring",ear2="Ishvara earring",
            body="Adhemar Jacket +1",hands="Meg. Gloves +2",ring1="Niqmaddu Ring",ring2="Epona's Ring",
            back=gear.WSD_jse_back,waist="Fotia Belt",legs="Meg. Chausses +2",feet="Lustratio Leggings +1"}
	sets.precast.WS.Acc = {ammo="Knobkierrie",
            head=gear.herc_WSDacc_head,neck="Fotia Gorget",ear1="Moonshade Earring",ear2="Ishvara earring",
            body="Adhemar Jacket +1",hands="Adhemar wristbands",ring1="Niqmaddu Ring",ring2="Epona's Ring",
            back=gear.WSD_jse_back,waist="Fotia Belt",legs="Lustratio subligar +1",feet="Lustratio Leggings +1"}
	sets.precast.WS.FullAcc = {ammo="C. Palug Stone",
            head=gear.herc_WSDacc_head,neck="Decimus Torque",ear1="Telos Earring",ear2="Zennaroi earring",
            body=gear.herc_WSDacc_body,hands="Adhemar wristbands",ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
            back=gear.WSD_jse_back,waist="Fotia Belt",legs=gear.herc_acclegs,feet=gear.herc_TAacc_feet}

    sets.precast.WS['Resolution'] = set_combine(sets.precast.WS,{head="Adhemar Bonnet +1",body="Adhemar Jacket +1",hands="Adhemar wristbands +1"})
    sets.precast.WS['Resolution'].Acc = set_combine(sets.precast.WS.Acc,{})
    sets.precast.WS['Resolution'].HighAcc = set_combine(sets.precast.WS.HighAcc,{})
	sets.precast.WS['Resolution'].FullAcc = set_combine(sets.precast.WS.FullAcc,{})

    sets.precast.WS['Dimidiation'] = set_combine(sets.precast.WS,{neck="Caro necklace",waist="Grunfeld rope",legs="Lustratio subligar +1",feet="Lustratio Leggings +1"})
    sets.precast.WS['Dimidiation'].Acc = set_combine(sets.precast.WS.Acc,{})
	sets.precast.WS['Dimidiation'].HighAcc = set_combine(sets.precast.WS.HighAcc,{})
	sets.precast.WS['Dimidiation'].FullAcc = set_combine(sets.precast.WS.FullAcc,{})
	
    sets.precast.WS['Ground Strike'] = set_combine(sets.precast.WS,{})
    sets.precast.WS['Ground Strike'].Acc = set_combine(sets.precast.WS.Acc,{})
	sets.precast.WS['Ground Strike'].HighAcc = set_combine(sets.precast.WS.HighAcc,{})
	sets.precast.WS['Ground Strike'].FullAcc = set_combine(sets.precast.WS.FullAcc,{})
		
    sets.precast.WS['Herculean Slash'] = set_combine(sets.precast['Lunge'], {})
	sets.precast.WS['Sanguine Blade'] = set_combine(sets.precast['Lunge'], {})

	--------------------------------------
	-- Midcast sets
	--------------------------------------
	
    sets.midcast.FastRecast = {ammo="Impatiens",
            head="Carmine Mask +1",neck="Orunmila's Torque",ear1="Enchntr. Earring +1",ear2="Loquac. Earring",
            body="Dread Jupon",hands="Leyline Gloves",ring1="Lebeche Ring",ring2="Kishar Ring",
            back=gear.FC_jse_back,waist="Flume Belt +1",legs="Eri. Leg Guards +1",feet="Erilaz Greaves +1"}
			
	sets.midcast.FastRecast.DT = {ammo="Staunch Tathlum +1",
        head="Fu. Bandeau +2",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Odnowa Earring +1",
        body="Runeist's Coat +2",hands=gear.herculean_dt_hands,ring1="Moonlight Ring",ring2="Defending Ring",
        back=gear.FC_jse_back,waist="Flume Belt +1",legs="Eri. Leg Guards +1",feet="Erilaz Greaves +1"}
		
	sets.midcast.FastRecast.SIRD = {ammo="Staunch Tathlum +1",
        head="Fu. Bandeau +2",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Odnowa Earring +1",
        body="Runeist's Coat +2",hands=gear.herculean_dt_hands,ring1="Moonlight Ring",ring2="Defending Ring",
        back=gear.FC_jse_back,waist="Flume Belt +1",legs="Eri. Leg Guards +1",feet="Erilaz Greaves +1"}

    sets.midcast['Enhancing Magic'] = set_combine(sets.midcast.FastRecast,{main="Malignance Sword",head="Erilaz Galea +1",neck="Incanter's Torque",ear1="Andoaa Earring",ear2="Etiolation Earring",hands="Runeist's Mitons +1",back="Merciful Cape",waist="Olympus Sash",legs="Futhark Trousers +1"})
    sets.midcast['Phalanx'] = set_combine(sets.midcast['Enhancing Magic'],{head="Futhark Bandeau +2",neck="Futhark Torque +2",ear1="Andoaa Earring",ear2="Etiolation Earring",body=gear.herc_Phalanx_body,hands=gear.herc_Phalanx_hands,legs=gear.taeon_Phalanx_legs,feet=gear.taeon_Phalanx_feet})
    sets.midcast['Regen'] = set_combine(sets.midcast['Enhancing Magic'],{head="Rune. Bandeau +1",neck="Sacro Gorget"}) 
	sets.midcast['Refresh'] = set_combine(sets.midcast['Enhancing Magic'],{head="Erilaz Galea +1"}) 
    sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {main="Pukulatmuj",ear2="Earthcry Earring",waist="Siegel Sash"})
	sets.midcast.Flash = set_combine(sets.Enmity, {})
	sets.midcast.Flash.DT = set_combine(sets.Enmity.DT, {})
	sets.midcast.Foil = set_combine(sets.Enmity, {})
	sets.midcast.Foil.DT = set_combine(sets.Enmity.DT, {})
    sets.midcast.Stun = set_combine(sets.Enmity, {})
	sets.midcast.Stun.DT = set_combine(sets.Enmity.DT, {})
	sets.midcast.Jettatura = set_combine(sets.Enmity, {})
	sets.midcast.Jettatura.DT = set_combine(sets.Enmity.DT, {})
	sets.midcast['Blue Magic'] = set_combine(sets.Enmity, {})
	sets.midcast['Blue Magic'].DT = set_combine(sets.Enmity.SIRDT, {})
	sets.midcast['Blue Magic'].SIRD = set_combine(sets.Enmity.SIRD, {})

    sets.midcast.Cure = {ammo="Staunch Tathlum +1",
        head="Carmine Mask +1",neck="Sacro Gorget",ear1="Mendi. Earring",ear2="Roundel Earring",
        body="Vrikodara Jupon",hands="Weath. Cuffs +1",ring1="Moonlight ring",ring2="Defending Ring",
        back="Solemnity Cape",waist="Korin Obi",legs="Carmine Cuisses +1",feet="Skaoi Boots"}
		
	sets.midcast['Wild Carrot'] = set_combine(sets.midcast.Cure, {})
		
	sets.Self_Healing = {hands="Weath. Cuffs +1",ring2="Kunaji Ring",waist="Gishdubar Sash"}
	sets.Cure_Received = {hands="Weath. Cuffs +1",ring2="Kunaji Ring",waist="Gishdubar Sash"}
	sets.Self_Refresh = {waist="Gishdubar Sash"}
	sets.Phalanx_Received = {body=gear.herc_Phalanx_body,hands=gear.herc_Phalanx_hands,legs=gear.taeon_Phalanx_legs,feet=gear.taeon_Phalanx_feet}
	
    sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], {ring2="Sheltered Ring"})
    sets.midcast.Shell = set_combine(sets.midcast['Enhancing Magic'], {ring2="Sheltered Ring"})

	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

	sets.resting = {ammo="Homiliary"}

    sets.idle = {main="Epeolatry",sub="Refined Grip +1",ammo="Homiliary",
		head="Futhark bandeau +2",neck="Warder's charm +1",ear1="Genmei Earring",ear2="Etiolation Earring",
		body="Runeist's Coat +2",hands="Turms mittens +1",ring1="Defending Ring",ring2="Stikini Ring +1",
		back="Shadow mantle",waist="Flume Belt +1",legs="Erilaz leg guards +1",feet="Turms leggings +1"}
		
    sets.idle.Sphere = set_combine(sets.idle,{body="Mekosu. Harness"})
			
	sets.idle.Tank = {main="Epeolatry",sub="Refined Grip +1",ammo="Homiliary",
		head="Futhark bandeau +2",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Etiolation Earring",
		body="Runeist's Coat +2",hands="Turms mittens +1",ring1="Defending Ring",ring2="Stikini Ring +1",
		back="Shadow mantle",waist="Flume Belt +1",legs="Erilaz leg guards +1",feet="Turms leggings +1"}

	sets.idle.KiteTank = {main="Epeolatry",sub="Refined Grip +1",ammo="Homiliary",
		head="Futhark bandeau +2",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Etiolation Earring",
		body="Runeist's Coat +2",hands="Turms mittens +1",ring1="Defending Ring",ring2="Stikini Ring +1",
		back="Shadow mantle",waist="Flume Belt +1",legs="Carmine Cuisses +1",feet="Turms leggings +1"}

	sets.idle.Weak = {main="Epeolatry",sub="Refined Grip +1",ammo="Homiliary",
		head="Futhark bandeau +2",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Etiolation Earring",
		body="Runeist's Coat +2",hands="Turms mittens +1",ring1="Defending Ring",ring2="Stikini Ring +1",
		back="Shadow mantle",waist="Flume Belt +1",legs="Erilaz leg guards +1",feet="Turms leggings +1"}

	sets.Kiting = {legs="Carmine Cuisses +1"}
	
	sets.latent_refresh = {waist="Fucho-no-obi"}
	sets.latent_refresh_grip = {sub="Oneiros Grip"}
	sets.DayIdle = {}
	sets.NightIdle = {}

    -- Extra defense sets.  Apply these on top of melee or defense sets.
    sets.Knockback = {}
    sets.MP = {ear2="Ethereal Earring",body="Erilaz Surcoat +1",waist="Flume Belt +1"}
	sets.TreasureHunter = set_combine(sets.TreasureHunter, {head="Wh. Rarab Cap +1",waist="Chaac Belt",feet=gear.herc_THfeet,ammo="Per. Lucky Egg"})
	
	-- Weapons sets
	sets.weapons.Epeolatry = {main="Epeolatry",sub="Utu Grip"}
	sets.weapons.DualWeapons = {main="Firangi",sub="Luxotic Mace"}
	sets.weapons.GA = {main="Kaja Chopper"}
	sets.weapons.Axe = {main="Eletta Axe"}
	
	-- Defense Sets
	
	sets.defense.PDT = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Fu. bandeau +2",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Colossus's Earring",
        body="Futhark Coat +2",hands="Turms mittens +1",ring1="Vocane ring",ring2="Defending Ring",
        back="Shadow Mantle",waist="Flume Belt +1",legs="Eri. Leg Guards +1",feet="Erilaz Greaves +1"}
	sets.defense.PDT_HP = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Fu. bandeau +2",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Colossus's Earring",
        body="Futhark Coat +2",hands="Turms mittens +1",ring1="Vocane ring",ring2="Defending Ring",
        back="Shadow Mantle",waist="Flume Belt +1",legs="Eri. Leg Guards +1",feet="Erilaz Greaves +1"}
	sets.defense.MDT = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Turms cap +1",neck="Warder's Charm +1",ear1="Odnowa Earring +1",ear2="Odnowa Earring",
        body="Futhark Coat +2",hands="Turms mittens +1",ring1="Vocane ring",ring2="Defending Ring",
        back="Reiki cloak",waist="Engraved Belt",legs="Eri. Leg Guards +1",feet="Turms leggings +1"}
	sets.defense.MDT_HP = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Erilaz Galea +1",neck="Warder's Charm +1",ear1="Odnowa Earring +1",ear2="Odnowa Earring",
        body="Futhark Coat +2",hands="Turms mittens +1",ring1="Vocane ring",ring2="Defending Ring",
        back="Reiki cloak",waist="Engraved Belt",legs="Eri. Leg Guards +1",feet="Turms leggings +1"}
	sets.defense.BDT = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Turms cap +1",neck="Warder's Charm +1",ear1="Odnowa Earring +1",ear2="Odnowa Earring",
        body="Futhark Coat +2",hands="Turms Mittens +1",ring1="Defending Ring",ring2="Shadow Ring",
        back="Evasionist's cape",waist="Engraved Belt",legs="Eri. Leg Guards +1",feet="Turms leggings +1"}
	sets.defense.BDT_HP = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Turms cap +1",neck="Warder's Charm +1",ear1="Odnowa Earring +1",ear2="Odnowa Earring",
        body="Futhark Coat +2",hands="Turms Mittens +1",ring1="Defending Ring",ring2="Shadow Ring",
        back="Evasionist's cape",waist="Engraved Belt",legs="Eri. Leg Guards +1",feet="Turms leggings +1"}
	
	sets.defense.MEVA = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Erilaz Galea +1",neck="Warder's Charm +1",ear1="Odnowa Earring +1",ear2="Odnowa Earring",
        body="Futhark Coat +2",hands="Turms mittens +1",ring1="Vocane ring",ring2="Defending Ring",
        back="Reiki cloak",waist="Engraved Belt",legs="Eri. Leg Guards +1",feet="Turms leggings +1"}
		
	sets.defense.MEVA_HP = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Erilaz Galea +1",neck="Warder's Charm +1",ear1="Odnowa Earring +1",ear2="Odnowa Earring",
        body="Futhark Coat +2",hands="Turms mittens +1",ring1="Vocane ring",ring2="Defending Ring",
        back="Reiki cloak",waist="Engraved Belt",legs="Eri. Leg Guards +1",feet="Turms leggings +1"}
		
	sets.defense.Death = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Erilaz Galea +1",neck="Warder's Charm +1",ear1="Odnowa Earring +1",ear2="Odnowa Earring",
        body="Futhark Coat +2",hands="Turms mittens +1",ring1="Vocane ring",ring2="Defending Ring",
        back="Reiki cloak",waist="Engraved Belt",legs="Eri. Leg Guards +1",feet="Turms leggings +1"}

	sets.defense.DTCharm = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Erilaz Galea +1",neck="Warder's Charm +1",ear1="Odnowa Earring +1",ear2="Odnowa Earring",
        body="Futhark Coat +2",hands="Turms mittens +1",ring1="Vocane ring",ring2="Defending Ring",
        back="Reiki cloak",waist="Engraved Belt",legs="Eri. Leg Guards +1",feet="Turms leggings +1"}
		
	sets.defense.Charm = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Erilaz Galea +1",neck="Unmoving Collar +1",ear1="Odnowa Earring +1",ear2="Sanare Earring",
        body="Runeist's Coat +2",hands="Erilaz Gauntlets +1",ring1="Purity Ring",ring2="Vengeful Ring",
        back="Solemnity Cape",waist="Engraved Belt",legs="Rune. Trousers +1",feet="Erilaz Greaves +1"}
	
	-- Swap to these on Moonshade using WS if at 3000 TP
	sets.MaxTP = {ear1="Brutal Earring"}
	sets.AccMaxTP = {ear1="Telos Earring"}

	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged = {main="Epeolatry",sub="Utu Grip",ammo="Ginsen",
            head="Adhemar Bonnet +1",neck="Caro Necklace",ear1="Telos Earring",ear2="Cessance earring",
            body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Niqmaddu Ring",ring2="Epona's Ring",
            back=gear.TP_jse_back,waist="Windbuffet Belt +1",legs="Meg. Chausses +2",feet=gear.herc_TAacc_feet}
		
	sets.engaged.Acc = {main="Epeolatry",sub="Utu Grip",ammo="Ginsen",
            head="Dampening Tam",neck="Caro Necklace",ear1="Telos Earring",ear2="Cessance earring",
            body="Adhemar Jacket +1",hands="Adhemar Wrist. +1",ring1="Niqmaddu Ring",ring2="Epona's Ring",
            back=gear.TP_jse_back,waist="Windbuffet Belt +1",legs="Meg. Chausses +2",feet=gear.herc_TAacc_feet}

	sets.engaged.FullAcc = {main="Epeolatry",sub="Utu Grip",ammo="C. Palug Stone",
            head="Carmine Mask +1",neck="Combatant's Torque",ear1="Telos Earring",ear2="Zennaroi earring",
            body="Adhemar Jacket +1",hands="Turms Mittens +1",ring1="Ramuh Ring +1",ring2="Ramuh Ring +1",
            back=gear.TP_jse_back,waist="Olseni Belt",legs="Meg. Chausses +2",feet="Turms leggings +1"}
			
    sets.engaged.DTLite = {main="Epeolatry",sub="Utu Grip",ammo="Ginsen",
            head="Adhemar Bonnet +1",neck="Futhark Torque +2",ear1="Telos Earring",ear2="Cessance earring",
            body="Ayanmo Corazza +2",hands="Turms Mittens +1",ring1="Moonlight ring",ring2="Defending Ring",
            back="Evasionist's cape",waist="Windbuffet Belt +1",legs="Meg. Chausses +2",feet=gear.herc_TAacc_feet}
			
	sets.engaged.Acc.DTLite = {main="Epeolatry",sub="Utu Grip",ammo="C. Palug Stone",ammo="C. Palug Stone",
            head="Dampening Tam",neck="Futhark Torque +2",ear1="Telos Earring",ear2="Cessance Earring",
            body="Ayanmo Corazza +2",hands="Meg. Gloves +2",ring1="Moonlight ring",ring2="Defending Ring",
            back="Evasionist's cape",waist="Grunfeld Rope",legs="Meg. Chausses +2",feet="Turms leggings +1"}
			
	sets.engaged.FullAcc.DTLite = {main="Epeolatry",sub="Utu Grip",ammo="C. Palug Stone",
            head="Aya. Zucchetto +2",neck="Futhark Torque +2",ear1="Telos Earring",ear2="Mache Earring +1",
            body="Ayanmo Corazza +2",hands="Meg. Gloves +2",ring1="Moonlight ring",ring2="Defending Ring",
			back="Evasionist's cape",waist="Grunfeld Rope",legs="Meg. Chausses +2",feet="Turms leggings +1"}
			
    sets.engaged.Tank = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
            head="Turms Cap +1",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Odnowa Earring +1",
            body="Futhark Coat +2",hands="Turms Mittens +1",ring1="Moonlight Ring",ring2="Defending Ring",
            back=gear.enmity_jse_back,waist="Flume Belt +1",legs="Eri. Leg Guards +1",feet="Turms leggings +1"}
			
	sets.engaged.Tank_HP = {main="Epeolatry",sub="Utu Grip",ammo="Staunch Tathlum +1",
        head="Fu. Bandeau +2",neck="Futhark Torque +2",ear1="Genmei Earring",ear2="Odnowa Earring +1",
        body="Runeist's Coat +2",hands="Turms Mittens +1",ring1="Moonlight Ring",ring2="Defending Ring",
        back=gear.enmity_jse_back,waist="Flume Belt +1",legs="Eri. Leg Guards +1",feet="Turms leggings +1"}
		
	sets.engaged.Acc.Tank = sets.engaged.Tank
	sets.engaged.FullAcc.Tank = sets.engaged.Tank
	
	--------------------------------------
	-- Custom buff sets
	--------------------------------------
	sets.buff.Doom = set_combine(sets.buff.Doom, {})
	sets.buff.Sleep = {head="Frenzy Sallet"}
	sets.buff.Battuta = {hands="Turms Mittens +1"}
	sets.buff.Embolden = {back="Evasionist's Cape"}
	
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'DNC' then
		set_macro_page(1, 1)
	elseif player.sub_job == 'RDM' then
		set_macro_page(1, 1)
	elseif player.sub_job == 'SCH' then
		set_macro_page(1, 1)
	elseif player.sub_job == 'BLU' then
		set_macro_page(1, 1)
	elseif player.sub_job == 'WAR' then
		set_macro_page(1, 1)
	elseif player.sub_job == 'SAM' then
		set_macro_page(1, 1)
	elseif player.sub_job == 'DRK' then
		set_macro_page(1, 1)
	elseif player.sub_job == 'NIN' then
		set_macro_page(1, 1)
	else
		set_macro_page(1, 1)
	end
end

--Job Specific Trust Overwrite
function check_trust()
	if not moving then
		if state.AutoTrustMode.value and not data.areas.cities:contains(world.area) and (buffactive['Elvorseal'] or buffactive['Reive Mark'] or not player.in_combat) then
			local party = windower.ffxi.get_party()
			if party.p5 == nil then
				local spell_recasts = windower.ffxi.get_spell_recasts()
			
				if spell_recasts[980] < spell_latency and not have_trust("Yoran-Oran") then
					windower.send_command('input /ma "Yoran-Oran (UC)" <me>')
					tickdelay = os.clock() + 3
					return true
				elseif spell_recasts[952] < spell_latency and not have_trust("Koru-Moru") then
					windower.send_command('input /ma "Koru-Moru" <me>')
					tickdelay = os.clock() + 3
					return true
				elseif spell_recasts[979] < spell_latency and not have_trust("Selh'teus") then
					windower.send_command('input /ma "Selh\'teus" <me>')
					tickdelay = os.clock() + 3
					return true
				elseif spell_recasts[967] < spell_latency and not have_trust("Qultada") then
					windower.send_command('input /ma "Qultada" <me>')
					tickdelay = os.clock() + 3
					return true
				elseif spell_recasts[914] < spell_latency and not have_trust("Ulmia") then
					windower.send_command('input /ma "Ulmia" <me>')
					tickdelay = os.clock() + 3
					return true
				else
					return false
				end
			end
		end
	end
	return false
end

function user_job_lockstyle()
	if state.Weapons.value == 'Epeolatry' then
		windower.chat.input('/lockstyleset 034')
	else
		windower.chat.input('/lockstyleset 033')
	end
end