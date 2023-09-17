package edu.yctc.common.utils.http;

import java.util.Map;

import org.apache.commons.collections4.MapUtils;
import org.apache.http.HttpResponse;

import com.google.common.collect.Maps;

/**
 * @author Tony
 */
public class RestUtils {
    private static final String ENCODE = "utf-8";

    public static String doGet(String host, String path, Map<String, String> headers,
        Map<String, String> queries) {
        HttpResponse httpResponse = HttpUtilsLuna.doGet(host, path, headers, queries);
        return HttpUtilsLuna.checkResponseAndGetResult(httpResponse);
    }

    public static String doPost(String host, String path, Map<String, String> headers,
        Map<String, String> queries, String body) {
        if (MapUtils.isEmpty(headers)) {
            headers = Maps.newHashMap();
        }
        headers.put("Content-Type", "application/json");
        HttpResponse httpResponse = HttpUtilsLuna.doPost(host, path, headers, queries, body);
        return HttpUtilsLuna.checkResponseAndGetResult(httpResponse);
    }

}
