<?php 

require __DIR__.'../../../vendor/autoload.php';

use Dompdf\Dompdf;
use Dompdf\Options;

$dompdf = new Dompdf();
$options = new Options();
$options->set('isRemoteEnabled', true);
$options-> set ('isHtml5ParserEnabled', true);


$id = $_GET['id'];


ob_start();

require __DIR__."/producao-pdf.php";

$dompdf->loadHtml(ob_get_clean());

// echo $pdf;

$dompdf->setPaper("A4");

$dompdf->render();

$dompdf->stream("pedido.pdf", ["Attachment"=> false]);


