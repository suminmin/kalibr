#!/bin/bash

# docker run --rm -v C:\workspace\raspi_Public\raspi_stream:/root/raspi_stream -v C:\workspace\local\kalibr-master:/root/kalibr -it stereolabs/kalibr /bin/bash

# docker run -it -e "DISPLAY" -e "QT_X11_NO_MITSHM=1" -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" -v C:\workspace\raspi_Public\raspi_stream:/root/raspi_stream -v C:\workspace\local\kalibr-master:/root/kalibr -it stereolabs/kalibr /bin/bash

docker run --rm -it -e "DISPLAY=host.docker.internal:0.0" -e "QT_X11_NO_MITSHM=1" -v C:\workspace\raspi_Public\raspi_stream:/root/raspi_stream -v C:\workspace\local\kalibr-master:/root/kalibr -it stereolabs/kalibr /bin/bash
