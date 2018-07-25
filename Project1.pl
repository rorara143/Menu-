#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

 while( 1 ) {     

        
print  "\n                                  MENU                          \n";
print " \n                            -------------                       \n";
print  "\n                 E - Extract And Process String                 \n";
print  "\n                 P - Perform A Mathematical Operation           \n";
print  "\n                 S - Sort A List Of Data                        \n";
print  "\n                 D - Given A Sample Of HTML File, Find The Innermost DIV. \n";
print  "\n                 R - Read A Directory Of Files And Display The Files In The Given Directory\n";
print  "\n                 F - Find A Subpattern Among All Lines Of All Files In A Directory Entered\n";
print  "\n                 L - Determine If The Input String Is A Palindrome (Do Not Use The Reverse Function)\n";
print  "\n                 Q - Quit                                       \n";
print "                    >";

chomp (my $input = <STDIN>);
if($input eq 'E')  {
print "Enter a string<Type QUIT to return to main loop>:" ;
chomp (my $input = <STDIN>);
my $string_len = ""; 
$string_len =  length( $input );
print "Length of the String is : $string_len\n";   

}
elsif ($input eq 'P') {
print "Enter a mathematical expression <Type QUIT to return to main loop>:";
 chomp (my $input = <STDIN>);
my $answer = eval ($input);
print "$answer \n";
print "\n Enter a mathematical expression <Type QUIT to return to main loop>: \n";

}
elsif ($input eq 'S') {
     print "Type something to make a list or hit Enter button to view all list from data:"; 
   chomp (my $input = <STDIN>);
   

my @list = $input;
my @sorted_list = sort $input;
print "Sort of list: @sorted_list\n";
my @stringname = ("Abby", "Caryl", "Fatty", "John", "Daniel", "Ryan");

    my @sort_list = sort @stringname;
    print "@sort_list\n";
    my @numbers = (22, 30, 45, 14, 13, 03, 11, 4);

    my @sort_num = sort @numbers;
    print "@sort_num\n";
 print "Enter a string<Type QUIT to return to main loop>:" ;       
}
elsif ($input eq 'D') {
print "\n D isn't it either\n";

}
elsif ($input eq 'R') {
print "Enter a path to a directory to read:";  
chomp (my $input = <STDIN>);
my $dir = '.';

#OPENING DIRECTORY
opendir(DIR,$dir) or die;
my @files = readdir(DIR);
closedir(DIR);
#@FILES ARRAY FILES
foreach(@files){
print $_,"\n"; 
}
print "Enter a string<Type QUIT to return to main loop>: \n" ; 
#exit 0;
}

elsif ($input eq 'F') {
print "Enter a path to a directory to read:";  
chomp (my $input = <STDIN>);

my $dir = '.';

#OPENING DIRECTORY
opendir(DIR,$dir) or die;


my @files = readdir(DIR);
#closeddir
closedir(DIR);

#@files array
foreach(@files){
print $_,"\n"; 
}
print "Please enter a pattern to search for in all files: " ;
#to search for subpattern loop
while(1){
    
   chomp (my $input = <STDIN>);
#name of the file ex.project1.pl under the directory package folder name Perlprogram 
   my $filename = 'project1.pl'; #filename
   
   #to read the file inside
open my $informationfile, $filename or die "Could not open file $filename: $!\n";

# line number 

my @string;
my $count;
while( my $line = <$informationfile>)  {  
 @string =  $line =~ /$input/g; 
  $count++;
  foreach my $x (@string) {
   print $filename . ": $x was found in Line " . $count, "\n"; 

}
}
print "Enter a path to a directory to read <Type QUIT to return to main loop>: ";  

exit 0;
#to close the file
#close $informationfile;
}
}

elsif ($input eq 'L') {
print "Enter some data to determine if the data is a palindrome: (Type QUIT to return to main loop) \n";
chomp (my $input = <STDIN>);
my @array = split //, $input;  #'split//' returns a list , of $input @array 
my $palindrome = 1; #variable with a value of 1
my $i = 0; #variable with a value of 0
# for (init; condition; increment)
for ($i=0;$i<@array;$i++) {
      # for (init; arraylist condition; increment to update loop control variable -1)
      if ($array[$i] ne $array[ -$i - 1 ]) {
        
    print  $palindrome ? q() : "The input is a palindrome\n";  # q() operator single quote string
    
       undef $palindrome;
        last
    }
    }
   print 'The input is', $palindrome ? q() : ' not', " a palindrome\n";  
 print "Enter some data to determine if the data is a palindrome: (Type QUIT to return to main loop)\n"; 
}
elsif ($input eq 'Q') {
 exit;;

}
else {
}
}





