var table = ds_grid_create(2, 10);
var a;
var b;

ini_open(global.score_table);
a[9] = ini_read_real('9', 'time', '0.00');
b[9] = ini_read_string('9', 'name', 'NO1');
ini_close();

if (a[9] != '0.00' && global.timer_record < a[9])
{
    a[9] = global.timer_record;
    b[9] = string_upper(inputText);
    
    var i = 0;
    repeat(9)
    {
        ini_open(global.score_table);
        a[i] = ini_read_real(i, 'time', '0.00');
        b[i] = ini_read_string(i, 'name', 'NO1');
        ini_close();
        i += 1;
    }
    i = 0;
    
    repeat(10)
    {
        ds_grid_add(table, 0, i, a[i]);
        ds_grid_add(table, 1, i, b[i]);
        i += 1;
    }
    i = 0; a = ""; b = "";
    
    ds_grid_sort(table, 0, true);
    
    repeat(10)
    {
        ini_open(global.score_table);
        ini_write_string(i, 'name', ds_grid_get(table, 1, i));
        ini_write_real(i, 'time', ds_grid_get(table, 0, i));
        ini_close();
        i += 1;
    }
    i = ""; ds_grid_destroy(table);
}
