# This file is licensed under the Affero General Public License version 3 or
# later. See the COPYING file.
# @author Ilja Neumann <ineumann@owncloud.com>

extra_dirs=docs

# Include standard app makefile targets provided by core
include ../../build/rules/help.mk
include ../../build/rules/dist.mk
include ../../build/rules/test-php.mk
include ../../build/rules/clean.mk

.PHONY: test-codecheck
test-codecheck:
	$(occ) app:check-code $(app_name) -c private -c strong-comparison

.PHONY: test-codecheck-deprecations
test-codecheck-deprecations:
	$(occ) app:check-code $(app_name) -c deprecation
