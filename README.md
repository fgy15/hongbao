抢红包是一个常见的任务，这里作为PHP语言的练习。

一、用例分析。

用户管理：注册、登录。

账户管理：充值、提现。

红包管理：发红包、抢红包、红包超时。

二、实体分析。

实体是真实物体或者虚拟物体，但是是有逻辑意义的。

这里设计了几个实体：用户、账户、银行卡、转账记录、红包、小红包、小红包领取记录、充值提现记录。

用户：描述一个用户基本信息。包括 uid name pwd

账户：存储钱的客观账户。包括 account uid val type

银行卡：抽象的银行账户。包括 cardid pwd

转账记录：描述账户之间交易记录。包括tid 入账账户 出账账户 金额 时间

红包：描述红包信息。包括 bid val uid msg num type 创建时间 超时时间

小红包：描述大红包细分的小红包。包括 mid bid val 领取状态

小红包领取记录：描述小红包被领取情况。包括 mid 领取人uid 领取时间

充值提现记录：描述充值提现记录。 包括 tsid account val type(+/-) time cardid

三、接口

返回结构体格式

{

st  //状态 0、1

err_id:

err_msg:

data: //所有有意义的结果放在data里

}

1、注册 POST /user.php

{

name

pwd

}

2、登录 POST /login.php

{

name

pwd

}

返回设置cookie:  id  token  用来判别身份

3、充值 POST /account/charge.php

{

carid

pwd

val

}

4、提现 POST /account/draw.php

{

carid

val

}

5、查余额 GET /account.php
返回 data=val

6、发红包 POST /bribery.php

{

val  //金额

msg 

num // 消息

type // 1 均分 2 随机

}

返回

data = mid

7 、抢红包 GET /bribery?id=mid

返回

{
  "st": 1,
  "data": {
    "val": "4.48",
    "bribery_status": {
      "uid": "1",
      "name": "1",
      "msg": "恭喜发财",
      "val": "10",
      "type": "2",
      "num": "4",
      "ptime": "2016-08-04 19:25:11",
      "count": 2,
      "status": {
        "2": {
          "val": "4.48",
          "uid": "2",
          "name": "2",
          "time": "2016-08-04 19:27:01"
        },
        "3": {
          "val": "1.25",
          "uid": "3",
          "name": "3",
          "time": "2016-08-04 19:25:42"
        }
      }
    }
  }
}

8、查询领取情况 GET /bribery/st?id=mid

返回

{
  "st": 1,
  "error_id": null,
  "error_msg": null,
  "data": {
    "uid": "1",
    "name": "1",
    "msg": "恭喜发财",
    "val": "10",
    "type": "2",
    "num": "4",
    "ptime": "2016-08-04 19:25:11",
    "count": 2,
    "status": {
      "2": {
        "val": "4.48",
        "uid": "2",
        "name": "2",
        "time": "2016-08-04 19:27:01"
      },
      "3": {
        "val": "1.25",
        "uid": "3",
        "name": "3",
        "time": "2016-08-04 19:25:42"
      }
    }
  }
}
9、添加crontab定时任务
*/1 * * * * cd /usr/local/nginx/html/hongbao;/app/soft/php/bin/php time.php
脚本定时检查红包过期时间和退款