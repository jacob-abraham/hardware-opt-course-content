
#ifndef _LECTURE09_DATASET_
#define _LECTURE09_DATASET_

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// one page of data
#define N_DATASET 512
uint64_t random_ints[N_DATASET] = {
    343260386111633779, 995105096665167531, 743430709971906415,
        25530284899046615, 849120265846281402, 3220450797565742,
        303824315467504610, 896896896246670698, 619703861319847948,
        935026279277708978, 956671792908444390, 842517813707333128,
        463689983436308430, 180327095590218486, 600267808171085917,
        534913749877603264, 518664876897973162, 440691766856108975,
        893211325799292222, 245529012503241450, 800336920999392789,
        186960622258170910, 52219133753003260, 465625013482705578,
        105284695434000901, 484230766350870156, 946411434198208729,
        533657156291847197, 350025129577011602, 839112566915222539,
        35266279870901708, 470918863876609147, 588334164759611522,
        949682290697759486, 191247641983172080, 182214086371015655,
        780509810704011126, 561012962126286026, 695130458306415629,
        31588970419004214, 798767745268515544, 856785016238588481,
        715183971883696589, 636045127401746099, 593284362228190993,
        859925293931007179, 853781735722959502, 362191089639780613,
        618201992139741498, 661041418580686650, 95444908801103707,
        208063564244585611, 583323204311675404, 797298809595891830,
        662974366204645941, 480545750636931028, 143689510845173182,
        175841164504111158, 848242001299396984, 924214547124080558,
        3025995199246406, 56692488366333991, 385466760843314690,
        58765101130616078, 803802564351357874, 177387451482560863,
        953716823831394065, 57759144656151270, 674903015143278159,
        947867391577027609, 71766978626547451, 748143102479684197,
        653089486170629061, 396536477695824965, 840462832641118951,
        981710838163827671, 441819391149649081, 619676122189689520,
        265299377132631993, 707879465424677210, 46269040459184767,
        111671292387819860, 453720739413590070, 284326081294250957,
        359712724650152929, 82362854592905575, 54894571817749704,
        32112546725135245, 92754313645117704, 4290220968119870,
        815288886323916544, 391581196361998808, 4696977642125358,
        451863240506225354, 248844512327134457, 721389651174529277,
        313942441255746030, 377449402712158054, 445504009151030745,
        938336389555036979, 315778497380240630, 794103636562982952,
        874892992323501747, 450718526359519544, 874403765829914833,
        559233553756908003, 593961859964890760, 801803338364109889,
        828319068461460618, 23566314558606394, 362767359169641481,
        147803619502720573, 104851070316733683, 384732476392087154,
        282235965260683717, 123557939612818203, 543032936955701690,
        705050153145391251, 760752032698799617, 425635185271320311,
        829202274542868982, 285796503921481750, 25400516488741940,
        18415666769501516, 512729946887822450, 230312138664374136,
        875124350537614290, 610686987782997547, 885144356548112153,
        404319677535007806, 632639446778618509, 325085840495305599,
        340456547896294841, 816518720355320458, 219199952767173885,
        379035488569468570, 498154194754803387, 143854038893304585,
        205833963567489609, 335601216669887068, 89046571590666024,
        919412544324905507, 20609458945896282, 144262197358452316,
        704446008838124136, 279613424692160159, 873095310927503456,
        78468998537460183, 821819768365477200, 74707273340450534,
        68910979295069004, 3103707394740866, 913303314411549150,
        693049571924022495, 775102188380886778, 6147194611739643,
        58640618783313026, 9607357192983257, 790741137624834590,
        634558204971891302, 658798228364182133, 147432963986497026,
        497689323881615411, 492414638748433678, 41547266273434415,
        819960620727398450, 484253571249764598, 450227503694484287,
        825711491301960364, 652494692822374722, 849914531440122041,
        773091980158721213, 43331848850037559, 655866519173340149,
        7548779947014214, 633145157885569610, 11345009367053251,
        608450990338324211, 962534594652252920, 679103199821182345,
        757164379767659133, 899695229399643689, 95888697232825327,
        723090200779689286, 919939078233618616, 444110176537874597,
        833050112301519140, 132939712867202358, 131213624793838840,
        693669564764196936, 511226945788616932, 46612021939573741,
        409704606932697516, 352511650614112528, 545317349699224551,
        590087370288370768, 60252515983852680, 299629248601249835,
        903019006135184910, 909004235571808417, 862694588402952368,
        895490247576763634, 246597954747136048, 290800868704909228,
        401291414775215659, 54101346629014845, 838404361346882507,
        293004685225342623, 63360948649358752, 629981992499902005,
        35473469577295012, 647311460590830390, 366093825504021278,
        251428877519899333, 974680714500144312, 317326997573529876,
        720223191453233129, 305039470333112109, 654996380849114470,
        603337139606412216, 678076946318187496, 796350568676662206,
        888363583411358261, 615638642196709549, 998072512260160364,
        930556705670716197, 954781622481470409, 545798228118314079,
        983667604971107200, 451645149846933479, 803126854857003626,
        465695700167885729, 793683397853450430, 570362732824043984,
        701972223109075794, 582448876291295603, 914433245238950719,
        636559833109723434, 65734586599903268, 82737045584059630,
        907653363245619696, 554697289294481683, 143442689906287658,
        323483306818144438, 657367008954951265, 899903766213741800,
        115096132524052742, 6723238342686259, 308889116653103565,
        143059226629424979, 818017474923257427, 358789501732884712,
        757507373105190837, 716636652951735963, 504494068938881875,
        275878523426953550, 527671335861953530, 369127130958028349,
        5238062164982754, 354221904597086638, 860862652283012845,
        86809293248088915, 85438096482008709, 945456495666032395,
        59780354636985230, 299414652813655630, 973268877244291257,
        179195037845699280, 366627069460723067, 530659858919590519,
        798411522867044829, 374383248116830863, 270786638911742849,
        275997750840634821, 218168460734740871, 931280365212679545,
        971047021687285011, 148098322157990417, 73088037623006466,
        941811979683913672, 678734240383155510, 850868088821194113,
        903699639331882402, 109393861992817788, 531146161355774924,
        800041597112008399, 174430601184350828, 498050885345908983,
        479997907120082202, 373091108214532756, 194566294210303648,
        963496708483389269, 737849087643971843, 467580319740337425,
        669624987567563063, 306213330836505164, 337808264663369391,
        92279842710100008, 381074874552815166, 549445659789532653,
        532849188446992991, 13441680856814353, 696324915516826148,
        467411722133874316, 476671725777513039, 79671537963692661,
        546117607170278753, 233894936449517275, 10645606617081223,
        254572216453372954, 713494366794938649, 706006410889923813,
        814669630470417893, 669688603521046704, 200436234399799697,
        851906113201265816, 575361726634632888, 830407820165618256,
        878081904767883685, 82908423276734902, 48696412979512565,
        801430577639926878, 701312265815135770, 911639605550920653,
        719191258789398350, 69652449457202591, 4754029156694172,
        164502716978925437, 184502476249418800, 990379136906653697,
        829917466897932238, 138855106874001914, 872652060774182392,
        38308233825532608, 43147736371842689, 475479779899431799,
        839536931621858934, 875872755880298182, 60514460387667658,
        950978831514738413, 607136587248472914, 767982132390828245,
        78219502959563951, 244786083618781096, 211079888888856262,
        12169766256737980, 935883068752761914, 807546294628860889,
        188512897902129286, 690622987769752200, 802569623422450542,
        744831500635817108, 246831729307274988, 951022790723399432,
        253845309107620439, 234392498510267897, 878627589918259944,
        975833412777391265, 857558299743351683, 295022591691722773,
        255375984509594281, 319341813712105985, 407035057201061678,
        286769825259735685, 555859466825839448, 570099850965188762,
        494796019487547831, 920997185659209903, 228130487280139715,
        273113890501675814, 683767882338975708, 387155258392325070,
        874650077840280572, 21060551212961233, 233228817385861093,
        531805304550064753, 305053640676208708, 637237892210725141,
        949785511945816482, 644810548576387262, 41920731941770817,
        944298043349651246, 957655402349297024, 661912159962110447,
        116150907613428687, 765818141632790389, 581458826155716309,
        697541811571193861, 77073732251592714, 221374892577218781,
        529881994475056329, 347996251992710879, 820932691689146907,
        223533406701761218, 220162362355715260, 264300560905004018,
        564348773268199655, 584355293119211594, 548362576637313926,
        18824443622182269, 793437866232583192, 278421895137909331,
        47177781869538256, 93733439250963781, 983805820913523839,
        345305714854924424, 72130456276735631, 96309366330925586,
        292675484397004283, 943566326238953734, 787773159506303388,
        744746901872270293, 897231280198914158, 133458173883193322,
        14012687449907636, 252387245438417362, 38614993835406316,
        417687289271934039, 320790012748945188, 66850916860240234,
        760063739840018987, 354895749192561844, 943117631429614739,
        787855257431597166, 253249928818982660, 290735617824530716,
        94065822040850811, 656230164974850685, 319889170352888586,
        416426266810241496, 233243675500207644, 542321206337058486,
        585304006707767987, 863628272873547709, 823546118183448390,
        852689745539170961, 509872456883145802, 162472732334567866,
        269047238302858554, 210411101462270435, 289551734456585684,
        174701922576236066, 30091105288850456, 59414422379814059,
        548526800953945685, 377760266930003889, 156066007682990694,
        284289176693190123, 286768463370690468, 409387478265920514,
        337103459392738689, 16205782885917212, 163957908219966843,
        968537527327457211, 162092571409312513, 289186733821000335,
        483524702668900414, 531881395730536481, 942962153203529562,
        721941699652403399, 97329076712527331, 533314853999428748,
        505695338465961045, 583468465307685391, 382035436746775279,
        401004717819785431, 806991061355404422, 11717626605727217,
        240719900463583715, 684565574843656217, 540368249740763785,
        794151289672486512, 15654524212237972, 191611242622679259,
        646385519851121159, 198197698613002115, 202632142602554990,
        490404773203343312, 231558952879760342, 538848858507055067,
        62749348227223574, 721260113184380190, 450261638150578659,
        470260966709402096, 244197259797367961, 986558870529936646,
        767124371108613946, 39442949391840380, 771058949574645695,
        552075357889237838, 820135941584729727, 701745826921741963,
        702259991474746609, 910591480394234214, 738589572544800718,
        453794481132104762, 559564346183988841, 468404995870441318,
        685106342917361783, 599303814696628467, 215742314502588838,
        415785318314056633, 597675957168593682, 241639770482065155,
        561245001318824400, 34221541617643739, 991478494979405049,
        782139395473432027, 455693516387196792, 373157703320756882,
        441744352442802317, 359444541241529400
};

void test(uint8_t (*func)(uint64_t)) {
    for(size_t i = 0; i < N_DATASET; i++) {
        func(random_ints[i]);
    }
}

#define SAMPLE_SIZE 50
void benchmark(uint8_t (*func)(uint64_t)) {

    float *times = (float *)malloc(SAMPLE_SIZE * sizeof(float));
    float mean;
    float var;

    __TIME_IT_N(test(func), 1000, SAMPLE_SIZE, times);
    __MEAN(SAMPLE_SIZE, times, mean);
    __VARIANCE(SAMPLE_SIZE, times, var);

    printf("Mean: %5.4fms Variance: %5.4fms\n", mean, var);
    size_t row_length = 5;
    for(size_t i = 0; i < SAMPLE_SIZE;) {
        for(size_t j = 0; j < row_length && (j + i) < SAMPLE_SIZE; j++) {
            printf("%5.4fms\t", times[j + i]);
        }
        i += row_length;
        printf("\n");
    }
    free(times);
}

#endif