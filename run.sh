#!/bin/bash

set -eux

# Create compressed version
convert -quality 99% input_0.png input_Q.jpg

# Run algorithm
/zero input_0.png input_Q.jpg

# Draw results
python3 /create_votemap.py votes.png
python3 /create_votemap.py votes_jpeg.png
python3 /merge_zero.py mask_f.png mask_m.png luminance.png
