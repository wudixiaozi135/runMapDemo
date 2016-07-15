package com.map.consDef
{
	public class ShortenPathType
	{
		/**
		 * 实际截断的长度与给定的长度最接近，或大或小
		 * */
		public static const FIX:int = 0;
		/**
		 * 实际截断的长度大于给定的长度且最接近
		 * */
		public static const CEIL:int = 1;
		/**
		 * 实际截断的长度小于给定的长度且最接近
		 * */
		public static const FLOOR:int = 2;

		public function ShortenPathType()
		{
		}
	}
}