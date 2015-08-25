@echo off
echo Switch to utf8
chcp 65001
echo Paskaitykite daugiau faile README.txt
echo Reikia pasikeisti Consolės font į "Lucida Console"

bin\cmuclmtk-0.7-win32\text2wfreq < src\tekstynas.txt | bin\cmuclmtk-0.7-win32\wfreq2vocab > target\_zodynas.vocab
bin\cmuclmtk-0.7-win32\text2idngram -vocab target\_zodynas.vocab -idngram target/_ngram.idngram < src\tekstynas.txt
bin\cmuclmtk-0.7-win32\idngram2lm -vocab_type 0 -idngram target/_ngram.idngram -vocab target\_zodynas.vocab -arpa target\kalbos_modelis_txt.arpa
"bin\sphinx-20150402(r12906)-win32\sphinxbase\bin\sphinx_lm_convert" -i target\kalbos_modelis_txt.arpa -o target\kalbos_modelis_lm.DMP


