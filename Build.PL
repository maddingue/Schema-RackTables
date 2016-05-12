use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Schema::RackTables',
    license             => 'perl',
    dist_author         => 'Sebastien Aperghis-Tramoni (saper@cpan.org)',
    dist_version_from   => 'lib/Schema/RackTables.pm',
    meta_merge          => {
        resources       => {
            repository  => 'https://github.com/maddingue/Schema-RackTables',
        },
    },
    requires => {
        'Carp'                  => 0,
        'DBIx::Class::Schema'   => 0,
        'File::Basename'        => 0,
        'File::Spec::Functions' => 0,
        'JSON::XS'              => 0,
        'Moo'                   => 0,
    },
    build_requires => {
        'Test::More'        => 0,
    },
    add_to_cleanup      => [ 'Schema-RackTables-*' ],
);

$builder->create_build_script();
