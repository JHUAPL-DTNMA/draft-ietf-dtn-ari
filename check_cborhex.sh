#!/bin/bash
# Read stdin and verify it as valid CBOR against a CDDL schema.
set -e
SELFDIR=$(readlink -f $(dirname "${BASH_SOURCE[0]}"))

COMBINED_CDDL=$1

if [ -n "${COMBINED_CDDL}" ]
then
    cat | xxd -rp -c256 | cddl "${COMBINED_CDDL}" validate -
else
    cat | xxd -rp -c256 | cbor2diag.rb
fi
