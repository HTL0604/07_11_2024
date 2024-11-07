package ute.shop.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashFunction {
	private static final String FIXED_STRING = "RANDOM";
	public static String sha1Hash128(String input) {
        try {
            // Tạo một instance của SHA-1
            MessageDigest digest = MessageDigest.getInstance("SHA-1");
            
            // Kết hợp chuỗi nhập và chuỗi cố định
            String combinedInput = input + FIXED_STRING;
            
            // Băm đầu vào đã kết hợp
            byte[] hashBytes = digest.digest(combinedInput.getBytes());

            // Chuyển byte[] thành chuỗi hex và lấy 128 bits đầu tiên
            StringBuilder hexString = new StringBuilder();
            for (int i = 0; i < 16; i++) { // 16 byte đầu tiên tương ứng với 128 bits
                String hex = Integer.toHexString(0xff & hashBytes[i]);
                if (hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }
            return hexString.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}

