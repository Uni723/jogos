velh = 0;
velv = 0;

max_vel =7;

vel = 0;

move_dir =0;

arma =instance_create_layer(x, y, "Instances", oMao);
usa_arma = function()
{
	if (arma)
	{
		var _fire = mouse_check_button(mb_left);
		arma.atirar = _fire;
	}
}