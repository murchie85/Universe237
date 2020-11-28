
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
		room_goto(selectNationRoom)}}
if position_meeting(mouse_x, mouse_y,continueIcon){continueIcon.image_index  = 1;}
if position_meeting(mouse_x, mouse_y,optionIcons){optionIcons.image_index  = 2;}


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

	countryIcon = instance_create_layer(0.1 * room_width, 0.3 * room_height, "Instances", oButton)
	countryIcon.image_index = 0;
	
	countryIcon = instance_create_layer(0.1 * room_width, 0.4 * room_height, "Instances", oButton)
	countryIcon.image_index = 1;

	countryIcon = instance_create_layer(0.1 * room_width, 0.5 * room_height, "Instances", oButton)
	countryIcon.image_index = 2;
	
	countryIcon = instance_create_layer(0.1 * room_width, 0.6 * room_height, "Instances", oButton)
	countryIcon.image_index = 3;
	
	countryIcon = instance_create_layer(0.1 * room_width, 0.7 * room_height, "Instances", oButton)
	countryIcon.image_index = 4;
	
	countryIcon = instance_create_layer(0.1 * room_width, 0.8 * room_height, "Instances", oButton)
	countryIcon.image_index = 5;
	
	countryIcon = instance_create_layer(0.3 * room_width, 0.3 * room_height, "Instances", oButton)
	countryIcon.image_index = 6;
	
	countryIcon = instance_create_layer(0.3 * room_width, 0.4 * room_height, "Instances", oButton)
	countryIcon.image_index = 7;

	countryIcon = instance_create_layer(0.3 * room_width, 0.5 * room_height, "Instances", oButton)
	countryIcon.image_index = 8;
	
	countryIcon = instance_create_layer(0.3 * room_width, 0.6 * room_height, "Instances", oButton)
	countryIcon.image_index = 9;
	
	countryIcon = instance_create_layer(0.3 * room_width, 0.7 * room_height, "Instances", oButton)
	countryIcon.image_index = 10;
	
	countryIcon = instance_create_layer(0.3 * room_width, 0.8 * room_height, "Instances", oButton)
	countryIcon.image_index = 11;
	

	countryIcon = instance_create_layer(0.55 * room_width, 0.3 * room_height, "Instances", oButton)
	countryIcon.image_index = 12;
	
	countryIcon = instance_create_layer(0.55 * room_width, 0.4 * room_height, "Instances", oButton)
	countryIcon.image_index = 13;

	countryIcon = instance_create_layer(0.55 * room_width, 0.5 * room_height, "Instances", oButton)
	countryIcon.image_index = 14;
	
	countryIcon = instance_create_layer(0.55 * room_width, 0.6 * room_height, "Instances", oButton)
	countryIcon.image_index = 15;
	
	countryIcon = instance_create_layer(0.55 * room_width, 0.7 * room_height, "Instances", oButton)
	countryIcon.image_index = 16;
	
	countryIcon = instance_create_layer(0.55  * room_width, 0.8 * room_height, "Instances", oButton)
	countryIcon.image_index = 17;
	
	
	
	countryIcon = instance_create_layer(0.8 * room_width, 0.3 * room_height, "Instances", oButton)
	countryIcon.image_index = 18;
	
	countryIcon = instance_create_layer(0.8 * room_width, 0.4 * room_height, "Instances", oButton)
	countryIcon.image_index = 19;

	countryIcon = instance_create_layer(0.8 * room_width, 0.5 * room_height, "Instances", oButton)
	countryIcon.image_index = 20;
	
	

	
	
	
	
	
	
	
	displayText     = instance_create_layer(room_width/3, 0.85 * room_height, "Instances", writeText) 
	
	
	
	MENUSET=1;
}

if(selectedCountry > -1){
displayText.textToWrite = "Country Selected: " + string(countryCode[selectedCountry][0]) 
}

}