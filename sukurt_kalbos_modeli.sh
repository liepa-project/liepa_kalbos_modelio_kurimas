#!/bin/bash

text2wfreq < src/tekstynas.txt | wfreq2vocab > target/tekstynas.vocab
text2idngram -vocab target/tekstynas.vocab  -idngram target/tekstynas.idngram < src/tekstynas.txt
idngram2lm -vocab_type 0 -idngram target/tekstynas.idngram  -vocab target/tekstynas.vocab -arpa target/tekstynas.arpa
sphinx_lm_convert -i target/tekstynas.arpa -o target/tekstynas.lm.DMP
