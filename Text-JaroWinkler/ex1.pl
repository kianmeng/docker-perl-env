# vi:et:sw=4 ts=4 ft=perl
#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
use utf8;

use Text::JaroWinkler qw( strcmp95 );

# Sample test strings from https://asecuritysite.com/forensics/simstring
my @test_cases = (
    ['Loss of insignificant words', 'loans and accounts', 'loans accounts'],
    ['Try Small changes', 'loans and accounts', 'loan and account'],
    ['Try Rearrangment of words', 'loans and accounts', 'accounts and loans'],
    ['Try Punctuation', qq|'fishing, "camping"; and 'forest\$"|, q|fishing camping and forest|],
    ['Try Case', 'Loan Account and Dealing', 'LOAN ACCOUNT DEALING'],
    ['Try Spacing', 'LoanAccountDealing', 'Load, Account, Dealing'],
    ['Try Spacing', 'LoanAccountDealing', 'Load, Account, Dealing'],
);

my $length_of_common_prefixes = 11;
foreach my $test_case (@test_cases) {
    say q|=| x 60;
    say q|Test Case: |, $test_case->[0];
    say q|String 1: |, $test_case->[1];
    say q|String 2: |, $test_case->[2];
    say q|Jaro-Winkler Similarity: |,
        strcmp95($test_case->[1], $test_case->[2], $length_of_common_prefixes);
    say q||;
}

1;

__END__
$ perl ex1.pl

============================================================
Test Case: Loss of insignificant words
String 1: loans and accounts
String 2: loans accounts
Jaro-Winkler Similarity: 0.865454545454545

============================================================
Test Case: Try Small changes
String 1: loans and accounts
String 2: loan and account
Jaro-Winkler Similarity: 0.975

============================================================
Test Case: Try Rearrangment of words
String 1: loans and accounts
String 2: accounts and loans
Jaro-Winkler Similarity: 0.796103896103896

============================================================
Test Case: Try Punctuation
String 1: 'fishing, "camping"; and 'forest$"
String 2: fishing camping and forest
Jaro-Winkler Similarity: 0.871212121212121

============================================================
Test Case: Try Case
String 1: Loan Account and Dealing
String 2: LOAN ACCOUNT DEALING
Jaro-Winkler Similarity: 1

============================================================
Test Case: Try Spacing
String 1: LoanAccountDealing
String 2: Load, Account, Dealing
Jaro-Winkler Similarity: 0.901010101010101

============================================================
Test Case: Try Spacing
String 1: LoanAccountDealing
String 2: Load, Account, Dealing
Jaro-Winkler Similarity: 0.901010101010101
