<?php
/**
 * TOP API: htian.sanba.itemcats.get request
 */
class HtianSanbaItemcatsGetRequest
{
	private $fields;

	private $apiParas = array();
	

	public function setFields($fields)
	{
		$this->fields = $fields;
		$this->apiParas["fields"] = $fields;
	}

	public function getFields()
	{
		return $this->fields;
	}

	

	public function getApiMethodName()
	{
		return "htian.sanba.itemcats.get";
	}
	
	public function getApiParas()
	{
		return $this->apiParas;
	}
	
	public function check()
	{
	}
	
	public function putOtherTextParam($key, $value) {
		$this->apiParas[$key] = $value;
		$this->$key = $value;
	}
}