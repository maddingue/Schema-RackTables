use utf8;
package Schema::RackTables::0_14_4::Result::Dictionary;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_14_4::Result::Dictionary

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

=head1 TABLE: C<Dictionary>

=cut

__PACKAGE__->table("Dictionary");

=head1 ACCESSORS

=head2 chapter_no

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 dict_key

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 dict_value

  data_type: 'char'
  is_nullable: 1
  size: 128

=cut

__PACKAGE__->add_columns(
  "chapter_no",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "dict_key",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "dict_value",
  { data_type => "char", is_nullable => 1, size => 128 },
);

=head1 PRIMARY KEY

=over 4

=item * L</chapter_no>

=item * L</dict_key>

=back

=cut

__PACKAGE__->set_primary_key("chapter_no", "dict_key");

=head1 UNIQUE CONSTRAINTS

=head2 C<chapter_no>

=over 4

=item * L</chapter_no>

=item * L</dict_value>

=back

=cut

__PACKAGE__->add_unique_constraint("chapter_no", ["chapter_no", "dict_value"]);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:11:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MLA9EwICY/TbuhpcTL8oDQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;