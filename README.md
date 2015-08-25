Statistinio kalbos modelio kūrimo įrankis
--------------

Programinė įranga skirta kurti statistinį kalbos modelį


Kaip pasileisti
--------------
1. Atsidarykite su teksto redaktoriumi src/teksytnas.txt
2. Pakeiskite turinį taip kad jūsų tekstyno sakiniai būtų vienoje eilutėje.  pradžioje turi būti "<s>" ir pabaigoje turi būti </s>. Pvz: "<s> afrikos amžius </s>"
3. Paleiskite: kalbos_modelis.bat
4. Patikrinkite su shphinx: 
        bin\sphinx-20150402(r12906)-win32\pocketsphinx\bin\pocketsphinx_continuous -lm target\kalbos_modelis_lm.DMP -inmic yes -hmm bin\hmm\liepa-20_corpus8_0_mg13.cd_semi_750 -dict src\ieskotuvas3.dic -backtrace yes
 


Jei Neveikia
---------------

1. Sistema skundžiasi, kad neranda MSVCR110.dll bibliotekos:                                   	
    http://answers.microsoft.com/en-us/windows/forum/windows_8-winapps/the-program-cant-start-because-msvcr110dll-is/f052d325-3af9-4ae5-990b-b080799724db
2. Nematote lietuvikų raidžių
    Reikia pasikeisti Consolės font į "Lucida Console"

