# File: /main.mk
# Project: mkpm-hello
# File Created: 27-09-2021 17:45:48
# Author: Clay Risser
# -----
# Last Modified: 30-09-2021 04:47:04
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
ifneq ($(patsubst %.exe,%,$(SHELL)),$(SHELL))
	@echo.
	@echo 88        88              88  88
	@echo 88        88              88  88
	@echo 88        88              88  88
	@echo 88aaaaaaaa88   ,adPPYba,  88  88   ,adPPYba,
	@echo 88""""""""88  a8P_____88  88  88  a8"     "8a
	@echo 88        88  8PP"""""""  88  88  8b       d8  aaa
	@echo 88        88  "8b,   ,aa  88  88  "8a,   ,a8"  "88
	@echo 88        88   `"Ybbd8"'  88  88   `"YbbdP"'   d8'
	@echo                                               8"
	@echo.
	@echo.
	@echo                                              88           88  88
	@echo                                              88           88  88
	@echo                                              88           88  88
	@echo 8b      db      d8   ,adPPYba,   8b,dPPYba,  88   ,adPPYb,88  88
	@echo `8b    d88b    d8'  a8"     "8a  88P'   "Y8  88  a8"    `Y88  88
	@echo  `8b  d8'`8b  d8'   8b       d8  88          88  8b       88  ""
	@echo   `8bd8'  `8bd8'    "8a,   ,a8"  88          88  "8a,   ,d88  aa
	@echo     YP      YP       `"YbbdP"'   88          88   `"8bbdP"Y8  88
	@echo.
	@echo BitSpur Inc (c) Copyright 2021
	@echo.
	@echo this message is coming from the hello mkpm package
	@echo you can find this package at the link below
	@echo https://gitlab.com/bitspur/community/mkpm-hello
	@echo.
else
	@echo
	@echo '88        88              88  88'
	@echo '88        88              88  88'
	@echo '88        88              88  88'
	@echo '88aaaaaaaa88   ,adPPYba,  88  88   ,adPPYba,'
	@echo '88""""""""88  a8P_____88  88  88  a8"     "8a'
	@echo '88        88  8PP"""""""  88  88  8b       d8  aaa'
	@echo '88        88  "8b,   ,aa  88  88  "8a,   ,a8"  "88'
	@echo '88        88   `"Ybbd8"'"'  88  88   \`"'"YbbdP"'"'   d8'"
	@echo '                                              8"'
	@echo
	@echo
	@echo '                                             88           88  88'
	@echo '                                             88           88  88'
	@echo '                                             88           88  88'
	@echo '8b      db      d8   ,adPPYba,   8b,dPPYba,  88   ,adPPYb,88  88'
	@echo '`8b    d88b    d8'"'  a8"'"     "8a  88P'"'   "'"Y8  88  a8"    `Y88  88'
	@echo ' `8b  d8'"'\`8b  d8'   8b       d8  88          88  8b       88  "'""'
	@echo '  `8bd8'"'  \`8bd8'    "'"8a,   ,a8"  88          88  "8a,   ,d88  aa'
	@echo '    YP      YP       `"YbbdP"'"'   88          88   \`"'"8bbdP"Y8  88'
	@echo
	@echo 'BitSpur Inc (c) Copyright 2021'
	@echo
	@echo this message is coming from the hello mkpm package
	@echo you can find this package at the link below
	@echo https://gitlab.com/bitspur/community/mkpm-hello
	@echo
endif
	@echo this package was published to the mkpm stable repo
	@echo you can find the mkpm stable repo at the link below
	@echo https://gitlab.com/bitspur/community/mkpm-stable
