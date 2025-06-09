.class Lcn/smssdk/net/login/LoginCore$1;
.super Lcn/smssdk/utils/d;
.source "LoginCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/net/login/LoginCore;->a(Ljava/lang/String;Lcn/smssdk/wrapper/TokenVerifyResult;Lcn/smssdk/net/login/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/smssdk/wrapper/TokenVerifyResult;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mob/tools/utils/Hashon;

.field final synthetic d:Lcn/smssdk/net/login/d;


# direct methods
.method constructor <init>(Lcn/smssdk/net/login/LoginCore;Ljava/lang/String;Lcn/smssdk/wrapper/TokenVerifyResult;Ljava/lang/String;Lcom/mob/tools/utils/Hashon;Lcn/smssdk/net/login/d;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcn/smssdk/net/login/LoginCore$1;->a:Lcn/smssdk/wrapper/TokenVerifyResult;

    iput-object p4, p0, Lcn/smssdk/net/login/LoginCore$1;->b:Ljava/lang/String;

    iput-object p5, p0, Lcn/smssdk/net/login/LoginCore$1;->c:Lcom/mob/tools/utils/Hashon;

    iput-object p6, p0, Lcn/smssdk/net/login/LoginCore$1;->d:Lcn/smssdk/net/login/d;

    invoke-direct {p0, p2}, Lcn/smssdk/utils/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    const-string v0, "Request: http://identify.verify.mob.com/auth/verify/mobile\nparams: "

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "appkey"

    .line 2
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "opToken"

    .line 3
    :try_start_2
    iget-object v3, p0, Lcn/smssdk/net/login/LoginCore$1;->a:Lcn/smssdk/wrapper/TokenVerifyResult;

    invoke-virtual {v3}, Lcn/smssdk/wrapper/TokenVerifyResult;->getOpToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v2, "token"

    .line 4
    :try_start_3
    iget-object v3, p0, Lcn/smssdk/net/login/LoginCore$1;->a:Lcn/smssdk/wrapper/TokenVerifyResult;

    invoke-virtual {v3}, Lcn/smssdk/wrapper/TokenVerifyResult;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "operator"

    .line 5
    :try_start_4
    iget-object v3, p0, Lcn/smssdk/net/login/LoginCore$1;->a:Lcn/smssdk/wrapper/TokenVerifyResult;

    invoke-virtual {v3}, Lcn/smssdk/wrapper/TokenVerifyResult;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v2, "phone"

    .line 6
    :try_start_5
    iget-object v3, p0, Lcn/smssdk/net/login/LoginCore$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string/jumbo v2, "timestamp"

    .line 7
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string/jumbo v2, "sign"

    .line 8
    :try_start_7
    invoke-static {}, Lcom/mob/MobSDK;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/smssdk/net/login/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v2, Lcom/mob/tools/network/KVPair;

    const-string v3, "Content-Type"

    const-string v6, "application/json"

    invoke-direct {v2, v3, v6}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v6}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v2, 0x1388

    .line 15
    iput v2, v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 16
    iput v2, v6, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 17
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/smssdk/net/login/LoginCore$1;->c:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, v4}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 18
    new-instance v2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v3, "http://identify.verify.mob.com/auth/verify/mobile"

    .line 19
    :try_start_8
    new-instance v7, Lcn/smssdk/net/login/LoginCore$1$1;

    invoke-direct {v7, p0}, Lcn/smssdk/net/login/LoginCore$1$1;-><init>(Lcn/smssdk/net/login/LoginCore$1;)V

    invoke-virtual/range {v2 .. v7}, Lcom/mob/tools/network/NetworkHelper;->jsonPost(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;Lcom/mob/tools/network/HttpResponseCallback;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 75
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "login exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "[SMSSDK] %s"

    invoke-virtual {v2, v0, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x267

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Ljava/lang/Throwable;

    iget-object v2, p0, Lcn/smssdk/net/login/LoginCore$1;->c:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcn/smssdk/net/login/LoginCore$1;->d:Lcn/smssdk/net/login/d;

    invoke-virtual {v0, v1}, Lcn/smssdk/net/login/d;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
