<?
	@ session_start();
	if($_SESSION['nivel']=='admin'){ ?>
		<p style="text-align:center;"><a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,allR','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,true','listaAlu.php');" >Todos</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,A','listaAlu.php');" >A</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,B','listaAlu.php');" >B</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,C','listaAlu.php');" >C</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,D','listaAlu.php');" >D</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,E','listaAlu.php');" >E</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,F','listaAlu.php');" >F</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,G','listaAlu.php');" >G</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,H','listaAlu.php');" >H</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,I','listaAlu.php');" >I</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,J','listaAlu.php');" >J</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,K','listaAlu.php');" >K</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,L','listaAlu.php');" >L</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,M','listaAlu.php');" >M</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,N','listaAlu.php');" >N</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,Ñ','listaAlu.php');" >Ñ</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,O','listaAlu.php');" >O</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,P','listaAlu.php');" >P</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,Q','listaAlu.php');" >Q</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,R','listaAlu.php');" >R</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,S','listaAlu.php');" >S</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,T','listaAlu.php');" >T</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,U','listaAlu.php');" >U</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,V','listaAlu.php');" >V</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,W','listaAlu.php');" >W</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,X','listaAlu.php');" >X</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,Y','listaAlu.php');" >Y</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,Z','listaAlu.php');" >Z</a></p>
	<?}elseif($_SESSION['nivel']=='evaluador'){?>
		<p style="text-align:center;"><a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,allR','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,true','listaAlu.php');" >Todos</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,A','listaAlu.php');" >A</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,B','listaAlu.php');" >B</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,C','listaAlu.php');" >C</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,D','listaAlu.php');" >D</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,E','listaAlu.php');" >E</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,F','listaAlu.php');" >F</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,G','listaAlu.php');" >G</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,H','listaAlu.php');" >H</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,I','listaAlu.php');" >I</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,J','listaAlu.php');" >J</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,K','listaAlu.php');" >K</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,L','listaAlu.php');" >L</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,M','listaAlu.php');" >M</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,N','listaAlu.php');" >N</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,Ñ','listaAlu.php');" >Ñ</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,O','listaAlu.php');" >O</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,P','listaAlu.php');" >P</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,Q','listaAlu.php');" >Q</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,R','listaAlu.php');" >R</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,S','listaAlu.php');" >S</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,T','listaAlu.php');" >T</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,U','listaAlu.php');" >U</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,V','listaAlu.php');" >V</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,W','listaAlu.php');" >W</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,X','listaAlu.php');" >X</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,Y','listaAlu.php');" >Y</a> - <a class="azul" href="#" onclick="javascript:crearContenidosArreglo('carrera,periodo,criterioS,letra','<? echo $carrera;?>,<?echo $periodo;?>,<?echo $criterioS;?>,Z','listaAlu.php');" >Z</a></p>
	<? } ?>
	
