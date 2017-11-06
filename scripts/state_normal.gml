//Нормальное состояние
//Здесь всё из макросов поэтомуничего не понятно
hspd = xAxis * movesped;

if(grounded){
    jumps = 2;
}

if(key_jump && jumps > 0){
    jumps--;
    vspd = 0;
    physics_apply_force(0,0,0,jump_hight)
}
