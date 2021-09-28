# File: /Makefile
# Project: mkpm-hello
# File Created: 27-09-2021 17:45:48
# Author: Clay Risser
# -----
# Last Modified: 27-09-2021 19:07:14
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

include mkpm.mk
include main.mk

GIT ?= git
PACK_DIR := $(MKPM_TMP)/pack

.PHONY: pack
pack:
	@rm -rf $(PACK_DIR) $(NOFAIL) && mkdir -p $(PACK_DIR)
	@cp main.mk $(PACK_DIR)
	@cp mkpm.mk $(PACK_DIR)
	@cp LICENSE $(PACK_DIR) $(NOFAIL)
	@for f in $(shell [ "$(MKPM_FILES_REGEX)" = "" ] || \
		$(FIND) . -type f -not -path './.git/*' | $(SED) 's|^\.\/||g' | \
		$(GREP) -E "$(MKPM_FILES_REGEX)") \
		$(shell $(GIT) ls-files | $(GREP) -E "^README[^\/]*$$"); do \
			PARENT_DIR=$$(echo $$f | $(SED) 's|[^\/]\+$$||g' | $(SED) 's|\/$$||g') && \
			([ "$$PARENT_DIR" != "" ] && mkdir -p $(PACK_DIR)/$$PARENT_DIR || true) && \
			cp $$f $(PACK_DIR)/$$f; \
		done
	@tar -cvzf $(MKPM_NAME).tar.gz -C $(PACK_DIR) .

.PHONY: publish
publish: pack

.PHONY: sudo
sudo:
	@sudo true

.PHONY: clean
clean:
	@$(GIT) clean -fXd

.PHONY: purge
purge: clean
