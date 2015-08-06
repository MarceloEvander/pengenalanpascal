uses crt;

label menu;

var
 key : char;
 i,k,j : integer;
 desimal,t,sisa,biner:integer;
      a,b,c : char;
      bil : integer;

procedure menuUtama(); forward;

 function desimalToBiner (desimal : integer):string;
        var hasilbagi, sisa : integer;
            bin : char;
            bilBiner : string;
             begin
                hasilBagi :=desimal div 2;
		bilBiner :='';

                while (hasilbagi >= 1) do
                   begin
		      sisa := desimal mod 2;
		         if (sisa=0) then bin :='0'
			    else if (sisa = 1) then bin :='1';
			      bilBiner:=bin+bilBiner;
			      desimal:=hasilbagi;
			       hasilbagi:=desimal div 2;
		  end;

		desimalToBiner:='1'+bilBiner;
end;

procedure binerToDesimal(desimal: integer);
    begin
  textcolor(white);

  t:=1;desimal:=0;
  repeat
  sisa:= biner mod 10;
  biner:= biner div 10;
  desimal:=desimal+ sisa*t;
  t:=t*2;
  until biner=0;
  textcolor(white); write('Bilangan DESIMALnya adalah  ',desimal);
  textcolor(14);

end;


procedure inputan();
begin
    if i = 1 then
    begin
         write('Masukan Bilangan Desimal : '); readln(desimal);
         write('Bilangan Binernya = ',desimalToBiner(desimal));
    end
    else if i = 2 then
    begin
        write('Masukan Bilangan Biner : '); readln(biner);
        binerToDesimal(biner);

    end;
    	gotoxy(51,17); write('PRESS ENTER TO BACK');
    readkey;
    menuUtama();

end;


procedure keluar();
begin
     repeat
     clrscr;
     textcolor(white);
     gotoxy(20,2);writeln('*********************************************');
     gotoxy(20,3);writeln('*                                           *');
     gotoxy(20,4);writeln('*                                           *');
     gotoxy(20,5);writeln('*    TRIVIANA DJELA    :       682013101    *');
     gotoxy(20,6);writeln('*    WIDYA S HARYANI   :       682013106    *');
     gotoxy(20,7);writeln('*    DIMAS             :       682011111    *');
     gotoxy(20,8);writeln('*                                           *');
     gotoxy(20,9);writeln('*                                           *');
     gotoxy(20,10);writeln('*********************************************');

     gotoxy(40,15);write('Menutup aplikasi');

        begin
         for j:=1 to 5 do
         begin
            textcolor(yellow); write('.'); delay(500);
         end;
      k:= k + 1;
     end;
     until(k=3);
     if k = 3 then
     begin
      exit;
     end;


end;


procedure menuUtama();
begin
   i := 1;
 cursoroff;
  textbackground(black);
 repeat
  begin clrscr;

      gotoxy(30,2); writeln('MENU KONVERSI ANGKA');
      gotoxy(28,3); writeln('Tekan('#24,#47,#25') untuk memilih');
  textcolor(white);
  textbackground(blue);

 if (i = 1) then
      textbackground(red);
      textcolor(white);
       gotoxy(25,4); writeln(#17,'                           ', #17);
       gotoxy(25,5); writeln(#16,' KONVERSI DESIMAL KE BINER ', #16);
       gotoxy(25,6); writeln(#17,'                           ' ,#17);
      textcolor(white);

  textcolor(white);
   textbackground(blue);
  if (i = 2) then
      textbackground(red);
      textcolor(white);
       gotoxy(25,7); writeln(#17,'                           ', #17);
       gotoxy(25,8); writeln(#16,' KONVERSI BINER KE DESIMAL ', #16);
       gotoxy(25,9); writeln(#17,'                           ' ,#17);
      textcolor(white);

  textcolor(white);
   textbackground(blue);
  if (i = 3) then
  textbackground(red);
       textcolor(white);
        gotoxy(25,10);writeln(#17,'                           ', #17);
        gotoxy(25,11);writeln(#16,' KELUAR                    ', #16);
        gotoxy(25,12);writeln(#17,'                           ' ,#17);
       textcolor(white);

  textbackground(black);

  end;
  key := readkey;

  if (key <> #0) then
  begin
   case key of
    #72 : begin
           i := i - 1;
           if i < 1 then
            i := 3;
          end;

    #80 : begin
           i := i + 1;
           if i > 3 then
            i := 1;
          end;
   end;

  end;

 until (key = #13);

 //TAMPIL SETELAH TOMBOL ENTER DITEKAN
 if key = #13 then
 begin
   //textbackground(black);  //SET BACKGROUND SUB MENU
   //textcolor(208);
   clrscr;
 case i of
  1 : inputan();
  2 : inputan();
  3 : keluar();
 end;
 end;



end;

begin

  menuUtama();


end.
