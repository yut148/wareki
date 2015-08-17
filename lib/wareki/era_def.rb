# coding: utf-8
module Wareki
  Era = Struct.new(:name, :year, :start, :end)
  ERA_DEFS = [
    Era.new("大化", 645, 1956842, 1958551),
    Era.new("白雉", 650, 1958551, 1960259),
    Era.new("朱鳥", 686, 1971845, 1971893),
    Era.new("大宝", 701, 1977221, 1978361),
    Era.new("慶雲", 704, 1978361, 1979692),
    Era.new("和銅", 708, 1979692, 1982487),
    Era.new("霊亀", 715, 1982487, 1983300),
    Era.new("養老", 717, 1983300, 1985561),
    Era.new("神亀", 724, 1985561, 1987570),
    Era.new("天平", 729, 1987570, 1994754),
    Era.new("天平感宝", 749, 1994754, 1994861),
    Era.new("天平勝宝", 749, 1994861, 1997801),
    Era.new("天平宝字", 757, 1997801, 2000506),
    Era.new("天平神護", 765, 2000506, 2001460),
    Era.new("神護景雲", 767, 2001460, 2002596),
    Era.new("宝亀", 770, 2002596, 2006348),
    Era.new("天応", 781, 2006348, 2006956),
    Era.new("延暦", 782, 2006956, 2015608),
    Era.new("大同", 806, 2015608, 2017203),
    Era.new("弘仁", 810, 2017203, 2022062),
    Era.new("天長", 824, 2022062, 2025721),
    Era.new("承和", 834, 2025721, 2030987),
    Era.new("嘉祥", 848, 2030987, 2032037),
    Era.new("仁寿", 851, 2032037, 2033338),
    Era.new("斉衡", 854, 2033338, 2034156),
    Era.new("天安", 857, 2034156, 2034947),
    Era.new("貞観", 859, 2034947, 2041534),
    Era.new("元慶", 877, 2041534, 2044374),
    Era.new("仁和", 885, 2044374, 2045915),
    Era.new("寛平", 889, 2045915, 2049192),
    Era.new("昌泰", 898, 2049192, 2050391),
    Era.new("延喜", 901, 2050391, 2058332),
    Era.new("延長", 923, 2058332, 2061241),
    Era.new("承平", 931, 2061241, 2063835),
    Era.new("天慶", 938, 2063835, 2067084),
    Era.new("天暦", 947, 2067084, 2070927),
    Era.new("天徳", 957, 2070927, 2072127),
    Era.new("応和", 961, 2072127, 2073390),
    Era.new("康保", 964, 2073390, 2074871),
    Era.new("安和", 968, 2074871, 2075473),
    Era.new("天禄", 970, 2075473, 2076827),
    Era.new("天延", 973, 2076827, 2077765),
    Era.new("貞元", 976, 2077765, 2078637),
    Era.new("天元", 978, 2078637, 2080247),
    Era.new("永観", 983, 2080247, 2080968),
    Era.new("寛和", 985, 2080968, 2081684),
    Era.new("永延", 987, 2081684, 2082543),
    Era.new("永祚", 989, 2082543, 2082985),
    Era.new("正暦", 990, 2082985, 2084565),
    Era.new("長徳", 995, 2084565, 2085974),
    Era.new("長保", 999, 2085974, 2087989),
    Era.new("寛弘", 1004, 2087989, 2091095),
    Era.new("長和", 1012, 2091095, 2092658),
    Era.new("寛仁", 1017, 2092658, 2094054),
    Era.new("治安", 1021, 2094054, 2095305),
    Era.new("万寿", 1024, 2095305, 2096765),
    Era.new("長元", 1028, 2096765, 2099951),
    Era.new("長暦", 1037, 2099951, 2101268),
    Era.new("長久", 1040, 2101268, 2102729),
    Era.new("寛徳", 1044, 2102729, 2103251),
    Era.new("永承", 1046, 2103251, 2105699),
    Era.new("天喜", 1053, 2105699, 2107754),
    Era.new("康平", 1058, 2107754, 2110296),
    Era.new("治暦", 1065, 2110296, 2111636),
    Era.new("延久", 1069, 2111636, 2113595),
    Era.new("承保", 1074, 2113595, 2114771),
    Era.new("承暦", 1077, 2114771, 2115974),
    Era.new("永保", 1081, 2115974, 2117063),
    Era.new("応徳", 1084, 2117063, 2118215),
    Era.new("寛治", 1087, 2118215, 2121029),
    Era.new("嘉保", 1094, 2121029, 2121740),
    Era.new("永長", 1096, 2121740, 2122098),
    Era.new("承徳", 1097, 2122098, 2122725),
    Era.new("康和", 1099, 2122725, 2124361),
    Era.new("長治", 1104, 2124361, 2125157),
    Era.new("嘉承", 1106, 2125157, 2126007),
    Era.new("天仁", 1108, 2126007, 2126697),
    Era.new("天永", 1110, 2126697, 2127818),
    Era.new("永久", 1113, 2127818, 2129522),
    Era.new("元永", 1118, 2129522, 2130267),
    Era.new("保安", 1120, 2130267, 2131737),
    Era.new("天治", 1124, 2131737, 2132375),
    Era.new("大治", 1126, 2132375, 2134214),
    Era.new("天承", 1131, 2134214, 2134785),
    Era.new("長承", 1132, 2134785, 2135777),
    Era.new("保延", 1135, 2135777, 2138033),
    Era.new("永治", 1141, 2138033, 2138318),
    Era.new("康治", 1142, 2138318, 2138991),
    Era.new("天養", 1144, 2138991, 2139493),
    Era.new("久安", 1145, 2139493, 2141505),
    Era.new("仁平", 1151, 2141505, 2142894),
    Era.new("久寿", 1154, 2142894, 2143425),
    Era.new("保元", 1156, 2143425, 2144511),
    Era.new("平治", 1159, 2144511, 2144796),
    Era.new("永暦", 1160, 2144796, 2145380),
    Era.new("応保", 1161, 2145380, 2145967),
    Era.new("長寛", 1163, 2145967, 2146769),
    Era.new("永万", 1165, 2146769, 2147205),
    Era.new("仁安", 1166, 2147205, 2148161),
    Era.new("嘉応", 1169, 2148161, 2148912),
    Era.new("承安", 1171, 2148912, 2150454),
    Era.new("安元", 1175, 2150454, 2151198),
    Era.new("治承", 1177, 2151198, 2152655),
    Era.new("養和", 1181, 2152655, 2152963),
    Era.new("寿永", 1182, 2152963, 2153661),
    Era.new("元暦", 1184, 2153661, 2154131),
    Era.new("文治", 1185, 2154131, 2155841),
    Era.new("建久", 1190, 2155841, 2159135),
    Era.new("正治", 1199, 2159135, 2159801),
    Era.new("建仁", 1201, 2159801, 2160901),
    Era.new("元久", 1204, 2160901, 2161705),
    Era.new("建永", 1206, 2161705, 2162234),
    Era.new("承元", 1207, 2162234, 2163488),
    Era.new("建暦", 1211, 2163488, 2164489),
    Era.new("建保", 1213, 2164489, 2166444),
    Era.new("承久", 1219, 2166444, 2167538),
    Era.new("貞応", 1222, 2167538, 2168489),
    Era.new("元仁", 1224, 2168489, 2168637),
    Era.new("嘉禄", 1225, 2168637, 2169602),
    Era.new("安貞", 1227, 2169602, 2170040),
    Era.new("寛喜", 1229, 2170040, 2171159),
    Era.new("貞永", 1232, 2171159, 2171556),
    Era.new("天福", 1233, 2171556, 2172107),
    Era.new("文暦", 1234, 2172107, 2172446),
    Era.new("嘉禎", 1235, 2172446, 2173601),
    Era.new("暦仁", 1238, 2173601, 2173674),
    Era.new("延応", 1239, 2173674, 2174185),
    Era.new("仁治", 1240, 2174185, 2175140),
    Era.new("寛元", 1243, 2175140, 2176619),
    Era.new("宝治", 1247, 2176619, 2177377),
    Era.new("建長", 1249, 2177377, 2180109),
    Era.new("康元", 1256, 2180109, 2180267),
    Era.new("正嘉", 1257, 2180267, 2181017),
    Era.new("正元", 1259, 2181017, 2181417),
    Era.new("文応", 1260, 2181417, 2181719),
    Era.new("弘長", 1261, 2181719, 2182820),
    Era.new("文永", 1264, 2182820, 2186893),
    Era.new("建治", 1275, 2186893, 2187929),
    Era.new("弘安", 1278, 2187929, 2191649),
    Era.new("正応", 1288, 2191649, 2193575),
    Era.new("永仁", 1293, 2193575, 2195662),
    Era.new("正安", 1299, 2195662, 2196957),
    Era.new("乾元", 1302, 2196957, 2197237),
    Era.new("嘉元", 1303, 2197237, 2198457),
    Era.new("徳治", 1306, 2198457, 2199131),
    Era.new("延慶", 1308, 2199131, 2200037),
    Era.new("応長", 1311, 2200037, 2200383),
    Era.new("正和", 1312, 2200383, 2202167),
    Era.new("文保", 1317, 2202167, 2202960),
    Era.new("元応", 1319, 2202960, 2203634),
    Era.new("元亨", 1321, 2203634, 2205008),
    Era.new("正中", 1324, 2205008, 2205527),
    Era.new("嘉暦", 1326, 2205527, 2206740),
    Era.new("元徳", 1329, 2206740, 2207459),
    Era.new("元弘", 1331, 2207459, 2208365),
    Era.new("正慶", 1332, 2207714, 2208124),
    Era.new("建武", 1334, 2208365, 2209133),
    Era.new("延元", 1336, 2209133, 2210638),
    Era.new("興国", 1340, 2210638, 2213069),
    Era.new("正平", 1346, 2213069, 2221678),
    Era.new("建徳", 1370, 2221678, 2222302),
    Era.new("文中", 1372, 2222302, 2223453),
    Era.new("天授", 1375, 2223453, 2225533),
    Era.new("弘和", 1381, 2225533, 2226702),
    Era.new("元中", 1384, 2226702, 2229809),
    Era.new("暦応", 1338, 2210046, 2211375),
    Era.new("康永", 1342, 2211375, 2212638),
    Era.new("貞和", 1345, 2212638, 2214239),
    Era.new("観応", 1350, 2214239, 2215184),
    Era.new("文和", 1352, 2215184, 2216456),
    Era.new("延文", 1356, 2216456, 2218287),
    Era.new("康安", 1361, 2218287, 2218812),
    Era.new("貞治", 1362, 2218812, 2220786),
    Era.new("応安", 1368, 2220786, 2223364),
    Era.new("永和", 1375, 2223364, 2224836),
    Era.new("康暦", 1379, 2224836, 2225547),
    Era.new("永徳", 1381, 2225547, 2226642),
    Era.new("至徳", 1384, 2226642, 2227937),
    Era.new("嘉慶", 1387, 2227937, 2228456),
    Era.new("康応", 1389, 2228456, 2228857),
    Era.new("明徳", 1390, 2228857, 2230430),
    Era.new("応永", 1394, 2230430, 2242796),
    Era.new("正長", 1428, 2242796, 2243276),
    Era.new("永享", 1429, 2243276, 2247452),
    Era.new("嘉吉", 1441, 2247452, 2248532),
    Era.new("文安", 1444, 2248532, 2250533),
    Era.new("宝徳", 1449, 2250533, 2251623),
    Era.new("享徳", 1452, 2251623, 2252745),
    Era.new("康正", 1455, 2252745, 2253516),
    Era.new("長禄", 1457, 2253516, 2254720),
    Era.new("寛正", 1460, 2254720, 2256587),
    Era.new("文正", 1466, 2256587, 2256978),
    Era.new("応仁", 1467, 2256978, 2257769),
    Era.new("文明", 1469, 2257769, 2264405),
    Era.new("長享", 1487, 2264405, 2265174),
    Era.new("延徳", 1489, 2265174, 2266235),
    Era.new("明応", 1492, 2266235, 2269375),
    Era.new("文亀", 1501, 2269375, 2270469),
    Era.new("永正", 1504, 2270469, 2276869),
    Era.new("大永", 1521, 2276869, 2279406),
    Era.new("享禄", 1528, 2279406, 2280862),
    Era.new("天文", 1532, 2280862, 2289332),
    Era.new("弘治", 1555, 2289332, 2290194),
    Era.new("永禄", 1558, 2290194, 2294647),
    Era.new("元亀", 1570, 2294647, 2295833),
    Era.new("天正", 1573, 2295833, 2302901),
    Era.new("文禄", 1592, 2302901, 2304337),
    Era.new("慶長", 1596, 2304337, 2311174),
    Era.new("元和", 1615, 2311174, 2314321),
    Era.new("寛永", 1624, 2314321, 2321897),
    Era.new("正保", 1644, 2321897, 2323077),
    Era.new("慶安", 1648, 2323077, 2324734),
    Era.new("承応", 1652, 2324734, 2325674),
    Era.new("明暦", 1655, 2325674, 2326865),
    Era.new("万治", 1658, 2326865, 2327871),
    Era.new("寛文", 1661, 2327871, 2332414),
    Era.new("延宝", 1673, 2332414, 2335346),
    Era.new("天和", 1681, 2335346, 2336224),
    Era.new("貞享", 1684, 2336224, 2337886),
    Era.new("元禄", 1688, 2337886, 2343539),
    Era.new("宝永", 1704, 2343539, 2346151),
    Era.new("正徳", 1711, 2346151, 2348037),
    Era.new("享保", 1716, 2348037, 2355279),
    Era.new("元文", 1736, 2355279, 2357049),
    Era.new("寛保", 1741, 2357049, 2358136),
    Era.new("延享", 1744, 2358136, 2359721),
    Era.new("寛延", 1748, 2359721, 2360947),
    Era.new("宝暦", 1751, 2360947, 2365529),
    Era.new("明和", 1764, 2365529, 2368614),
    Era.new("安永", 1772, 2368614, 2371672),
    Era.new("天明", 1781, 2371672, 2374529),
    Era.new("寛政", 1789, 2374529, 2378939),
    Era.new("享和", 1801, 2378939, 2380038),
    Era.new("文化", 1804, 2380038, 2385216),
    Era.new("文政", 1818, 2385216, 2389841),
    Era.new("天保", 1830, 2389841, 2394941),
    Era.new("弘化", 1844, 2394941, 2396119),
    Era.new("嘉永", 1848, 2396119, 2398599),
    Era.new("安政", 1854, 2398599, 2400509),
    Era.new("万延", 1860, 2400509, 2400864),
    Era.new("文久", 1861, 2400864, 2401958),
    Era.new("元治", 1864, 2401958, 2402358),
    Era.new("慶応", 1865, 2402358, 2403629),
    Era.new("明治", 1868, 2403357, 2419613),
    Era.new("大正", 1912, 2419614, 2424874),
    Era.new("昭和", 1926, 2424875, 2447534),
    Era.new("平成", 1989, 2447535, 1684383730585466947585),
  ].freeze
  ERA_NORTH_DEFS = [
    Era.new("大化", 645, 1956842, 1958551),
    Era.new("白雉", 650, 1958551, 1960259),
    Era.new("朱鳥", 686, 1971845, 1971893),
    Era.new("大宝", 701, 1977221, 1978361),
    Era.new("慶雲", 704, 1978361, 1979692),
    Era.new("和銅", 708, 1979692, 1982487),
    Era.new("霊亀", 715, 1982487, 1983300),
    Era.new("養老", 717, 1983300, 1985561),
    Era.new("神亀", 724, 1985561, 1987570),
    Era.new("天平", 729, 1987570, 1994754),
    Era.new("天平感宝", 749, 1994754, 1994861),
    Era.new("天平勝宝", 749, 1994861, 1997801),
    Era.new("天平宝字", 757, 1997801, 2000506),
    Era.new("天平神護", 765, 2000506, 2001460),
    Era.new("神護景雲", 767, 2001460, 2002596),
    Era.new("宝亀", 770, 2002596, 2006348),
    Era.new("天応", 781, 2006348, 2006956),
    Era.new("延暦", 782, 2006956, 2015608),
    Era.new("大同", 806, 2015608, 2017203),
    Era.new("弘仁", 810, 2017203, 2022062),
    Era.new("天長", 824, 2022062, 2025721),
    Era.new("承和", 834, 2025721, 2030987),
    Era.new("嘉祥", 848, 2030987, 2032037),
    Era.new("仁寿", 851, 2032037, 2033338),
    Era.new("斉衡", 854, 2033338, 2034156),
    Era.new("天安", 857, 2034156, 2034947),
    Era.new("貞観", 859, 2034947, 2041534),
    Era.new("元慶", 877, 2041534, 2044374),
    Era.new("仁和", 885, 2044374, 2045915),
    Era.new("寛平", 889, 2045915, 2049192),
    Era.new("昌泰", 898, 2049192, 2050391),
    Era.new("延喜", 901, 2050391, 2058332),
    Era.new("延長", 923, 2058332, 2061241),
    Era.new("承平", 931, 2061241, 2063835),
    Era.new("天慶", 938, 2063835, 2067084),
    Era.new("天暦", 947, 2067084, 2070927),
    Era.new("天徳", 957, 2070927, 2072127),
    Era.new("応和", 961, 2072127, 2073390),
    Era.new("康保", 964, 2073390, 2074871),
    Era.new("安和", 968, 2074871, 2075473),
    Era.new("天禄", 970, 2075473, 2076827),
    Era.new("天延", 973, 2076827, 2077765),
    Era.new("貞元", 976, 2077765, 2078637),
    Era.new("天元", 978, 2078637, 2080247),
    Era.new("永観", 983, 2080247, 2080968),
    Era.new("寛和", 985, 2080968, 2081684),
    Era.new("永延", 987, 2081684, 2082543),
    Era.new("永祚", 989, 2082543, 2082985),
    Era.new("正暦", 990, 2082985, 2084565),
    Era.new("長徳", 995, 2084565, 2085974),
    Era.new("長保", 999, 2085974, 2087989),
    Era.new("寛弘", 1004, 2087989, 2091095),
    Era.new("長和", 1012, 2091095, 2092658),
    Era.new("寛仁", 1017, 2092658, 2094054),
    Era.new("治安", 1021, 2094054, 2095305),
    Era.new("万寿", 1024, 2095305, 2096765),
    Era.new("長元", 1028, 2096765, 2099951),
    Era.new("長暦", 1037, 2099951, 2101268),
    Era.new("長久", 1040, 2101268, 2102729),
    Era.new("寛徳", 1044, 2102729, 2103251),
    Era.new("永承", 1046, 2103251, 2105699),
    Era.new("天喜", 1053, 2105699, 2107754),
    Era.new("康平", 1058, 2107754, 2110296),
    Era.new("治暦", 1065, 2110296, 2111636),
    Era.new("延久", 1069, 2111636, 2113595),
    Era.new("承保", 1074, 2113595, 2114771),
    Era.new("承暦", 1077, 2114771, 2115974),
    Era.new("永保", 1081, 2115974, 2117063),
    Era.new("応徳", 1084, 2117063, 2118215),
    Era.new("寛治", 1087, 2118215, 2121029),
    Era.new("嘉保", 1094, 2121029, 2121740),
    Era.new("永長", 1096, 2121740, 2122098),
    Era.new("承徳", 1097, 2122098, 2122725),
    Era.new("康和", 1099, 2122725, 2124361),
    Era.new("長治", 1104, 2124361, 2125157),
    Era.new("嘉承", 1106, 2125157, 2126007),
    Era.new("天仁", 1108, 2126007, 2126697),
    Era.new("天永", 1110, 2126697, 2127818),
    Era.new("永久", 1113, 2127818, 2129522),
    Era.new("元永", 1118, 2129522, 2130267),
    Era.new("保安", 1120, 2130267, 2131737),
    Era.new("天治", 1124, 2131737, 2132375),
    Era.new("大治", 1126, 2132375, 2134214),
    Era.new("天承", 1131, 2134214, 2134785),
    Era.new("長承", 1132, 2134785, 2135777),
    Era.new("保延", 1135, 2135777, 2138033),
    Era.new("永治", 1141, 2138033, 2138318),
    Era.new("康治", 1142, 2138318, 2138991),
    Era.new("天養", 1144, 2138991, 2139493),
    Era.new("久安", 1145, 2139493, 2141505),
    Era.new("仁平", 1151, 2141505, 2142894),
    Era.new("久寿", 1154, 2142894, 2143425),
    Era.new("保元", 1156, 2143425, 2144511),
    Era.new("平治", 1159, 2144511, 2144796),
    Era.new("永暦", 1160, 2144796, 2145380),
    Era.new("応保", 1161, 2145380, 2145967),
    Era.new("長寛", 1163, 2145967, 2146769),
    Era.new("永万", 1165, 2146769, 2147205),
    Era.new("仁安", 1166, 2147205, 2148161),
    Era.new("嘉応", 1169, 2148161, 2148912),
    Era.new("承安", 1171, 2148912, 2150454),
    Era.new("安元", 1175, 2150454, 2151198),
    Era.new("治承", 1177, 2151198, 2152655),
    Era.new("養和", 1181, 2152655, 2152963),
    Era.new("寿永", 1182, 2152963, 2153661),
    Era.new("元暦", 1184, 2153661, 2154131),
    Era.new("文治", 1185, 2154131, 2155841),
    Era.new("建久", 1190, 2155841, 2159135),
    Era.new("正治", 1199, 2159135, 2159801),
    Era.new("建仁", 1201, 2159801, 2160901),
    Era.new("元久", 1204, 2160901, 2161705),
    Era.new("建永", 1206, 2161705, 2162234),
    Era.new("承元", 1207, 2162234, 2163488),
    Era.new("建暦", 1211, 2163488, 2164489),
    Era.new("建保", 1213, 2164489, 2166444),
    Era.new("承久", 1219, 2166444, 2167538),
    Era.new("貞応", 1222, 2167538, 2168489),
    Era.new("元仁", 1224, 2168489, 2168637),
    Era.new("嘉禄", 1225, 2168637, 2169602),
    Era.new("安貞", 1227, 2169602, 2170040),
    Era.new("寛喜", 1229, 2170040, 2171159),
    Era.new("貞永", 1232, 2171159, 2171556),
    Era.new("天福", 1233, 2171556, 2172107),
    Era.new("文暦", 1234, 2172107, 2172446),
    Era.new("嘉禎", 1235, 2172446, 2173601),
    Era.new("暦仁", 1238, 2173601, 2173674),
    Era.new("延応", 1239, 2173674, 2174185),
    Era.new("仁治", 1240, 2174185, 2175140),
    Era.new("寛元", 1243, 2175140, 2176619),
    Era.new("宝治", 1247, 2176619, 2177377),
    Era.new("建長", 1249, 2177377, 2180109),
    Era.new("康元", 1256, 2180109, 2180267),
    Era.new("正嘉", 1257, 2180267, 2181017),
    Era.new("正元", 1259, 2181017, 2181417),
    Era.new("文応", 1260, 2181417, 2181719),
    Era.new("弘長", 1261, 2181719, 2182820),
    Era.new("文永", 1264, 2182820, 2186893),
    Era.new("建治", 1275, 2186893, 2187929),
    Era.new("弘安", 1278, 2187929, 2191649),
    Era.new("正応", 1288, 2191649, 2193575),
    Era.new("永仁", 1293, 2193575, 2195662),
    Era.new("正安", 1299, 2195662, 2196957),
    Era.new("乾元", 1302, 2196957, 2197237),
    Era.new("嘉元", 1303, 2197237, 2198457),
    Era.new("徳治", 1306, 2198457, 2199131),
    Era.new("延慶", 1308, 2199131, 2200037),
    Era.new("応長", 1311, 2200037, 2200383),
    Era.new("正和", 1312, 2200383, 2202167),
    Era.new("文保", 1317, 2202167, 2202960),
    Era.new("元応", 1319, 2202960, 2203634),
    Era.new("元亨", 1321, 2203634, 2205008),
    Era.new("正中", 1324, 2205008, 2205527),
    Era.new("嘉暦", 1326, 2205527, 2206740),
    Era.new("元徳", 1329, 2206740, 2207459),
    Era.new("元弘", 1331, 2207459, 2208365),
    Era.new("正慶", 1332, 2207714, 2208124),
    Era.new("建武", 1334, 2208365, 2210046),
    Era.new("延元", 1336, 2209133, 2210638),
    Era.new("興国", 1340, 2210638, 2213069),
    Era.new("正平", 1346, 2213069, 2221678),
    Era.new("建徳", 1370, 2221678, 2222302),
    Era.new("文中", 1372, 2222302, 2223453),
    Era.new("天授", 1375, 2223453, 2225533),
    Era.new("弘和", 1381, 2225533, 2226702),
    Era.new("元中", 1384, 2226702, 2229809),
    Era.new("暦応", 1338, 2210046, 2211375),
    Era.new("康永", 1342, 2211375, 2212638),
    Era.new("貞和", 1345, 2212638, 2214239),
    Era.new("観応", 1350, 2214239, 2215184),
    Era.new("文和", 1352, 2215184, 2216456),
    Era.new("延文", 1356, 2216456, 2218287),
    Era.new("康安", 1361, 2218287, 2218812),
    Era.new("貞治", 1362, 2218812, 2220786),
    Era.new("応安", 1368, 2220786, 2223364),
    Era.new("永和", 1375, 2223364, 2224836),
    Era.new("康暦", 1379, 2224836, 2225547),
    Era.new("永徳", 1381, 2225547, 2226642),
    Era.new("至徳", 1384, 2226642, 2227937),
    Era.new("嘉慶", 1387, 2227937, 2228456),
    Era.new("康応", 1389, 2228456, 2228857),
    Era.new("明徳", 1390, 2228857, 2230430),
    Era.new("応永", 1394, 2230430, 2242796),
    Era.new("正長", 1428, 2242796, 2243276),
    Era.new("永享", 1429, 2243276, 2247452),
    Era.new("嘉吉", 1441, 2247452, 2248532),
    Era.new("文安", 1444, 2248532, 2250533),
    Era.new("宝徳", 1449, 2250533, 2251623),
    Era.new("享徳", 1452, 2251623, 2252745),
    Era.new("康正", 1455, 2252745, 2253516),
    Era.new("長禄", 1457, 2253516, 2254720),
    Era.new("寛正", 1460, 2254720, 2256587),
    Era.new("文正", 1466, 2256587, 2256978),
    Era.new("応仁", 1467, 2256978, 2257769),
    Era.new("文明", 1469, 2257769, 2264405),
    Era.new("長享", 1487, 2264405, 2265174),
    Era.new("延徳", 1489, 2265174, 2266235),
    Era.new("明応", 1492, 2266235, 2269375),
    Era.new("文亀", 1501, 2269375, 2270469),
    Era.new("永正", 1504, 2270469, 2276869),
    Era.new("大永", 1521, 2276869, 2279406),
    Era.new("享禄", 1528, 2279406, 2280862),
    Era.new("天文", 1532, 2280862, 2289332),
    Era.new("弘治", 1555, 2289332, 2290194),
    Era.new("永禄", 1558, 2290194, 2294647),
    Era.new("元亀", 1570, 2294647, 2295833),
    Era.new("天正", 1573, 2295833, 2302901),
    Era.new("文禄", 1592, 2302901, 2304337),
    Era.new("慶長", 1596, 2304337, 2311174),
    Era.new("元和", 1615, 2311174, 2314321),
    Era.new("寛永", 1624, 2314321, 2321897),
    Era.new("正保", 1644, 2321897, 2323077),
    Era.new("慶安", 1648, 2323077, 2324734),
    Era.new("承応", 1652, 2324734, 2325674),
    Era.new("明暦", 1655, 2325674, 2326865),
    Era.new("万治", 1658, 2326865, 2327871),
    Era.new("寛文", 1661, 2327871, 2332414),
    Era.new("延宝", 1673, 2332414, 2335346),
    Era.new("天和", 1681, 2335346, 2336224),
    Era.new("貞享", 1684, 2336224, 2337886),
    Era.new("元禄", 1688, 2337886, 2343539),
    Era.new("宝永", 1704, 2343539, 2346151),
    Era.new("正徳", 1711, 2346151, 2348037),
    Era.new("享保", 1716, 2348037, 2355279),
    Era.new("元文", 1736, 2355279, 2357049),
    Era.new("寛保", 1741, 2357049, 2358136),
    Era.new("延享", 1744, 2358136, 2359721),
    Era.new("寛延", 1748, 2359721, 2360947),
    Era.new("宝暦", 1751, 2360947, 2365529),
    Era.new("明和", 1764, 2365529, 2368614),
    Era.new("安永", 1772, 2368614, 2371672),
    Era.new("天明", 1781, 2371672, 2374529),
    Era.new("寛政", 1789, 2374529, 2378939),
    Era.new("享和", 1801, 2378939, 2380038),
    Era.new("文化", 1804, 2380038, 2385216),
    Era.new("文政", 1818, 2385216, 2389841),
    Era.new("天保", 1830, 2389841, 2394941),
    Era.new("弘化", 1844, 2394941, 2396119),
    Era.new("嘉永", 1848, 2396119, 2398599),
    Era.new("安政", 1854, 2398599, 2400509),
    Era.new("万延", 1860, 2400509, 2400864),
    Era.new("文久", 1861, 2400864, 2401958),
    Era.new("元治", 1864, 2401958, 2402358),
    Era.new("慶応", 1865, 2402358, 2403629),
    Era.new("明治", 1868, 2403357, 2419613),
    Era.new("大正", 1912, 2419614, 2424874),
    Era.new("昭和", 1926, 2424875, 2447534),
    Era.new("平成", 1989, 2447535, 1684383730585466947585),
  ].freeze
end