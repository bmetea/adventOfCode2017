#!/usr/bin/perl
use POSIX;


solve(12);

sub solve {
    my ( $puzzle_input ) = @_;

    $squared = 0;
    $base = 0;

    until ( $squared > $puzzle_input ){
        $squared = $base**2;
        $base++;
    }

    $base -=1;

    # distanta de la coltul drept la numarul meu
    $difference = $squared-$puzzle_input;


    # aflam coltul din stanga numarului
    until ($difference < $base){
        $squared-=$base;
    }

    $distance_from_centre = abs(floor($base/2) - $difference);

    $distance = floor($base/2);

    # print " Diferenta de la margine : $difference\n";
    print " Distanta de la centru : $distance_from_centre\n";


    
    # print "The bottom right is : $squared\n";
    # print "This is a square of : $base\n";
    
    # print "The difference between squared and input is : $difference \n";
    # $side_length = $difference-$base;
    # print "Distanta de la margine : $side_length\n";
    # $half_base = ceil($base/2);
    # print "Jumatate de baza : $half_base\n";

    # $distance_from_mid_base = $half_base - $side_length;

    # print "distanta pana la centrul bazei este : $distance_from_mid_base\n";





}