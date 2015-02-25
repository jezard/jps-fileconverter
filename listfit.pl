
#!/usr/bin/perl

    use strict;
    use warnings;

    my $dir = '/var/www/jps-frontend/uploads';

    opendir(DIR, $dir) or die $!;

    while (my $file = readdir(DIR)) {

        # We only want files
        next unless (-f "$dir/$file");

        # Use a regular expression to find files ending in .txt
        next unless ($file =~ m/\.fit$/);

        print "$file\n";
    }

    closedir(DIR);
    exit 0;
