///Provides random incorrect answers based from the correct answer
var r;
var e = argument0;
var f = argument1;
var g = argument2;

do
{
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
    //if (f = "") break;
    //if (g = "") break;
} until (r != e && r != f && r != g);

return r;
