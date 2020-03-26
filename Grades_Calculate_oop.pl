package Grades_Calculate;
use strict;
use warnings;
use Data::Dumper;

sub new {
    my ($class, %args) = @_;
    my $self = {};
    $self->{point} = $args{point};
    return bless $self, $class;
}

sub Calculate {
    my ($self) = @_;
    my $output;
    if ($self->{point} > 90) {
        $output = "A"
    } elsif ($self->{point} > 80) {
        $output = "B"
    } elsif ($self->{point} > 70) {
        $output = "C"
    } elsif ($self->{point} > 60) {
        $output = "D"
    } else {
        $output = "F"
    }
    return sprintf("%d -> %s\n", $self->{point}, $output);
}



1;
sub Main {
    while () {
        print("Point: ");
        my $point = <STDIN>;
        chomp($point);
        if ( $point =~ /^[0-9]$/ ) {
            my $g = Grades_Calculate->new(point => $point);
            print($g->Calculate());

        } else {
            die "Please Check Point!";
        }
    }
}

Main();