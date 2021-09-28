# File: /main.mk
# Project: mkpm-hello
# File Created: 27-09-2021 17:45:48
# Author: Clay Risser
# -----
# Last Modified: 27-09-2021 19:30:51
# Modified By: Clay Risser
# -----
# BitSpur Inc (c) Copyright 2021
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

.PHONY: hello
hello:
	@echo Hello, world!
	@echo
	@echo 'BitSpur Inc (c) Copyright 2021'
	@echo
	@echo this message is coming from the hello mkpm package
	@echo you can find this package at the link below
	@echo https://gitlab.com/bitspur/community/mkpm-hello
	@echo
	@echo this package was published to the mkpm stable repo
	@echo you can find the mkpm stable repo at the link below
	@echo https://gitlab.com/bitspur/community/mkpm-stable
