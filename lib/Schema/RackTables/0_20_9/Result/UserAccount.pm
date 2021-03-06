use utf8;
package Schema::RackTables::0_20_9::Result::UserAccount;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_20_9::Result::UserAccount

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<UserAccount>

=cut

__PACKAGE__->table("UserAccount");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 user_name

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 user_password_hash

  data_type: 'char'
  is_nullable: 1
  size: 40

=head2 user_realname

  data_type: 'char'
  is_nullable: 1
  size: 64

=cut

__PACKAGE__->add_columns(
  "user_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "user_name",
  { data_type => "char", default_value => "", is_nullable => 0, size => 64 },
  "user_password_hash",
  { data_type => "char", is_nullable => 1, size => 40 },
  "user_realname",
  { data_type => "char", is_nullable => 1, size => 64 },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_id>

=back

=cut

__PACKAGE__->set_primary_key("user_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<user_name>

=over 4

=item * L</user_name>

=back

=cut

__PACKAGE__->add_unique_constraint("user_name", ["user_name"]);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:01:01
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bXGFL62PVDE1Ge2ucpC7Sg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
