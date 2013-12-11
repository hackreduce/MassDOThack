use strict;

foreach my $in_name (`ls *.csv`) 
{
    $in_name =~ s/\n//gis;

    my $out_name = $in_name;
    $out_name =~ s/.csv/.zip/gis;

    print "zip -9 $out_name $in_name &\n";
}
