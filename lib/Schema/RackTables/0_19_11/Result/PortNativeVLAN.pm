use utf8;
package Schema::RackTables::0_19_11::Result::PortNativeVLAN;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::RackTables::0_19_11::Result::PortNativeVLAN

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

=head1 TABLE: C<PortNativeVLAN>

=cut

__PACKAGE__->table("PortNativeVLAN");

=head1 ACCESSORS

=head2 object_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 port_name

  data_type: 'char'
  is_foreign_key: 1
  is_nullable: 0
  size: 255

=head2 vlan_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "object_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "port_name",
  { data_type => "char", is_foreign_key => 1, is_nullable => 0, size => 255 },
  "vlan_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</object_id>

=item * L</port_name>

=item * L</vlan_id>

=back

=cut

__PACKAGE__->set_primary_key("object_id", "port_name", "vlan_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<port_id>

=over 4

=item * L</object_id>

=item * L</port_name>

=back

=cut

__PACKAGE__->add_unique_constraint("port_id", ["object_id", "port_name"]);

=head1 RELATIONS

=head2 port_allowed_vlan

Type: belongs_to

Related object: L<Schema::RackTables::0_19_11::Result::PortAllowedVLAN>

=cut

__PACKAGE__->belongs_to(
  "port_allowed_vlan",
  "Schema::RackTables::0_19_11::Result::PortAllowedVLAN",
  {
    object_id => "object_id",
    port_name => "port_name",
    vlan_id   => "vlan_id",
  },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "RESTRICT" },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-10-22 23:02:48
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:iG/FrWOF+fSEwrh75F0PfQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
