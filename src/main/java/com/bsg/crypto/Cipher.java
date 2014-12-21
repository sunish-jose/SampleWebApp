package com.bsg.crypto;

import java.io.IOException;
import java.util.Date;
import java.util.Random;

import org.springframework.stereotype.Component;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

@Component
public class Cipher {

	private  Random random = new Random(new Date().getTime());

	public  String encrypt(String normalString) {
		
		BASE64Encoder encoder = new BASE64Encoder();
		byte[] salt = new byte[8];
		random.nextBytes(salt);
		return encoder.encode(salt) + encoder.encode(normalString.getBytes());
	}

	public  String decrypt(String encString) {

		if (encString.length() > 12) {
			String cipher = encString.substring(12);
			BASE64Decoder decoder = new BASE64Decoder();
			try {
				return new String(decoder.decodeBuffer(cipher));
			} catch (IOException e) {
			}
		}
		return null;
	}

}
