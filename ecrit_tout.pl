#!/usr/bin/perl -w    # pour indiquer oÃ¹ se trouve perl  et dire s'il y a des erreurs de syntaxe.'
#-------------------------------------------------------------
 use POSIX;
  use strict;
  use warnings;
  
  
open F, ">mon_texte_ecrit_automatiquement.txt";     # cr&eacute;e et ou  ouvre le fichier F  qui va contenir le texte


   
   my $data = 'A,B,C,D,E,F,G,H';
   my @values = split(',',$data);
   my $i=0;
   
=pod  
   
    foreach my $val(@values)
    
    { 
	    $i++; 
	    print F"

 
     	
var angle  =  Math.atan((y_p$i-y_p$val)/(x_p$i-x_p$val));
if( x_p$i-x_p$val < 0 )
{
ctx.save();
ctx.translate(x_p$i,y_p$i);
ctx.rotate(angle+Math.PI/5);
ctx.moveTo(0,0);
ctx.lineTo(30,0);
ctx.restore();
ctx.save();
ctx.translate(x_p$i,y_p$i);
ctx.rotate(angle-Math.PI/5);
ctx.moveTo(0,0);
ctx.lineTo(30,0);
ctx.restore();
};
if( x_p$i-x_p$val >= 0 )
{
ctx.save();
ctx.translate(x_p$i,y_p$i);
ctx.rotate(angle+Math.PI/5-Math.PI);
ctx.moveTo(0,0);
ctx.lineTo(30,0);
ctx.restore();
ctx.save();
ctx.translate(x_p$i,y_p$i);
ctx.rotate(angle-Math.PI/5-Math.PI);
ctx.moveTo(0,0);
ctx.lineTo(30,0);
ctx.restore();
};
ctx.moveTo(x_p$i,y_p$i);
ctx.lineTo(x_p$val,y_p$val);
 //est appliqué au segment la couleur et la largeur définit plus haut
 //(le tracé s'affiche à l'écran, il est visible)
ctx.stroke();
	        ";    
	    
    };	    
    
    
=cut	 


 
     
    for (my $i = 70; $i <=81; $i++)
     { 
             
	 
 print F "  \\\item \\\includegraphics[scale =0.3]{$i.eps}  \$L = ...\$\n";	 

     };
 
 
    
	 

     
     system("scite   mon_texte_ecrit_automatiquement.txt");
     
# pour lancer ce programme, il suffit de se placer dans le dossier ou se trouve ce programme puis dans un terminal, d'entrer : ./nom.pl
#if   alea$i < Round(proba_suc*100) then
   #   begin
    #  p$i:=p$i+1;
    #  end;\n