var r;
var e = argument0;
var ans = irandom_range(1, 4);
    
switch(ans)
{
    case 1:
    r = e + irandom_range(1, 5);
    break;
        
    case 2:
    r = e - irandom_range(1, 5);
    break;
        
    case 3:
    r = e + irandom_range(6, 10);
    break;
        
    case 4:
    r = e - irandom_range(6, 10);
    break;
}

return r;
