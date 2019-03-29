{
    package FooBar;

    sub new {
        my $package = shift;
        my $class = ref($package) || $package;

        my $self = {@_};
        bless $self, $class;
    }
}

my $foobar = FooBar->new;
FooBar::new;

1;
