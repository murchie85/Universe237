
if(room = startMenu){




// --------------------------------------- FIRST MENU

if(MENUSET=0){


	tabWidth  = sprite_get_width(sMenuOptions)
	newGameIcon = instance_create_layer(room_width/2 - (0.5 * tabWidth), 0.4 * room_height, "Instances", holderObject)
	newGameIcon.sprite_index = sMenuOptions;
	newGameIcon.image_speed  = 0;

	continueIcon = instance_create_layer(room_width/2 - (0.5 * tabWidth), 0.5 * room_height, "Instances", holderObject)
	continueIcon.sprite_index = sMenuOptions;
	continueIcon.image_speed  = 0;

	optionIcons = instance_create_layer(room_width/2 - (0.5 * tabWidth), 0.6 * room_height, "Instances", holderObject)
	optionIcons.sprite_index = sMenuOptions;
	optionIcons.image_speed  = 0;


	// Background 
	backGroundBlue = instance_create_layer(0, 0, "backLayer", holderObject)
	backGroundBlue.sprite_index = sbackSimple;
	backGroundBlue.image_xscale = 10;
	backGroundBlue.image_yscale = 8;

	diamondBack = instance_create_layer(room_width/2 - (0.05 * tabWidth), 0.5 * room_height, "L1", holderObject)
	diamondBack.sprite_index = diamond;
	diamondBack.image_xscale = 4;
	diamondBack.image_yscale = 4;



	diamondtwo = instance_create_layer(room_width/2 - (0.05 * tabWidth), 0.5 * room_height, "L1", holderObject)
	diamondtwo.sprite_index = diamond;
	diamondtwo.image_xscale = 6;
	diamondtwo.image_yscale = 6;





	MENUSET=1;
	}
	else{

		newGameIcon.image_index   = 4;
		continueIcon.image_index  = 5;
		optionIcons.image_index   = 6;


		diamondBack.image_angle  += 0.2;
		diamondtwo.image_angle  -= 0.2;



		if position_meeting(mouse_x, mouse_y,newGameIcon){
			newGameIcon.image_index  = 0;
			if(mouse_check_button_pressed(mb_left)){
				MENUSET=0;
				room_goto(gameIntroRoom)
				// Kick off an intro timer
				alarm[0] = 100;
				}}
		if position_meeting(mouse_x, mouse_y,continueIcon){continueIcon.image_index  = 1;}
		if position_meeting(mouse_x, mouse_y,optionIcons){optionIcons.image_index  = 2;}


	}



}




// --------------------------------------- Game Intro Room

if(room = gameIntroRoom){
	
	enterKey = keyboard_check_pressed(vk_enter)
	
	// ---------------FIRST DIALOGUE 
	// timed intro
	if(proceed == 0){exit}
	proceed = 1;

	if(MENUSET=0){

		dialogue[0] = "**rustle**....**clunk** ...oh not again!";
		dialogue[1] = ".....Wait......"
		dialogue[2] = "..who the hell are you? How did you get in here? ... "
		// CREATE TEXTBOX 
		textBox = instance_create_layer(room_width/10, 0.2 * room_height,"instances", oTextBox); 
		textBox.text       = dialogue;
		textBox.creator    = self;											 
		textBox.name       = "Arbeiter";	
	
		MENUSET=1;

	}
	
	if(phase="start"  and textBox.textComplete = 1){phase="inputNameMessage" instance_destroy(textBox); dialogue = 0;}
	
	
	// --------------GET NAME ---- 
	
	
	// DIALOGUE BOX WITH INSTRUCTIONS
	if(phase="inputNameMessage"){
	
		textToScreen(room_width/3,0.3 * room_height,"Instances","Enter Name","create")
		textToScreen(room_width/5,0.7 * room_height,"Instances","Use Arrow Keys to input name","create")
		myBox = instance_create_layer(room_width/10, 0.2 * room_height,"I2",holderObject);
		myBox.sprite_index = dialogueBox 
		phase="inputName"
		}
	
	// GET USER NAME
	if(nameAquired = "no"){
		nameScript     = inputName(phase,letterPosition,namePosition,chosenName,300,300)
		phase          = nameScript[0]
		letterPosition = nameScript[1]
		namePosition   = nameScript[2]
		chosenName     = nameScript[3]
	}
	
	
	if(phase=="nameComplete"){
	nameAquired = "yes"
	textToScreen(room_width/3,0.3 * room_height,layer,"Enter Name","destroy")
	instance_destroy(myBox)
	phase="dialogue2"
	 
	}
	
	
	
	
// --------------- DIALOGUE 2

	if(phase=="dialogue2"){
		dialogue[0] = "I am " + string(chosenName);
	
		// CREATE TEXTBOX 
		textBox = instance_create_layer(room_width/10, 0.2 * room_height,"instances", oTextBox); 
		textBox.text       = dialogue;
		textBox.creator    = self;											 
		textBox.name       = chosenName;	
		phase="dialogue2a"
	}
	if(phase=="dialogue2a"){	
		if(textBox.textComplete = 1){phase="dialogue3" instance_destroy(textBox); dialogue = 0;}
		}
		
		
		
// --------------- DIALOGUE 3

	if(phase=="dialogue3"){
		dialogue[0] = "ah, so YOU are the one.";
		dialogue[1] = "It's truly an honor to meet you " + string(chosenName) + " please know that we all appreciate your sacrifice.. "
		dialogue[2] = ".......are you ready?"
		
		// CREATE TEXTBOX 
		textBox = instance_create_layer(room_width/10, 0.2 * room_height,"instances", oTextBox); 
		textBox.text       = dialogue;
		textBox.creator    = self;											 
		textBox.name       = "Arbeiter";
		phase="dialogue3a"
	}
	if(phase=="dialogue3a"){	
		if(textBox.textComplete = 1){phase="dialogue4" instance_destroy(textBox); dialogue = 0;}
		}
		
		
			
		
		
	
}



// --------------------------------------- SELECT COUNTRY

if(room = selectNationRoom){
	
	if(MENUSET=0){
	
		HeaderText     = instance_create_layer(100,100, "Instances", writeText) 
		HeaderText.textToWrite = "Select Your Country" 
	
	
		backGroundBlue = instance_create_layer(0, 0, "L1", holderObject)
		backGroundBlue.sprite_index = blueBox;
		backGroundBlue.image_xscale = 1.5;
		backGroundBlue.image_yscale = 1.5;

		createNationsButtons()
	
		displayText     = instance_create_layer(room_width/3, 0.85 * room_height, "Instances", writeText) 
	
	
		MENUSET=1;
	}

	if(selectedCountry > -1){
	displayText.textToWrite = "Country Selected: " + string(countryCode[selectedCountry][0]) 
	}



	if(exitCountrySelect =1){
	MENUSET = 0;
	oButton.destroyMe = 1;
	room_goto(gameIntroRoom)

	}




}









