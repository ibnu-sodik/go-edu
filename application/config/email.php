<?php defined('BASEPATH') OR exit('No direct script access allowed');

$config = array(
    'protocol' 		=> 'smtp', // 'mail', 'sendmail', or 'smtp'
    'smtp_host' 	=> 'smtp.goblog252.com', 
    'smtp_port' 	=> 465,
    'smtp_user' 	=> 'admin@goblog252.com',
    'smtp_pass' 	=> 'G IS me 252',
    'smtp_crypto' 	=> 'ssl', //can be 'ssl' or 'tls' for example
    'mailtype' 		=> 'html', //plaintext 'text' mails or 'html'
    'smtp_timeout' 	=> 7, //in seconds
    'charset'       => 'iso-8859-1',
    'newline' 		=> '\r\n',
    'wordwrap'      => TRUE
    // 'validate'      => FALSE,
);