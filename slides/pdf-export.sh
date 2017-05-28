#! /bin/bash
#
# NOTE: do *not* include print-pdf query string for this.

exec docker run \
     --rm \
     --net=host \
     -v $(pwd):/slides:rw,Z \
     astefanutti/decktape \
     -s 960x720 \
     reveal http://localhost:23232/slides.html export.pdf
