<?php 

date_default_timezone_set('Asia/Jakarta');

function pilih_kata($string, $nomor)
{
    $value = explode(" ", $string);
    $value = $value[$nomor];
    return $value;
}

function batasi_kata($kalimat_lengkap, $jumlah_kata)
{
	$arr_str = explode(' ', $kalimat_lengkap);
	$arr_str = array_slice($arr_str, 0, $jumlah_kata);
	return implode(' ', $arr_str);
}

function sanitize($dirty){
	return htmlentities($dirty, ENT_QUOTES,"UTF-8");
}

function waktu_berlalu($datetime, $penuh = false) {
    date_default_timezone_set('Asia/Jakarta');
    $sekarang = new DateTime;
    $yangLalu = new DateTime($datetime);
    $diff = $sekarang->diff($yangLalu);

    $diff->w = floor($diff->d / 7);
    $diff->d -= $diff->w * 7;

    $string = array(
        'y' => 'tahun',
        'm' => 'bulan',
        'w' => 'minggu',
        'd' => 'hari',
        'h' => 'jam',
        'i' => 'menit',
        's' => 'detik',
    );
    foreach ($string as $k => &$v) {
        if ($diff->$k) {
            $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? '' : '');
        } else {
            unset($string[$k]);
        }
    }

    if (!$penuh) $string = array_slice($string, 0, 1);
    return $string ? implode(', ', $string) . ' yang lalu' : 'Baru saja';
}

function tanggal_indo($date)
{
    setlocale(LC_ALL, 'id-ID', 'id_ID');
    $atur = strftime("%A, %d %B %Y", strtotime($date));
    return $atur;
}

function hanya_jam($date)
{
 setlocale(LC_ALL, 'id-ID', 'id_ID');
 $atur = strftime("%H:%I %p", strtotime($date));
 return $atur;
}

function hanya_tanggal($date)
{
    setlocale(LC_ALL, 'id-ID', 'id_ID');
    $atur = strftime("%d", strtotime($date));
    return $atur;
}

function bulan_indo($bulan)
{
    setlocale(LC_ALL, 'id-ID', 'id_ID');
    $atur = strftime("%B", strtotime($bulan));
    return $atur;
}

function get_gravatar( $email, $s = 80, $d = 'mp', $r = 'g', $img = false, $atts = array() ) {
    $url = 'https://www.gravatar.com/avatar/';
    $url .= md5( strtolower( trim( $email ) ) );
    $url .= "?s=$s&d=$d&r=$r";
    if ( $img ) {
        $url = '<img src="' . $url . '"';
        foreach ( $atts as $key => $val )
            $url .= ' ' . $key . '="' . $val . '"';
        $url .= ' />';
    }
    return $url;
}


?>