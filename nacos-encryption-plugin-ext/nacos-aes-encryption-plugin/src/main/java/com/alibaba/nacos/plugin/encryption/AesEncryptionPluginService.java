/*
 * Copyright 1999-2021 Alibaba Group Holding Ltd.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.alibaba.nacos.plugin.encryption;

import com.alibaba.nacos.api.utils.StringUtils;
import com.alibaba.nacos.common.codec.Base64;
import com.alibaba.nacos.plugin.encryption.spi.EncryptionPluginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.Key;
import java.security.SecureRandom;
import java.util.HexFormat;

/**
 * AES Encryption algorithm implementation.
 *
 * @author lixiaoshuang
 */
@SuppressWarnings("PMD.ServiceOrDaoClassShouldEndWithImplRule")
public class AesEncryptionPluginService implements EncryptionPluginService {

    private static final Logger LOGGER = LoggerFactory.getLogger(AesEncryptionPluginService.class);

    public static final String AES_NAME = "aes";

    private static final String AES_MODE = "AES/CBC/PKCS5Padding";

    private static final String IV_PARAMETER = "fa6fa5207b3286b2";

    private static final String DEFAULT_SECRET_KEY = "nacos6b31e19f931a7603ae5473250b4";

    private static final int IV_LENGTH = 16;

    @Override
    public String encrypt(String secretKey, String content) {
        if (StringUtils.isBlank(secretKey)) {
            return content;
        }
        try {
            secretKey = new String(Base64.decodeBase64(secretKey.getBytes(StandardCharsets.UTF_8)));

            // 使用 HexFormat 进行 Hex解码
            HexFormat hexFormat = HexFormat.of();
            byte[] keyBytes = hexFormat.parseHex(secretKey);
            Key key = new SecretKeySpec(keyBytes, AES_NAME);

            Cipher cipher = Cipher.getInstance(AES_MODE);
            cipher.init(Cipher.ENCRYPT_MODE, key, generateIv(secretKey));
            byte[] result = cipher.doFinal(content.getBytes(StandardCharsets.UTF_8));

            // 使用 HexFormat 进行 Hex编码
            return hexFormat.formatHex(result);

        } catch (Exception e) {
            LOGGER.error("[AesEncryptionPluginService] encrypt error", e);
        }
        return content;
    }

    @Override
    public String decrypt(String secretKey, String content) {
        if (StringUtils.isBlank(secretKey) || StringUtils.isBlank(content)) {
            return content;
        }
        try {
            // 创建 HexFormat 实例
            HexFormat hexFormat = HexFormat.of();

            // Base64 解码密钥
            secretKey = new String(Base64.decodeBase64(secretKey.getBytes(StandardCharsets.UTF_8)));

            // 使用 HexFormat 进行 Hex 解码（替换 Hex.decodeHex）
            byte[] keyBytes = hexFormat.parseHex(secretKey);
            Key key = new SecretKeySpec(keyBytes, AES_NAME);

            Cipher cipher = Cipher.getInstance(AES_MODE);
            cipher.init(Cipher.DECRYPT_MODE, key, generateIv(secretKey));

            // 使用 HexFormat 解码内容（替换 Hex.decodeHex）
            byte[] encryptedData = hexFormat.parseHex(content);
            byte[] result = cipher.doFinal(encryptedData);

            return new String(result, StandardCharsets.UTF_8);
        } catch (Exception e) {
            LOGGER.error("[AesEncryptionPluginService] decrypt error", e);
        }
        return content;
    }

    @Override
    public String generateSecretKey() {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance(AES_NAME);
            keyGenerator.init(new SecureRandom());
            SecretKey secretKey = keyGenerator.generateKey();
            byte[] byteKey = secretKey.getEncoded();

            // 使用 Java 17+ 的 HexFormat 进行十六进制编码（替换 Hex.encodeHexString）
            HexFormat hexFormat = HexFormat.of();
            String key = hexFormat.formatHex(byteKey);

            // 使用 Java 标准库的 Base64 编码器（Java 8+）
            java.util.Base64.Encoder encoder = java.util.Base64.getEncoder();
            return encoder.encodeToString(key.getBytes(StandardCharsets.UTF_8));

        } catch (Exception e) {
            LOGGER.error("[AesEncryptionPluginService] generate key error", e);
        }
        return DEFAULT_SECRET_KEY;
    }

    /**
     * IV initial vector size is 16 bytes, take the first 16 bytes of secret Key.
     *
     * @param secretKey secretKey
     * @return IvParameterSpec
     */
    private IvParameterSpec generateIv(String secretKey) {
        if (StringUtils.isBlank(secretKey) || secretKey.length() < IV_LENGTH) {
            new IvParameterSpec(IV_PARAMETER.getBytes(StandardCharsets.UTF_8));
        }
        String iv = secretKey.substring(0, IV_LENGTH);
        return new IvParameterSpec(iv.getBytes(StandardCharsets.UTF_8));
    }

    @Override
    public String algorithmName() {
        return AES_NAME;
    }

    @Override
    public String encryptSecretKey(String secretKey) {
        // todo
        return secretKey;
    }

    @Override
    public String decryptSecretKey(String secretKey) {
        // todo
        return secretKey;
    }
}
