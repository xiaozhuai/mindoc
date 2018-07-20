## Description
- 通过access_token获取用户信息

## Request

### Method & Url
**POST** - `/api/authtp/get_user_info`

### Header
| Header       | Type   | Required | Default          | Description              |
|--------------|:------:|:--------:|------------------|--------------------------|
| Content-Type | string | Yes      | application/json | ResquestBody 为 json 类型 |

### Body
| Field        | Type   | Required | Default     | Description    |
|--------------|:------:|:--------:|-------------|----------------|
| app_id       | string | Yes      |             | H5应用的app_id  |
| access_token | string | Yes      |             | 授权登录令牌     |
| sign         | string | Yes      |             | 数据包签名       |
| nonce        | string | No       |             | 随机值          |


### Sample
```json
{
    "app_id": "xxxxxx",
    "access_token": "xxxxxxx",
    "sign": "xxxxxx",
    "nonce": "xxxxxx"
}
```

## Response

### Header
| Header       | Type   | Required | Default          | Description              |
|--------------|:------:|:--------:|------------------|--------------------------|
| Content-Type | string | Yes      | application/json | ResponseBody 为 json 类型 |

### Body
| Field              | Type   | Required | Description                  |
|--------------------|:------:|:--------:|------------------------------|
| code               | string | Yes      | 状态码，OK为成功，其它为失败     |
| msg                | string | Yes      | 失败提示信息，成功时为空         |
| data               | object | Yes      | 返回数据包                    |
| &ensp; ├─ user_id  | string | No       | 无他用户id                    |
| &ensp; ├─ nick     | string | No       | 昵称                         |
| &ensp; ├─ sex      | int    | No       | 性别，0：保密，1：男，2：女     |
| &ensp; ├─ birthday | string | No       | 生日，格式：yyyy-mm-dd        |
| &ensp; ├─ avatar   | string | No       | 头像链接                      |
| &ensp; └─ sign     | string | No       | 数据包签名                    |

### Sample

#### success
```json
{
    "code": "OK",
    "msg": "",
    "data": {
        "user_id": "7707d82e",
        "nick": "大道至简7",
        "sex": "1",
        "birthday": "0000-00-00",
        "avatar": "https://uc-static.wuta-cam.com/avatar/7515215.png",
        "sign": "xxxxxx"
    }
}
```

#### error
```json
{
    "code": "APP_ID_NOT_EXIST",
    "msg": "app_id不存在",
    "data": null
}
```