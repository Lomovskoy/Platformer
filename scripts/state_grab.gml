//Движение
/*Движение*/
phy_speed_x = xAxis * (movesped / 2);


with (grabed){
    if(!place_meeting(x + other.phy_speed_x, y, object_ground) && 
            !place_meeting(x + other.phy_speed_x, y, object_player)){
        
        phy_speed_x = other.phy_speed_x
    }
    else{
        phy_speed_x = 0
    }
}
if (!key_grabb){
    grabed.phy_speed_x = 0;
    grabed = noone;
    state = state_normal;
}
