package com.tinshine.blog.entity;

import java.util.HashMap;
import java.util.Map;

public class ReturnEntity {
    private static final int RESPONSE_FAILED = -1;
    private static final int RESPONSE_SUCCESS = 0;
    private int code;
    private String msg;
    private Map<String, Object> data = new HashMap<>();

    public static ReturnEntity error(String errorMsg) {
        ReturnEntity responseEntity = new ReturnEntity();
        responseEntity.setCode(RESPONSE_FAILED);
        responseEntity.setMsg(errorMsg);
        return responseEntity;
    }

    public static ReturnEntity success() {
        ReturnEntity responseEntity = new ReturnEntity();
        responseEntity.setCode(RESPONSE_SUCCESS);
        responseEntity.setMsg("操作成功");
        return responseEntity;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getData() {
        return data;
    }

    public void setData(Map<String, Object> data) {
        this.data = data;
    }
}
