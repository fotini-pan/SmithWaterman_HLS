#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/foteini/Workspace/SmithWaterman_HLS/SW/sw_prj/naive_solution/.autopilot/db/a.g.bc ${1+"$@"}
