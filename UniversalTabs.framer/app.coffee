topBar = new Layer
	width: 2880/2
	height: 96/2
	image: "images/topBar.png"

tab2_desel = new Layer
	width: 404/2
	height: 84/2
	x:240
	y:12
	image: "images/tab2-desel.png"
	visible:false

close_desel = new Layer
	width: 36/2
	height: 36/2
	image: "images/close-desel.png"
	x:408
	y:22
	visible: false
	
tab1_sel = new Layer
	width: 400/2
	height: 80/2
	x:56
	y:12
	image: "images/tab1-sel.png"

tab1_desel = new Layer
	width: 404/2
	height: 84/2
	y:12
	x:55
	image: "images/tab1-desel.png"
	visible: false

	
tab3_desel = new Layer
	width: 404/2
	height: 84/2
	y:12
	x:424
	image: "images/tab3-desel.png"
	visible: false
	
tab2_sel = new Layer
	width: 404/2
	height: 84/2
	x:240
	y:48
	image: "images/tab2-sel.png"

tab3_sel = new Layer
	width: 404/2
	height: 84/2
	x:424
	y:48
	image: "images/tab3-sel.png"

background = new Layer
	width: 2880/2
	height: 1800/2
	y:48
	image: "images/background.png"

engagement = new Layer
	width: 2880/2
	height: 1704/2
	y:48
	image: "images/engagement.png"

messageDetails = new Layer
	width: 2880/2
	height: 1704/2
	y:48
	image: "images/messageDetails.png"
	visible:false

cellSelection = new Layer
	y: 128
	x: 44
	width: 424
	height: 298
	parent:engagement
	opacity: 0.01
	
cellSelection.on Events.Tap,->
	tab2_sel.animate
		properties: 
			y:12
		time:.25
	engagement.visible = false
	tab1_sel.visible = false
	tab1_desel.visible =true
	messageDetails.visible = true
	cellSelection.visible = false


tab1_desel.on Events.Tap,->
	engagement.visible = true
	tab1_sel.visible = true
	tab1_desel.visible =false
	messageDetails.visible = false
	tab2_sel.visible = false
	tab2_desel.visible =true
	if tab3_sel.y == 12 
		tab3_desel.visible = true
		tab3_sel.visible = false
	

tab2_desel.on Events.Tap,->
	engagement.visible = false
	tab1_sel.visible = false
	tab1_desel.visible =true
	messageDetails.visible = true
	tab2_sel.visible=true
	tab2_desel.visible=false
	if tab3_sel.y == 12 
		tab3_desel.visible = true
		tab3_sel.visible = false

cellSelection2 = new Layer
	y: 437
	x: 41
	width: 428
	height: 270
	opacity: 0.01
	parent: engagement

cellSelection2.on Events.Tap,->
	tab3_sel.animate
		properties: 
			y:12
		time:.25
	engagement.visible = false
	tab1_sel.visible = false
	tab1_desel.visible =true
	messageDetails.visible = true
	cellSelection2.visible = false

tab3_desel.on Events.Tap,->
	engagement.visible = false
	tab1_sel.visible = false
	tab1_desel.visible =true
	messageDetails.visible = true
	tab2_sel.visible=false
	tab2_desel.visible=true
	tab3_sel.visible=true
	tab3_desel.visible=false

document.addEventListener "keydown", (event) ->
	keyCode = event.which
	
	if keyCode is 49 && 18
			engagement.visible = true
			tab1_sel.visible = true
			tab1_desel.visible =false
			messageDetails.visible = false
			tab2_sel.visible = false
			tab2_desel.visible =true
			if tab3_sel.y == 12 
				tab3_desel.visible = true
				tab3_sel.visible = false
	
	if keyCode is 50 && 18
			engagement.visible = false
			tab1_sel.visible = false
			tab1_desel.visible =true
			messageDetails.visible = true
			tab2_sel.visible=true
			tab2_desel.visible=false
			if tab3_sel.y == 12 
				tab3_desel.visible = true
				tab3_sel.visible = false
				
	if keyCode is 51 && 18
			engagement.visible = false
			tab1_sel.visible = false
			tab1_desel.visible =true
			messageDetails.visible = true
			tab2_sel.visible=false
			tab2_desel.visible=true
			tab3_sel.visible=true
			tab3_desel.visible=false
		

				
	
		

		


	


			














