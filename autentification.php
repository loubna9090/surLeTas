<?php 
function init():bool
{
	if (!session_id()){
		session_start();
		session_regenerate_id();
		return true; 
	}
		return false;

}

function cleanPhp():void
{

session_unset();
session_destroy();

}

function isConnect():bool
{
 return true;

}

?>