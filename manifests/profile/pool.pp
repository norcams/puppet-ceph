#
#   Copyright (C) 2014 Nine Internet Solutions AG
#   Copyright (C) 2015 Norges Teknisk-Naturvitenskapelige Universitet
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
# Author: David Gurtner <aldavud@crimson.ch>
# Author: David Moreau Simard <dmsimard@iweb.com>
# Author: Erlend Midttun <erlend.midttun@ntnu.no>
#
# Class: ceph::profile::pool
#
# Profile for a Ceph pool
#
class ceph::profile::pool {
  require ::ceph::profile::client

  class { '::ceph::pools':
    args => $ceph::profile::params::pools,
  }
}
