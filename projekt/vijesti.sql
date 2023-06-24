-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 11:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vijesti`
--

-- --------------------------------------------------------

--
-- Table structure for table `clanci`
--

CREATE TABLE `clanci` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) NOT NULL,
  `vrijeme` varchar(32) NOT NULL,
  `naslov` varchar(100) NOT NULL,
  `sazetak` text NOT NULL,
  `text` text NOT NULL,
  `slika` varchar(64) NOT NULL,
  `kategorija` varchar(64) NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clanci`
--

INSERT INTO `clanci` (`id`, `datum`, `vrijeme`, `naslov`, `sazetak`, `text`, `slika`, `kategorija`, `arhiva`) VALUES
(8, '21.06.2023.', '22:33', 'Halestorm se vraća u Zagreb', 'Američka hard rock četvorka Halestorm, godinu dana nakon što su nastupili kao gosti grupe Alter Bridge u Domu sportova, 22. studenog vraćaju se u Zagreb, na samostalni nastup u Tvornici kulture.', 'Halestorm, bend iz Pennsylvanije, koji predvodi ih vokalistica i gitaristica Lzzy Hale, uz bubnjara Arejayja Halea, gitarista Joe Hottingera i basista Josha Smitha (čija obitelj je iz Zadra), zajedno su postali pojam moćnog live benda. Na sceni su aktivni od kraja 90-tih, ali su prvi proboj doživjeli oko 2005., kada su krenuli na intenzivne turneje. Do danas su ostali prepoznatljivi upravo po tim turnejama, zabilježivši čak do 250 koncerata godišnje.<br><br>\r\n\r\nOno što je krenulo kao dječji san Lzzy i Arejay Halea pretvorilo se u jedan od najhvaljenijih rock bendova posljednja dva desetljeća koji osigurava sjajne kritike nastupa uživo po svim dijelovima svijeta, nezaboravne i žestoke svirke, koncerte na najvećim svjetskim pozornicama i singlove koji zauzimaju vrhove svjetskih ljestvica.<br><br>\r\n\r\nSpomenuti Grammy grupa je osvojila 2012. godine i to za pjesmu “Love Bites (So Do I)”, pobijedivši u finalu Marilyn Mansona te grupe Iron Maiden, Anthrax i Lamb Of God. U popis nagrada friško ubrajaju UK Heavy Music Awards za najboljeg međunarodnog\r\nizvođača, a nedavno su objavili i duet “Terrible Things” s Grammyjemnagrađenom country pjevačicom Ashley McBryde.\r\n\r\nNa sceni su aktivni od kraja 90-tih, ali su pravi proboj doživjeli oko 2005. godine kada kreću na intenzivne turneje. Do danas su ostali prepoznatljivi upravo po non-stop turnejama, zabilježivši čak do 250 koncerata godišnje. Scenu su dijelili s ogromnim imenima kao što su Alice Cooper, Evanescence, Disturbed, Avenged Sevenfold, Bullet For My Valentine te Alter Bridge.<br><br>\r\n\r\nBend je do danas objavio pet studijskih albuma, prvi od njih, eponimni album, nastao je 2009., a posljednje glazbeno izdanje, prošlogodišnji “Back From Dead” imat ćemo priliku čuti i u Tvornici, gdje će kao predgrupa Halestormu nastupiti rockeri Black Veil Brides.', 'halestorm.jpg', 'Glazba', 0),
(10, '21.06.2023.', '23:04', 'Trent Reznor o stanju glazbe', 'Frontmen Nine Inch Nailsa Trent Reznor raspravljao je o svom odnosu prema glazbi u novom intervjuu s Rickom Rubinom, otkrivajući da ga ovih dana više zanima skladanje filmske glazbe nego pisanje i turneja.', 'Posao glazbenika sastavljen je od snimanja i izdavanja albuma, većih ili manjih turneja, a zatim ponavljanja ciklusa, a to Reznor više baš i ne želi raditi. “Ne želim biti daleko od svoje djece”, objasnio je. “Ne želim propustiti njihove živote kako bih otišao učiniti nešto za što sam zahvalan što mogu učiniti, i cijenim što su ljudi došli vidjeti, ali činio sam to dovoljno.” Objasnio je kako je to shvatio na početku pandemije, kada se njegovo prvotno uzbuđenje zbog prilike da više piše pretvorilo u želju da ne radi ništa.\r\n<br><br>\r\nGlazbena industrija također se značajno promijenila otkako su se Nine Inch Nails proslavili, a promijenio se i odnos društva prema rock glazbi, posebno prema rock albumima. Tu promjenu Reznor je istaknuo kao još jedan razlog zašto bi se radije držao skladanja.<br><br>\r\n“U kontekstu Nine Inch Nailsa, u smislu publike i kulture važnost glazbe – ili nedostatak važnosti glazbe – u današnjem svijetu, iz moje perspektive, pomalo je porazna. Općenito mi se čini – a to govorim kao 57-godišnjak – da je glazba bila ono čime sam se bavio kad sam imao vremena. Slušao sam glazbu. Nisam to radio u pozadini dok sam radio pet drugih stvari i nisam to tretirao kao potrošnu robu.”\r\n<br><br>\r\nDalje je nastavio: “Nekako mi nedostaje pozornost koju je glazba imala, nedostaje mi kritička pozornost. Nije da me zanima mišljenje kritičara, ali poslati nešto u svijet i osjetiti da je dotaklo mjesta, moglo je dobiti negativnu ili pozitivnu recenziju, ali netko je to čuo, to je kulturološki potvrđeno na svoj način. Sada se ne mogu sjetiti nijedne recenzije do koje mi je danas stalo, a i kojoj uopće vjerujem. Zapravo, ChatGPT bi vjerojatno mogao napraviti bolji posao, znaš? Ili trenutno obavlja posao. I to čini ono što smatram neplodnim okruženjem za puštanje glazbe Nine Inch Nailsa u svijet.”<br><br>\r\nStoga možda više nećemo čuti puno novog Nine Inch Nailsa, ali barem je tu Reznorova filmska glazba. Reznor i njegov dugogodišnji suradnik Atticus Ross nedavno su snimili muziku za film “Bones and All” Luce Guadagnina iz 2022. godine te za novi “Teenage Mutant Ninja Turtles” film. Također je potvrđeno da će skladati glazbu za novi film Davida Finchera, “The Killer”. Njihov nagrađivani rad uključuje glazbu za filmove kao što su “Bird Box”, “The Girl With The Dragon Tattoo”, “Gone Girl” i “Mank”, a za “The Social Network” i “Soul” nagrađeni su Oscarom.', 'trent.jpg', 'Glazba', 0),
(11, '21.06.2023.', '23:23', 'Objavljen soundtrack za Barbie', 'Film “Barbie” Grete Gerwig u četvrtak je objavio novi trailer, a uz njega je predstavljen i službeni soundtrack filma, koji je kao i film, dobio svoj Instagram profil.', ' prvoj objavi na profilu Barbie, Margot Robbie čita novine u kojima se nalazi popis glazbenika koji su radili soundtrack za film.<br><br>\r\n\r\nNavedeni su Ava Max, Charli XCX, Dominic Fike, Dua Lipa, Fifty Fifty, Gayle, Haim, Ice Spice, Kali, Karol G, Khalid, Lizzo, Nicki Minaj, PinkPantheress, Ryan Gosling, Tame Impala i Kid Laroi. Lista još nije potpuna, već će kako se premijera bude bližila, biti objavljen kompletan lineup.<br><br>\r\n\r\nAlbum izlazi 21. srpnja, istog dana kada film stiže u kina diljem svijeta.Izvršni producent soundtracka je Mark Ronson, a Dua Lipa, koja glumi sirenu u filmu i koja je ranije najavila svoje sudjelovanje na soundtracku, objavila je pjesmu “Dance The Night”.<br><br>\r\n\r\nUz nju, neočekivano, još jedna od zvijezda ima pjesmu za film, Ryan Gosling, koji glumi Kena, iako, nije mu to prvi put da je zapjevao, sjetimo se nagrađivanog “La La Landa” koji je dva Oscara osvojio za samu glazbu, a jedna je i “City of Stars” gdje upravo Gosling pjeva.', 'barbie-music.jpg', 'Glazba', 0),
(12, '21.06.2023.', '23:34', 'Izašao novi trailer za Barbie', 'Ovog ljeta ljubitelje filmova i Barbie svijeta očekuje ružičasta poslastica: film Barbie stiže u kina, a hype koji se stvara ovih dana čini uzbuđenje sve većim i većim. Aplikacija stvorena za prave fanove kreirala je urnebesne memeove, a mašta korisnika aplikacije pokazala je da u Barbie svijetu ima mjesta za sve', 'Kada se u 60-im godinama pojavila Barbie, bila je to lutkica utjelovljenje svega onoga što se od ženina izgleda očekuje: lijepa, punih usana, svijetlih očiju, duge plave kose, ženstvenih atributa i uskog struka. Kao takva, djevojčicama je postala omiljena igračka jer omiljena aktivnost bila je oblačiti Barbie u ružičaste lijepe outfite i na gumena joj stopala obuvati ružičaste štiklice.<br><br>\r\n\r\nNapraviti film o savršenoj Mattelovoj lutkici i njezinom partneru Kenu velik je projekt, no odabir glumaca savršenih za ovu ulogu nije bio velik izazov. Rješenje se nalazi u dvama najpoželjnijim glumcima u Hollywoodu trenutno: Margot Robbie kao Barbie i Ryan Gosling kao Ken.<br><br>\r\n\r\nIpak, u svijetu lutaka ne postoji samo jedna Barbie, već više pa u filmu glumi i pop zvijezda Dua Lipa, Nicola Coughlan i Ana Cruz Kayne.', 'barbie.jpg', 'Filmovi', 0),
(13, '21.06.2023.', '23:45', 'Novi Indiana Jones stiže u 2023.', 'Glumac Harrison Ford potvrdio je da peti dio franšize Indiana Jones dolazi u kina u lipnju 2023. godine', 'Veteranski glumac datum je otkrio nakon izvedbe svjetski poznate glazbene teme tog filma skladatelja Johna Williamsa na proslavi \"Ratova zvijezda\" u Anaheimu u Kaliforniji.\r\n\r\n<br><br>\r\nFord se pridružio Williamsu na pozornici, čestitao mu nedavno proslavljeni 90. rođendan i rekao mu da ga glazba franšize prati u stopu.<br><br>\r\n\r\n\"Znate, sretan sam zbog toga\", izjavio je Harrsion Ford.<br><br>\r\n\r\n\"Ta glazba je svirala u operacijskoj sali kad sam imao posljednju kolonoskopiju\", rekao je, nasmijavši publiku. <br><br>\r\n\r\nFord je dodao da je najnoviji nastavak Indiane Jonesa, s Williamsovom partiturom, \"gotovo završen\" i da je \"stvarno ponosan\" na njega.<br><br>\r\n\r\nOtkrio je da film izlazi 30. lipnja 2023. ', 'indiana-jones.jpg', 'Filmovi', 0),
(14, '21.06.2023.', '23:56', 'Prve reakcije na Nemoguću misiju 7', 'Tom Cruise ovih je dana posebno interesantan. Njegovo pojavljivanje sa Shakirom vratilo ga je u centar događanja, a novi nastavak filma \"Nemoguća misija\" pokrenula zanimanje i za film, ali i za njegov odnos s kolegicom sa seta', 'Tom Cruise stigao je u Italiju, a u Rimu je u ponedjeljak premijerno prikazan novi nastavak filma \"Nemoguća misija\". Film koji broji već sedmi nastavak ima veliku zajednicu obožavatelja, a svi su posebno uzbuđeni vidjeti najnoviji nastavak. Oni koji su u ponedjeljak navečer imali čast prisustvovati premijeri u Rimu dali su svoj sud o filmu, a čini se da im je \"dobro sjeo\".<br><br>\r\n\r\nIako je Cruise kasnio na premijeru čak 90 minuta, čim se pojavio s redateljem i dugogodišnjim suradnikom Christopherom McQuarriejem zaradio je glasan pljesak. Publika je skandirala ime glavne zvijezde, a on je uživao u trenucima slave.\r\n<br><br>\r\nPremijera u Rimu posebno je zanimljiva jer je Rim prikazan i u filmu, a kulise glavnog grada Italije privuć će još više turista koji će sigurno htjeti posjetiti lokacije prikazane u filmu.<br><br>\r\nReakcije na novi film preplavile su Twitter, većina njih predviđa veliki uspjeh, a filmski kritičar Scott Mantz napisao je da je film vrijedan čekanja te ga proglasio najboljim nastavkom do sada. Sretnici koji su pogledali film pohvalili su nove likove, ali i akcijske trenutke u filmu koji svrstavaju najnoviji nastavak među 2-3 najboljih svih vremena u franšizi.', 'mission-impossible.jpg', 'Filmovi', 0),
(18, '22.06.2023.', '18:07', 'Florence + The Machine u Puli', 'Izvještaj s koncerta Florence + The Machine u pulskoj Areni.', 'Unatoč solidnom planiranju s moje strane i solidno obavljenom poslu od strane organizatora koncerta, Pula vas uvijek može iznenaditi nedostatkom parkirnih mjesta i vječitim građevinskim radovima, pa posljedično preusmjeravanjem prometa kroz ionako zakučastu mrežu uličica, obaveznih smjerova, zabranjenih skretanja, štogod, uglavnom sasvim dovoljno za pristojno kašnjenje unatoč najboljoj namjeri.<br><br>\r\n\r\nTako se dogodilo da uspijem propustiti veći dio nastupa najnovijeg sjajnog projekta Dunje Ercegović Bad Daughter, kojeg sam zaista htjela čuti u takvom ambijentu. Nekoliko posljednjih stvari u setu orilo se Arenom dok sam obavljala ulaz, pretres i popratne aktivnosti, sakriveno gustom zelenom mrežom od znatiželjnika bez karte, ali sasvim dovoljno da se uvjerim da su oni zaslužili biti tu – zvučali su zaista sjajno. Nadam se što prije ih uhvatiti na nekom nastupu, ostala sam im dužna.<br><br>\r\n\r\nVeć prvi taktovi “Heaven Is Here” kojom Florence + The Machine započinju cijelu Dance Fever turneju najavili su da nas čeka dobra koncertna večer – Florence i bend u top formi instant su pretvorili Arenu u crkvu glazbe i plesa i podigli cijelu publiku na noge, i ne kažem slučajno crkvu, budući da je dio pjesama s aktualnog albuma “Dance Fever” zaista temeljen na svečanim i veličanstvenim napjevima sličnim starim crkvenim napjevima, kao što se i tematski često poziva na prozivanje viših sila, kako pozitivnih, tako i negativnih, a Florence često utjelovljuje tu dualnost ljudske prirode, čas u svom anđeoskom obliku, čas hrvajući se s vragom u sebi. No, više nego išta, u Areni je bila prava vila – bosa kao i inače na koncertima, s lepršavom haljinom koja se prilagođavala njezinim elegantnim, gipkim, teatralnim pokretima, čak su i obraćanja publici bila nekako bajkovito entuzijastična i zarazna.<br><br>\r\n\r\nSetlista je bila bazirana dijelom na novom albumu, a djelom na starim hitovima – jednako sam uživala u svim tim trenucima, a velik dio publike, posebno na parteru, pokazao je da vjerno prate bend, jednako oduševljeno reagirajući na oboje.<br><br>\r\n\r\nOčekivano, Arena je u nekoliko navrata zaista kolektivno zapjevala, najprije u “Dog Days Are Over” u kojoj nas je Florence natjerala da spremimo mobitele i budemo u trenutku, vrlo uporno, ali istovremeno i nevjerojatno šarmantno zahtijevajući da nestanu svi do jednoga, pa da svi zajedno odskačemo prvi highlight večeri. Naravno da se slično ponovilo još nekoliko puta u setu, na očekivanim dijelovima, no isto toliko bili su impresivni i trenuci u kojima je Arena zanijemila i svatko do nas ostao praktički jedan na jedan s Florence i njezinim moćnim, moćnim vokalom koji je odjekivao Arenom u “Free”, “Big God”, “My Love”, “The Bomb”, “Morning Elvis”, introspektivnim, duboko emotivnim i razornim pjesmama.<br><br>\r\n\r\nPoruka koju Florence + The Machine šire ovom turnejom uspješno je prenesena i na pulsku publiku – u najavi za “Choreomania” (choreomania – od grčkog “choreo” – ples i “mania” – ludilo, u prijevodu plesna manija ili plesna kuga, društveni fenomen kolektivnog plesanja koji još uvijek nije u potpunosti objašnjen) ispričala nam je koliko su joj nedostajali nastupi, publika i kolektivno pjevanje i plesanje u kojem oduvijek pronalazi inspiraciju, te koliko je izolacija te vrste utjecala na stvaranje samog albuma “Dance Fever”. Publika ju je bezrezervno podržala, poslušala, zapjevala i zaplesala, puneći pozitivnom energijom i Florence i bend, koliko i jedni druge. Kad je Florence rekla da čučnemo, čučnuli smo, kad je rekla da skačemo, skakali smo, kad je rekla da upalimo baklje, upalili smo svi prethodno zabranjene mobitele i osvijetlili Arenu za zaista impresivan prizor i trenutak.', 'florence.jpg', 'Glazba', 0),
(54, '20.06.2023.', '20:51', 'Lebanon Hanover u Močvari', 'Lebanon Hanover čine Larissa Iceglass i William Maybelline.', 'Unatoč tome što se inspiracije u glazbi Lebanon Hanovera mogu uočiti i relativno lako izdvojiti, uživo sam se uvjerila da je istina ono što sam pomišljala dok sam duo slušala unutar svoja 4 zida, a to je da ih se, vrlo teško, pogotovo ‚na prvu loptu‘, može smjestiti u određenu žanrovsku ladicu. Iako su njihove inspiracije očite (djela romantičara kao što je William Wordsworth, gloomy post punk osamdesetih, film noir samo su neki od njih) glazba i performans im nisu ograničeni na određeno razdoblje ili žanr, već se ističu sami po sebi. Lebanon Hanover nije žanr: Lebanon Hanover je Lebanon Hanover, a bendove u čijoj se muzici toliko toga događa da dobiješ migrenu dok ih pokušavaš suziti na jednu ili dvije kategorije su oni najviše vrijedni pažnje.<br><br>\r\n\r\nTijekom nastupa na nekim pjesmama je pjevala Larissa, dok je u drugima William preuzimao ulogu vokala. Ta sama izmjena vokala – u stilu ‚malo ja, malo ti‘ – unosila je neku raznolikost i ostvarivala drugačiji efekt na publiku koja je, doduše, već od početka plesala – nekad melankoličnije, a nekad više vodeći se primjerom Maybellinea čiji su me pokreti na momente asocirali na neobična, ali pamtljiva kretanja neponovljivog Iana Curtisa. Maybellinovo divlje plesanje na pozornici otpustilo je kočnice svima nama koji smo nakon napetog tjedna jedva dočekali petak navečer u crnilu Močvare.<br><br>\r\n\r\nZanimljivo mi je što nisam čula da se ljudi žale na nešto što je često prvi prigovor ovakvom tipu koncerta – na njegovu duljinu. Osobno mislim da se dvojcu nema što zamjeriti jer su u sat i 15 minuta – koliko su otprilike svirali – ovi majstori melankolije i nostalgije predstavili setlistu s ključnim sastojcima njihovog dosadašnjeg kataloga. Najjače rekacije ostvarile su, naravno, “Gallowdance”, “Babes of the 80s”, “Die World” i “Totaly Tot”.<br><br>\r\n\r\nŠto još reći osim da je sinoćnji koncert potaknuo svima potreban ples u znaku pobune protiv tuge, jer kako kažu Larissa i William – „sadness is rebellion“. Lebanon Hanover su, nakon već spomenutog sjajnog Boy Harshera – još jednom dokazali da dark wave ne samo da nije mrtav, već je življi nego ikad prije s puno novih nijansi koje ne možemo i nemamo potrebu etiketirati.', 'lebanon-hanover.jpg', 'Glazba', 0),
(55, '20.06.2023.', '20:56', 'Božo Vrećo rasplesao Lisinski', 'Princ sevdaha, Božo Vrećo, sinoć je nastupio u rasprodanoj koncertnoj dvorani Lisinskog.', 'Već na zvuk prvih taktova, Lisinski je prihvatio Božinu eksplozivnu energiju koja je kroz cijeli nastup sve više rasla, a što je i on sam primijetio i rekao da mu je Zagreb u srcu jer ga upravo ovdje svaki put dočeka neka nova energija. Pri početku setliste na repertoaru su se našle pjesme “Saba” i “Sahtijan”. Kada su počeli ritmovi “Pašane”, Božo se u punom zanosu spustio medu redove publike kroz koje se vrtio, plesao i rasplesao sve oko sebe.\r\n\r\n<br><br>\r\nMislim da nakon “Bismillah”, “Čovjeka od soli” i “Ko li noćas miluje ti kosu” nitko nije mogao ostati ravnodušan na pjevački glas koji predstavlja istinsku slobodu.<br><br>\r\n\r\nVrhunac emocije nastupa bio je Božin monolog u kojem je pričao o boli koja proizlazi iz ljubavi, a ta bol često utječe na ljude toliko da vide samo tri načina kako je se riješiti: “oduzeti sebi život, poludjeti ili napisati pjesmu”, a on je, očito, jedan od onih koji pišu pjesme. Monolog je završio rečenicom “u trenutku kad nas ljubav zaboli, treba se nešto spustiti s neba i dati nam krila”, nakon čega je otpjevao pjesmu “Krila”.<br><br>\r\n\r\nBožo, koji pjeva o čežnji, ljubavi, samoći i melankoliji kroz svoje brojne nastupe primjetio je da gotovo svaka pjesma koju napiše završava smrću, pa je tako predstavio i novo glazbeno djelo, pjesmu u kojoj se glavni lik otruje biljkom. Pjesma je dio albuma kojeg planira uskoro objaviti, a na njemu će se, zajedno s izvedenom, nalaziti sedam pjesama.\r\n\r\n<br><br>\r\n\r\nOvaj pjevač, kojeg s pravom nazivaju umjetnikom, Zagrebu je poklonio dio svog glazbenog opusa kojim je isprepleo sevdah, jazz i blues, ali i nesvakidašnji prizor – prepunu dvoranu Lisinskog koja je pola koncerta stajala na nogama, ali i proplesala kroz posljednju pjesmu večeri – “Pašanu”.', 'bozo.jpg', 'Glazba', 0),
(70, '24.06.2023.', '23:12', 'naslov', 'ovo je sažetak', 'tekst', 'indiana-jones.jpg', 'Filmovi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) NOT NULL,
  `prezime` varchar(32) NOT NULL,
  `kime` varchar(32) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `kime`, `lozinka`, `razina`) VALUES
(1, 'Pero', 'Perić', 'pperic', '$2y$10$fZ43JE7PQiQlV/JOJL7Hjuq0XKc7Pc0VhGN93SQvDWK6vb0t8xhXm', 0),
(2, 'Mara', 'Marić', 'maram', '$2y$10$RvvAo0iodJT6rVTUNh7YMeJHLgArwjfWjRP8LtuNElz6RGEKkPnvu', 1),
(3, 'Ivo', 'Ivić', 'iivic', '$2y$10$vUNPbk.XbZY9mI2MSPcINeraGr/9Eh0B22cVyoXcz5TzqC6uUUUvu', 0),
(8, 'Bero', 'Berić', 'bberic', '$2y$10$QPlK1tXGA7MqOP5VEAZ9Y.wwKce4/TOdhed3GmYrkpWrO4L4KZkoW', 0),
(9, 'Perica', 'Perić', 'ppero', '$2y$10$6I8EdV95s/gY6vPakSpClufw2ikSGRrl.OzyyYKrSgBtHLnXPTa/S', 0),
(10, 'Marica', 'Marić', 'mmarica', '$2y$10$ZWjwia0aDSY2s3FRYutCbO5TaWE4507BWz9vdsgXSBCto0boTYFzG', 0),
(11, 'Marija', 'Marić', 'mmare', '$2y$10$xfh1Bz/3DebfJMDGSgU9tOESlR0ttbInNmSQz6022YnG0q.lLt7XC', 0),
(12, 'Ivo', 'Marić', 'imaric', '$2y$10$19d6LZiz7auMeFLyGgiOYOwHt7ijbLEMaFHY8JSL7boAT6and9IrK', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanci`
--
ALTER TABLE `clanci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kime` (`kime`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanci`
--
ALTER TABLE `clanci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
