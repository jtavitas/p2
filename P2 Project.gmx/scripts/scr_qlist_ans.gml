///Provides random incorrect answers based from the correct answer
var r;
var e = argument0;
var ans = irandom(3);
    
switch(ans)
{
    case 0:
    r = e + irandom_range(1, 5);
    break;
        
    case 1:
    r = e - irandom_range(1, 3);
    break;
        
    case 2:
    r = e + irandom_range(6, 10);
    break;
        
    case 3:
    r = e + e;
    break;
}

return r;
