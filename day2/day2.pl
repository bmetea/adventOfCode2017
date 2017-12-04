#!/usr/bin/perl


my $name_of_file = "day2.txt";
$solution = solve($name_of_file);
print "The checksum is $solution\n";

sub solve {
    my ( $filename ) = @_; 
    my $checksum = 0;

    open(my $fh, '<:encoding(UTF-8)', $filename)
        or die "Could not open file '$filename' $!";
    while (my $row = <$fh>) {
        chomp $row;
        my @sub_array = split(' ',$row);
        $checksum += get_min_max(@sub_array);
    }
    return $checksum;
}

sub get_min_max {
    my ( @row_array ) = @_;
    $min = int($row_array[0]);
    $max = int($row_array[0]);

    foreach $number (@row_array){
        $min = int($number) if int($number) < $min;
        $max = int($number) if int($number) > $max
    }
    # print "Min is $min and max is $max\n";
    return $max - $min;
}