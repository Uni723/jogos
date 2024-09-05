var _velh =sign(velh);

repeat (abs(velh))
{
	if( place_meeting(x + _velh, y, Oparede))
	{
		velh =0
	}
	else{
		x += _velh;
	}
}

var _velv =sign (velv);

repeat (abs(velv))
{
	if(place_meeting(x,y + _velv, Oparede))
	{
		velv = 0
	}
	else{
		y += _velv;
	}
}