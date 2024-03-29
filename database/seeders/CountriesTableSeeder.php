<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Country;

class CountriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $countries = [
            ['name' => 'Afganistán', 'country_code' => 93, 'flag_path' => 'https://0.0-02.net/flag/af.jpg'],
            ['name' => 'Albania', 'country_code' => 355, 'flag_path' => 'https://0.0-02.net/flag/al.jpg'],
            ['name' => 'Alemania', 'country_code' => 49, 'flag_path' => 'https://0.0-02.net/flag/de.jpg'],
            ['name' => 'Andorra', 'country_code' => 376, 'flag_path' => 'https://0.0-02.net/flag/ad.jpg'],
            ['name' => 'Angola', 'country_code' => 244, 'flag_path' => 'https://0.0-02.net/flag/ao.jpg'],
            ['name' => 'Anguila', 'country_code' => 1264, 'flag_path' => 'https://0.0-02.net/flag/ai.jpg'],
            ['name' => 'Antártida', 'country_code' => 6721, 'flag_path' => 'https://0.0-02.net/flag/aq.jpg'],
            ['name' => 'Antigua y Barbuda', 'country_code' => 1268, 'flag_path' => 'https://0.0-02.net/flag/ag.jpg'],
            ['name' => 'Arabia Saudita', 'country_code' => 966, 'flag_path' => 'https://0.0-02.net/flag/sa.jpg'],
            ['name' => 'Argelia', 'country_code' => 213, 'flag_path' => 'https://0.0-02.net/flag/dz.jpg'],

            ['name' => 'Argentina', 'country_code' => 54, 'flag_path' => 'https://0.0-02.net/flag/ar.jpg'],
            ['name' => 'Armenia', 'country_code' => 374, 'flag_path' => 'https://0.0-02.net/flag/am.jpg'],
            ['name' => 'Aruba', 'country_code' => 297, 'flag_path' => 'https://0.0-02.net/flag/aw.jpg'],
            ['name' => 'Australia', 'country_code' => 61, 'flag_path' => 'https://0.0-02.net/flag/au.jpg'],
            ['name' => 'Austria', 'country_code' => 43, 'flag_path' => 'https://0.0-02.net/flag/at.jpg'],
            ['name' => 'Azerbaiyán', 'country_code' => 994, 'flag_path' => 'https://0.0-02.net/flag/az.jpg'],
            ['name' => 'Bahamas', 'country_code' => 1242, 'flag_path' => 'https://0.0-02.net/flag/bs.jpg'],
            ['name' => 'Bangladésh', 'country_code' => 880, 'flag_path' => 'https://0.0-02.net/flag/bd.jpg'],
            ['name' => 'Barbados', 'country_code' => 1246	, 'flag_path' => 'https://0.0-02.net/flag/bb.jpg'],
            ['name' => 'Baréin', 'country_code' => 973, 'flag_path' => 'https://0.0-02.net/flag/bh.jpg'],

            ['name' => 'Bélgica', 'country_code' => 32, 'flag_path' => 'https://0.0-02.net/flag/be.jpg'],
            ['name' => 'Belice', 'country_code' => 501, 'flag_path' => 'https://0.0-02.net/flag/bz.jpg'],
            ['name' => 'Benín', 'country_code' => 229, 'flag_path' => 'https://0.0-02.net/flag/bj.jpg'],
            ['name' => 'Bermudas', 'country_code' => 1441, 'flag_path' => 'https://0.0-02.net/flag/bm.jpg'],
            ['name' => 'Bielorrusia', 'country_code' => 375, 'flag_path' => 'https://0.0-02.net/flag/by.jpg'],
            ['name' => 'Bolivia', 'country_code' => 591, 'flag_path' => 'https://0.0-02.net/flag/bo.jpg'],
            ['name' => 'Bonaire, San Eustaquio y Saba', 'country_code' => 5997, 'flag_path' => 'https://0.0-02.net/flag/bq.jpg'],
            ['name' => 'Bosnia y Herzegovina', 'country_code' => 387, 'flag_path' => 'https://0.0-02.net/flag/ba.jpg'],
            ['name' => 'Botsuana', 'country_code' => 267, 'flag_path' => 'https://0.0-02.net/flag/bw.jpg'],
            ['name' => 'Brasil', 'country_code' => 55, 'flag_path' => 'https://0.0-02.net/flag/br.jpg'],

            ['name' => 'Brunéi', 'country_code' => 673, 'flag_path' => 'https://0.0-02.net/flag/bn.jpg'],
            ['name' => 'Bulgaria', 'country_code' => 359, 'flag_path' => 'https://0.0-02.net/flag/bg.jpg'],
            ['name' => 'Burkina Faso', 'country_code' => 226, 'flag_path' => 'https://0.0-02.net/flag/bf.jpg'],
            ['name' => 'Burundi', 'country_code' => 257, 'flag_path' => 'https://0.0-02.net/flag/bi.jpg'],
            ['name' => 'Bután', 'country_code' => 975, 'flag_path' => 'https://0.0-02.net/flag/bt.jpg'],
            ['name' => 'Cabo Verde', 'country_code' => 238, 'flag_path' => 'https://0.0-02.net/flag/cv.jpg'],
            ['name' => 'Camboya', 'country_code' => 855, 'flag_path' => 'https://0.0-02.net/flag/kh.jpg'],
            ['name' => 'Camerún', 'country_code' => 237, 'flag_path' => 'https://0.0-02.net/flag/cm.jpg'],
            ['name' => 'Canadá', 'country_code' => 1, 'flag_path' => 'https://0.0-02.net/flag/ca.jpg'],
            ['name' => 'Chad', 'country_code' => 235, 'flag_path' => 'https://0.0-02.net/flag/td.jpg'],

            ['name' => 'Chile', 'country_code' => 56, 'flag_path' => 'https://0.0-02.net/flag/cl.jpg'],
            ['name' => 'China', 'country_code' => 86, 'flag_path' => 'https://0.0-02.net/flag/cn.jpg'],
            ['name' => 'Chipre', 'country_code' => 357, 'flag_path' => 'https://0.0-02.net/flag/cy.jpg'],
            ['name' => 'Colombia', 'country_code' => 57, 'flag_path' => 'https://0.0-02.net/flag/co.jpg'],
            ['name' => 'Comoras', 'country_code' => 269, 'flag_path' => 'https://0.0-02.net/flag/km.jpg'],
            ['name' => 'Congo, La República Democrática del', 'country_code' => 242, 'flag_path' => 'https://0.0-02.net/flag/cd.jpg'],
            ['name' => 'Congo', 'country_code' => 243, 'flag_path' => 'https://0.0-02.net/flag/cg.jpg'],
            ['name' => 'Corea, República de', 'country_code' => 82, 'flag_path' => 'https://0.0-02.net/flag/kr.jpg'],
            ['name' => 'Corea, República Democrática Popular de', 'country_code' => 850, 'flag_path' => 'https://0.0-02.net/flag/kp.jpg'],
            ['name' => 'Costa de Marfil', 'country_code' => 225, 'flag_path' => 'https://0.0-02.net/flag/ci.jpg'],

            ['name' => 'Costa Rica', 'country_code' => 506, 'flag_path' => 'https://0.0-02.net/flag/cr.jpg'],
            ['name' => 'Croacia', 'country_code' => 385, 'flag_path' => 'https://0.0-02.net/flag/hr.jpg'],
            ['name' => 'Cuba', 'country_code' => 53, 'flag_path' => 'https://0.0-02.net/flag/cu.jpg'],
            ['name' => 'Curazao', 'country_code' => 599, 'flag_path' => 'https://0.0-02.net/flag/cw.jpg'],
            ['name' => 'Dinamarca', 'country_code' => 45, 'flag_path' => 'https://0.0-02.net/flag/dk.jpg'],
            ['name' => 'Dominica', 'country_code' => 1767, 'flag_path' => 'https://0.0-02.net/flag/dm.jpg'],
            ['name' => 'Ecuador', 'country_code' => 593, 'flag_path' => 'https://0.0-02.net/flag/ec.jpg'],
            ['name' => 'Egipto', 'country_code' => 20, 'flag_path' => 'https://0.0-02.net/flag/eg.jpg'],
            ['name' => 'El Salvador', 'country_code' => 503, 'flag_path' => 'https://0.0-02.net/flag/sv.jpg'],
            ['name' => 'Emiratos Árabes Unidos', 'country_code' => 971, 'flag_path' => 'https://0.0-02.net/flag/ae.jpg'],

            ['name' => 'Eritrea', 'country_code' => 291, 'flag_path' => 'https://0.0-02.net/flag/er.jpg'],
            ['name' => 'Eslovaquia', 'country_code' => 421, 'flag_path' => 'https://0.0-02.net/flag/sk.jpg'],
            ['name' => 'Eslovenia', 'country_code' => 386, 'flag_path' => 'https://0.0-02.net/flag/si.jpg'],
            ['name' => 'España', 'country_code' => 34, 'flag_path' => 'https://0.0-02.net/flag/es.jpg'],
            ['name' => 'Estados Unidos', 'country_code' => 1, 'flag_path' => 'https://0.0-02.net/flag/us.jpg'],
            ['name' => 'Estonia', 'country_code' => 372, 'flag_path' => 'https://0.0-02.net/flag/ee.jpg'],
            ['name' => 'Etiopía', 'country_code' => 251, 'flag_path' => 'https://0.0-02.net/flag/et.jpg'],
            ['name' => 'Rusia', 'country_code' => 7, 'flag_path' => 'https://0.0-02.net/flag/ru.jpg'],
            ['name' => 'Filipinas', 'country_code' => 63, 'flag_path' => 'https://0.0-02.net/flag/ph.jpg'],
            ['name' => 'Finlandia', 'country_code' => 358, 'flag_path' => 'https://0.0-02.net/flag/fi.jpg'],

            ['name' => 'Fiyi', 'country_code' => 679, 'flag_path' => 'https://0.0-02.net/flag/fj.jpg'],
            ['name' => 'Francia', 'country_code' => 33, 'flag_path' => 'https://0.0-02.net/flag/fr.jpg'],
            ['name' => 'Gabón', 'country_code' => 241, 'flag_path' => 'https://0.0-02.net/flag/ga.jpg'],
            ['name' => 'Gambia', 'country_code' => 220, 'flag_path' => 'https://0.0-02.net/flag/gm.jpg'],
            ['name' => 'Georgia', 'country_code' => 995, 'flag_path' => 'https://0.0-02.net/flag/ge.jpg'],
            ['name' => 'Ghana', 'country_code' => 233, 'flag_path' => 'https://0.0-02.net/flag/gh.jpg'],
            ['name' => 'Gibraltar', 'country_code' => 350, 'flag_path' => 'https://0.0-02.net/flag/gi.jpg'],
            ['name' => 'Granada', 'country_code' => 1473, 'flag_path' => 'https://0.0-02.net/flag/gd.jpg'],
            ['name' => 'Grecia', 'country_code' => 30, 'flag_path' => 'https://0.0-02.net/flag/gr.jpg'],
            ['name' => 'Groenlandia', 'country_code' => 299, 'flag_path' => 'https://0.0-02.net/flag/gl.jpg'],

            ['name' => 'Guadalupe', 'country_code' => 590, 'flag_path' => 'https://0.0-02.net/flag/gp.jpg'],
            ['name' => 'Guam', 'country_code' => 1671, 'flag_path' => 'https://0.0-02.net/flag/gu.jpg'],
            ['name' => 'Guatemala', 'country_code' => 502, 'flag_path' => 'https://0.0-02.net/flag/gt.jpg'],
            ['name' => 'Guayana Francesa', 'country_code' => 594, 'flag_path' => 'https://0.0-02.net/flag/gf.jpg'],
            ['name' => 'Guernsey', 'country_code' => 44, 'flag_path' => 'https://0.0-02.net/flag/gg.jpg'],
            ['name' => 'Guinea-Bisáu', 'country_code' => 245, 'flag_path' => 'https://0.0-02.net/flag/gw.jpg'],
            ['name' => 'Guinea Ecuatorial', 'country_code' => 240, 'flag_path' => 'https://0.0-02.net/flag/gq.jpg'],
            ['name' => 'Guinea', 'country_code' => 224, 'flag_path' => 'https://0.0-02.net/flag/gn.jpg'],
            ['name' => 'Guyana', 'country_code' => 592, 'flag_path' => 'https://0.0-02.net/flag/gy.jpg'],
            ['name' => 'Haití', 'country_code' => 509, 'flag_path' => 'https://0.0-02.net/flag/ht.jpg'],

            ['name' => 'Honduras', 'country_code' => 504, 'flag_path' => 'https://0.0-02.net/flag/hn.jpg'],
            ['name' => 'Hong Kong', 'country_code' => 852, 'flag_path' => 'https://0.0-02.net/flag/hk.jpg'],
            ['name' => 'Hungría', 'country_code' => 36, 'flag_path' => 'https://0.0-02.net/flag/hu.jpg'],
            ['name' => 'India', 'country_code' => 91, 'flag_path' => 'https://0.0-02.net/flag/in.jpg'],
            ['name' => 'Indonesia', 'country_code' => 62, 'flag_path' => 'https://0.0-02.net/flag/id.jpg'],
            ['name' => 'Irak', 'country_code' => 964, 'flag_path' => 'https://0.0-02.net/flag/iq.jpg'],
            ['name' => 'Irán', 'country_code' => 98, 'flag_path' => 'https://0.0-02.net/flag/ir.jpg'],
            ['name' => 'Irlanda', 'country_code' => 353, 'flag_path' => 'https://0.0-02.net/flag/ie.jpg'],
            ['name' => 'Isla Bouvet', 'country_code' => 47, 'flag_path' => 'https://0.0-02.net/flag/bv.jpg'],
            ['name' => 'Isla de Man', 'country_code' => 44, 'flag_path' => 'https://0.0-02.net/flag/im.jpg'],

            ['name' => 'Isla de Navidad', 'country_code' => 61, 'flag_path' => 'https://0.0-02.net/flag/cx.jpg'],
            ['name' => 'Isla Norfolk', 'country_code' => 6723, 'flag_path' => 'https://0.0-02.net/flag/nf.jpg'],
            ['name' => 'Islandia', 'country_code' => 354, 'flag_path' => 'https://0.0-02.net/flag/is.jpg'],
            ['name' => 'Islas Åland', 'country_code' => 35818, 'flag_path' => 'https://0.0-02.net/flag/ax.jpg'],
            ['name' => 'Islas Caimán', 'country_code' => 1345, 'flag_path' => 'https://0.0-02.net/flag/ky.jpg'],
            ['name' => 'Islas Cocos (Keeling)', 'country_code' => 61, 'flag_path' => 'https://0.0-02.net/flag/cc.jpg'],
            ['name' => 'Islas Cook', 'country_code' => 682, 'flag_path' => 'https://0.0-02.net/flag/ck.jpg'],
            ['name' => 'Islas Falkland (Malvinas)', 'country_code' => 500, 'flag_path' => 'https://0.0-02.net/flag/fk.jpg'],
            ['name' => 'Islas Feroe', 'country_code' => 298, 'flag_path' => 'https://0.0-02.net/flag/fo.jpg'],
            ['name' => 'Islas Georgias del Sur y Sandwich del Sur', 'country_code' => 500, 'flag_path' => 'https://0.0-02.net/flag/gs.jpg'],

            ['name' => 'Islas Heard y Mcdonald', 'country_code' => 1672, 'flag_path' => 'https://0.0-02.net/flag/hm.jpg'],
            ['name' => 'Islas Marianas del Norte', 'country_code' => 1670, 'flag_path' => 'https://0.0-02.net/flag/mp.jpg'],
            ['name' => 'Islas Marshall', 'country_code' => 692, 'flag_path' => 'https://0.0-02.net/flag/mh.jpg'],
            ['name' => 'Islas Salomón', 'country_code' => 677, 'flag_path' => 'https://0.0-02.net/flag/sb.jpg'],
            ['name' => 'Islas Turcas y Caicos', 'country_code' => 1649, 'flag_path' => 'https://0.0-02.net/flag/tc.jpg'],
            ['name' => 'Islas Ultramarinas Menores de Estados Unidos', 'country_code' => 1808, 'flag_path' => 'https://0.0-02.net/flag/um.jpg'],
            ['name' => 'Islas Virgenes Británicas', 'country_code' => 1284, 'flag_path' => 'https://0.0-02.net/flag/vg.jpg'],
            ['name' => 'Islas Virgenes de Los Estados Unidos', 'country_code' => 1340, 'flag_path' => 'https://0.0-02.net/flag/vi.jpg'],
            ['name' => 'Israel', 'country_code' => 972, 'flag_path' => 'https://0.0-02.net/flag/il.jpg'],
            ['name' => 'Italia', 'country_code' => 39, 'flag_path' => 'https://0.0-02.net/flag/it.jpg'],

            ['name' => 'Jamaica', 'country_code' => 1876, 'flag_path' => 'https://0.0-02.net/flag/jm.jpg'],
            ['name' => 'Japón', 'country_code' => 81, 'flag_path' => 'https://0.0-02.net/flag/jp.jpg'],
            ['name' => 'Jersey', 'country_code' => 44, 'flag_path' => 'https://0.0-02.net/flag/je.jpg'],
            ['name' => 'Jordania', 'country_code' => 962, 'flag_path' => 'https://0.0-02.net/flag/jo.jpg'],
            ['name' => 'Kazajistán', 'country_code' => 7, 'flag_path' => 'https://0.0-02.net/flag/kz.jpg'],
            ['name' => 'Kenia', 'country_code' => 254, 'flag_path' => 'https://0.0-02.net/flag/ke.jpg'],
            ['name' => 'Kirguistán', 'country_code' => 996, 'flag_path' => 'https://0.0-02.net/flag/kg.jpg'],
            ['name' => 'Kiribati', 'country_code' => 686, 'flag_path' => 'https://0.0-02.net/flag/ki.jpg'],
            ['name' => 'Kuwait', 'country_code' => 965, 'flag_path' => 'https://0.0-02.net/flag/kw.jpg'],
            ['name' => 'Lesoto', 'country_code' => 266, 'flag_path' => 'https://0.0-02.net/flag/ls.jpg'],

            ['name' => 'Letonia', 'country_code' => 371, 'flag_path' => 'https://0.0-02.net/flag/lv.jpg'],
            ['name' => 'Líbano', 'country_code' => 961, 'flag_path' => 'https://0.0-02.net/flag/lb.jpg'],
            ['name' => 'Liberia', 'country_code' => 231, 'flag_path' => 'https://0.0-02.net/flag/lr.jpg'],
            ['name' => 'Libia', 'country_code' => 218, 'flag_path' => 'https://0.0-02.net/flag/ly.jpg'],
            ['name' => 'Liechtenstein', 'country_code' => 423, 'flag_path' => 'https://0.0-02.net/flag/li.jpg'],
            ['name' => 'Lituania', 'country_code' => 370, 'flag_path' => 'https://0.0-02.net/flag/lt.jpg'],
            ['name' => 'Luxemburgo', 'country_code' => 352, 'flag_path' => 'https://0.0-02.net/flag/lu.jpg'],
            ['name' => 'Macao', 'country_code' => 853, 'flag_path' => 'https://0.0-02.net/flag/mo.jpg'],
            ['name' => 'Macedonia', 'country_code' => 389, 'flag_path' => 'https://0.0-02.net/flag/mk.jpg'],
            ['name' => 'Madagascar', 'country_code' => 261, 'flag_path' => 'https://0.0-02.net/flag/mg.jpg'],

            ['name' => 'Malasia', 'country_code' => 60, 'flag_path' => 'https://0.0-02.net/flag/my.jpg'],
            ['name' => 'Malaui', 'country_code' => 265, 'flag_path' => 'https://0.0-02.net/flag/mw.jpg'],
            ['name' => 'Maldivas', 'country_code' => 960, 'flag_path' => 'https://0.0-02.net/flag/mv.jpg'],
            ['name' => 'Malí', 'country_code' => 223, 'flag_path' => 'https://0.0-02.net/flag/ml.jpg'],
            ['name' => 'Malta', 'country_code' => 356, 'flag_path' => 'https://0.0-02.net/flag/mt.jpg'],
            ['name' => 'Marruecos', 'country_code' => 212, 'flag_path' => 'https://0.0-02.net/flag/ma.jpg'],
            ['name' => 'Martinica', 'country_code' => 596, 'flag_path' => 'https://0.0-02.net/flag/mq.jpg'],
            ['name' => 'Mauricio', 'country_code' => 230, 'flag_path' => 'https://0.0-02.net/flag/mu.jpg'],
            ['name' => 'Mauritania', 'country_code' => 222, 'flag_path' => 'https://0.0-02.net/flag/mr.jpg'],
            ['name' => 'Mayotte', 'country_code' => 262, 'flag_path' => 'https://0.0-02.net/flag/yt.jpg'],

            ['name' => 'México', 'country_code' => 52, 'flag_path' => 'https://0.0-02.net/flag/mx.jpg'],
            ['name' => 'Micronesia', 'country_code' => 691, 'flag_path' => 'https://0.0-02.net/flag/fm.jpg'],
            ['name' => 'Moldavia', 'country_code' => 373, 'flag_path' => 'https://0.0-02.net/flag/md.jpg'],
            ['name' => 'Mónaco', 'country_code' => 377, 'flag_path' => 'https://0.0-02.net/flag/mc.jpg'],
            ['name' => 'Mongolia', 'country_code' => 976, 'flag_path' => 'https://0.0-02.net/flag/mn.jpg'],
            ['name' => 'Montenegro', 'country_code' => 382, 'flag_path' => 'https://0.0-02.net/flag/me.jpg'],
            ['name' => 'Montserrat', 'country_code' => 1664, 'flag_path' => 'https://0.0-02.net/flag/ms.jpg'],
            ['name' => 'Mozambique', 'country_code' => 258, 'flag_path' => 'https://0.0-02.net/flag/mz.jpg'],
            ['name' => 'Myanmar', 'country_code' => 95, 'flag_path' => 'https://0.0-02.net/flag/mm.jpg'],
            ['name' => 'Nabimia', 'country_code' => 264, 'flag_path' => 'https://0.0-02.net/flag/na.jpg'],

            ['name' => 'Nauru', 'country_code' => 674, 'flag_path' => 'https://0.0-02.net/flag/nr.jpg'],
            ['name' => 'Nepal', 'country_code' => 977, 'flag_path' => 'https://0.0-02.net/flag/np.jpg'],
            ['name' => 'Nicaragua', 'country_code' => 505, 'flag_path' => 'https://0.0-02.net/flag/ni.jpg'],
            ['name' => 'Nigeria', 'country_code' => 234, 'flag_path' => 'https://0.0-02.net/flag/ng.jpg'],
            ['name' => 'Níger', 'country_code' => 227, 'flag_path' => 'https://0.0-02.net/flag/ne.jpg'],
            ['name' => 'Niue', 'country_code' => 683, 'flag_path' => 'https://0.0-02.net/flag/nu.jpg'],
            ['name' => 'Noruega', 'country_code' => 47, 'flag_path' => 'https://0.0-02.net/flag/no.jpg'],
            ['name' => 'Nueva Caledonia', 'country_code' => 687, 'flag_path' => 'https://0.0-02.net/flag/nc.jpg'],
            ['name' => 'Nueva Zelanda', 'country_code' => 64, 'flag_path' => 'https://0.0-02.net/flag/nz.jpg'],
            ['name' => 'Omán', 'country_code' => 968, 'flag_path' => 'https://0.0-02.net/flag/om.jpg'],

            ['name' => 'Países Bajos', 'country_code' => 31, 'flag_path' => 'https://0.0-02.net/flag/nl.jpg'],
            ['name' => 'Pakistán', 'country_code' => 92, 'flag_path' => 'https://0.0-02.net/flag/pk.jpg'],
            ['name' => 'Palaos', 'country_code' => 680, 'flag_path' => 'https://0.0-02.net/flag/pw.jpg'],
            ['name' => 'Palestina', 'country_code' => 970, 'flag_path' => 'https://0.0-02.net/flag/ps.jpg'],
            ['name' => 'Panamá', 'country_code' => 507, 'flag_path' => 'https://0.0-02.net/flag/pa.jpg'],
            ['name' => 'Papúa Nueva Guinea', 'country_code' => 675, 'flag_path' => 'https://0.0-02.net/flag/pg.jpg'],
            ['name' => 'Paraguay', 'country_code' => 595, 'flag_path' => 'https://0.0-02.net/flag/py.jpg'],
            ['name' => 'Perú', 'country_code' => 51, 'flag_path' => 'https://0.0-02.net/flag/pe.jpg'],
            ['name' => 'Pitcairn', 'country_code' => 64, 'flag_path' => 'https://0.0-02.net/flag/pn.jpg'],
            ['name' => 'Polinesia Francesa', 'country_code' => 689, 'flag_path' => 'https://0.0-02.net/flag/pf.jpg'],

            ['name' => 'Polonia', 'country_code' => 48, 'flag_path' => 'https://0.0-02.net/flag/pl.jpg'],
            ['name' => 'Portugal', 'country_code' => 351, 'flag_path' => 'https://0.0-02.net/flag/pt.jpg'],
            ['name' => 'Puerto Rico', 'country_code' => 1, 'flag_path' => 'https://0.0-02.net/flag/pr.jpg'],
            ['name' => 'Qatar', 'country_code' => 974, 'flag_path' => 'https://0.0-02.net/flag/qa.jpg'],
            ['name' => 'Reino Unido', 'country_code' => 44, 'flag_path' => 'https://0.0-02.net/flag/gb.jpg'],
            ['name' => 'República Centroafricana', 'country_code' => 236, 'flag_path' => 'https://0.0-02.net/flag/cf.jpg'],
            ['name' => 'República Checa', 'country_code' => 420, 'flag_path' => 'https://0.0-02.net/flag/cz.jpg'],
            ['name' => 'Laos', 'country_code' => 856, 'flag_path' => 'https://0.0-02.net/flag/la.jpg'],
            ['name' => 'República Dominicana', 'country_code' => 1, 'flag_path' => 'https://0.0-02.net/flag/do.jpg'],
            ['name' => 'Reunión', 'country_code' => 262, 'flag_path' => 'https://0.0-02.net/flag/re.jpg'],
            
            ['name' => 'Ruanda', 'country_code' => 250, 'flag_path' => 'https://0.0-02.net/flag/rw.jpg'],
            ['name' => 'Rumania', 'country_code' => 40, 'flag_path' => 'https://0.0-02.net/flag/ro.jpg'],
            ['name' => 'Sahara Occidental', 'country_code' => 21228, 'flag_path' => 'https://0.0-02.net/flag/eh.jpg'],
            ['name' => 'Samoa Americana', 'country_code' => 1684, 'flag_path' => 'https://0.0-02.net/flag/as.jpg'],
            ['name' => 'Samoa', 'country_code' => 685, 'flag_path' => 'https://0.0-02.net/flag/ws.jpg'],
            ['name' => 'San Bartolomé', 'country_code' => 590, 'flag_path' => 'https://0.0-02.net/flag/bl.jpg'],
            ['name' => 'San Cristóbal y Nieves', 'country_code' => 1869, 'flag_path' => 'https://0.0-02.net/flag/kn.jpg'],
            ['name' => 'San Marino', 'country_code' => 378, 'flag_path' => 'https://0.0-02.net/flag/sm.jpg'],
            ['name' => 'San Martín', 'country_code' => 590, 'flag_path' => 'https://0.0-02.net/flag/mf.jpg'],
            ['name' => 'San Pedro y Miquelón', 'country_code' => 508, 'flag_path' => 'https://0.0-02.net/flag/pm.jpg'],
            
            ['name' => 'San Vicente y Las Granadinas', 'country_code' => 1784, 'flag_path' => 'https://0.0-02.net/flag/vc.jpg'],
            ['name' => 'Santa Helena, Ascensión y Tristán de Acuña', 'country_code' => 290, 'flag_path' => 'https://0.0-02.net/flag/sh.jpg'],
            ['name' => 'Santa Lucía', 'country_code' => 1758, 'flag_path' => 'https://0.0-02.net/flag/lc.jpg'],
            ['name' => 'Ciudad del Vaticano', 'country_code' => 379, 'flag_path' => 'https://0.0-02.net/flag/va.jpg'],
            ['name' => 'Santo Tomé y Principe', 'country_code' => 239, 'flag_path' => 'https://0.0-02.net/flag/st.jpg'],
            ['name' => 'Senegal', 'country_code' => 221, 'flag_path' => 'https://0.0-02.net/flag/sn.jpg'],
            ['name' => 'Serbia', 'country_code' => 381, 'flag_path' => 'https://0.0-02.net/flag/rs.jpg'],
            ['name' => 'Seychelles', 'country_code' => 248, 'flag_path' => 'https://0.0-02.net/flag/sc.jpg'],
            ['name' => 'Sierra Leona', 'country_code' => 232, 'flag_path' => 'https://0.0-02.net/flag/sl.jpg'],
            ['name' => 'Singapur', 'country_code' => 65, 'flag_path' => 'https://0.0-02.net/flag/sg.jpg'],
            
            ['name' => 'Sint Maarten', 'country_code' => 1721, 'flag_path' => 'https://0.0-02.net/flag/sx.jpg'],
            ['name' => 'Siria', 'country_code' => 963, 'flag_path' => 'https://0.0-02.net/flag/sy.jpg'],
            ['name' => 'Somalia', 'country_code' => 252, 'flag_path' => 'https://0.0-02.net/flag/so.jpg'],
            ['name' => 'Sri Lanka', 'country_code' => 94, 'flag_path' => 'https://0.0-02.net/flag/lk.jpg'],
            ['name' => 'Suazilandia', 'country_code' => 268, 'flag_path' => 'https://0.0-02.net/flag/sz.jpg'],
            ['name' => 'Sudáfrica', 'country_code' => 27, 'flag_path' => 'https://0.0-02.net/flag/za.jpg'],
            ['name' => 'Sudán del Sur', 'country_code' => 211, 'flag_path' => 'https://0.0-02.net/flag/ss.jpg'],
            ['name' => 'Sudán', 'country_code' => 249, 'flag_path' => 'https://0.0-02.net/flag/sd.jpg'],
            ['name' => 'Suecia', 'country_code' => 46, 'flag_path' => 'https://0.0-02.net/flag/se.jpg'],
            ['name' => 'Suiza', 'country_code' => 41, 'flag_path' => 'https://0.0-02.net/flag/ch.jpg'],
            
            ['name' => 'Surinam', 'country_code' => 597, 'flag_path' => 'https://0.0-02.net/flag/sr.jpg'],
            ['name' => 'Svalbard y Jan Mayen', 'country_code' => 47, 'flag_path' => 'https://0.0-02.net/flag/sj.jpg'],
            ['name' => 'Tailandia', 'country_code' => 66, 'flag_path' => 'https://0.0-02.net/flag/th.jpg'],
            ['name' => 'Taiwán', 'country_code' => 886, 'flag_path' => 'https://0.0-02.net/flag/tw.jpg'],
            ['name' => 'Tanzania', 'country_code' => 255, 'flag_path' => 'https://0.0-02.net/flag/tz.jpg'],
            ['name' => 'Tayikistán', 'country_code' => 992, 'flag_path' => 'https://0.0-02.net/flag/tj.jpg'],
            ['name' => 'Territorio Británico del Océano Índico', 'country_code' => 246, 'flag_path' => 'https://0.0-02.net/flag/io.jpg'],
            ['name' => 'Territorios Australes Franceses', 'country_code' => 0, 'flag_path' => 'https://0.0-02.net/flag/tf.jpg'],
            ['name' => 'Timor-Leste', 'country_code' => 670, 'flag_path' => 'https://0.0-02.net/flag/tl.jpg'],
            ['name' => 'Togo', 'country_code' => 228, 'flag_path' => 'https://0.0-02.net/flag/tg.jpg'],
            
            ['name' => 'Tokelau', 'country_code' => 690, 'flag_path' => 'https://0.0-02.net/flag/tk.jpg'],
            ['name' => 'Tonga', 'country_code' => 676, 'flag_path' => 'https://0.0-02.net/flag/to.jpg'],
            ['name' => 'Trinidad y Tobago', 'country_code' => 1868, 'flag_path' => 'https://0.0-02.net/flag/tt.jpg'],
            ['name' => 'Túnez', 'country_code' => 216, 'flag_path' => 'https://0.0-02.net/flag/tn.jpg'],
            ['name' => 'Turkmenistán', 'country_code' => 993, 'flag_path' => 'https://0.0-02.net/flag/tm.jpg'],
            ['name' => 'Turquía', 'country_code' => 90, 'flag_path' => 'https://0.0-02.net/flag/tr.jpg'],
            ['name' => 'Tuvalu', 'country_code' => 688, 'flag_path' => 'https://0.0-02.net/flag/tv.jpg'],
            ['name' => 'Ucrania', 'country_code' => 380, 'flag_path' => 'https://0.0-02.net/flag/ua.jpg'],
            ['name' => 'Uganda', 'country_code' => 256, 'flag_path' => 'https://0.0-02.net/flag/ug.jpg'],
            ['name' => 'Uruguay', 'country_code' => 598, 'flag_path' => 'https://0.0-02.net/flag/uy.jpg'],
            
            ['name' => 'Uzbekistán', 'country_code' => 998, 'flag_path' => 'https://0.0-02.net/flag/uz.jpg'],
            ['name' => 'Vanuatu', 'country_code' => 678, 'flag_path' => 'https://0.0-02.net/flag/vu.jpg'],
            ['name' => 'Venezuela', 'country_code' => 58, 'flag_path' => 'https://0.0-02.net/flag/ve.jpg'],
            ['name' => 'Vietnam', 'country_code' => 84, 'flag_path' => 'https://0.0-02.net/flag/vn.jpg'],
            ['name' => 'Wallis y Futuna', 'country_code' => 681, 'flag_path' => 'https://0.0-02.net/flag/wf.jpg'],
            ['name' => 'Yemen', 'country_code' => 967, 'flag_path' => 'https://0.0-02.net/flag/ye.jpg'],
            ['name' => 'Yibuti', 'country_code' => 253, 'flag_path' => 'https://0.0-02.net/flag/dj.jpg'],
            ['name' => 'Zambia', 'country_code' => 260, 'flag_path' => 'https://0.0-02.net/flag/zm.jpg'],
            ['name' => 'Zimbabue', 'country_code' => 263, 'flag_path' => 'https://0.0-02.net/flag/zw.jpg'],
        ];

        foreach ($countries as $countryData) {
            $country = new Country($countryData);
            $country->save();
        }
    }
}
