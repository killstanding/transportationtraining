package tech.wetech.admin.core.utils;

import java.util.UUID;

/**
 * @Package com.inspur.utils.UUIDUtils
 * @Copyright: Copyright (c) 2016
 * version V1.0.0
 */
public class UUIDUtils {
    /**
     * @Description: uuid 生成
     * @Title
     * @param
     * @return
     * @throws
     */
    public static String getUUID() {
        UUID uuid = UUID.randomUUID();
        String str = uuid.toString();
        // 去掉"-"符号
        return str.replace("-", "");
    }

    public static void main(String[] args) {
        System.out.println(getUUID());
    }
}
