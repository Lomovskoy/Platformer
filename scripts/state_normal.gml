//Нормальное состояние
//Здесь всё из макросов поэтому ничего не понятно
/*Движение*/
hspd = xAxis * movesped;
/*Земля*/
if(grounded){
    jumps = 2;
}
/*Прыжки*/
if(key_jump && jumps > 0){
    jumps--;
    vspd = 0;
    physics_apply_force(0,0,0,jump_hight)
}
/*Тянуть*/
if(key_grabb && grounded){
    //Если мы смотрим вправо image_xscale 1 если в лево -1
    grabed = instance_place(x + image_xscale * 2, y, object_box);
    if (grabed != noone){
        state = state_grab;
    }
}
