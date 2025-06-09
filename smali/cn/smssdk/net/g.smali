.class public Lcn/smssdk/net/g;
.super Lcn/smssdk/net/a;
.source "ServiceApi.java"


# instance fields
.field private k:I

.field private l:J

.field private m:Lcn/smssdk/utils/SPHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/smssdk/net/a;-><init>()V

    .line 2
    invoke-static {}, Lcn/smssdk/utils/SPHelper;->getInstance()Lcn/smssdk/utils/SPHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/net/g;->m:Lcn/smssdk/utils/SPHelper;

    return-void
.end method

.method private b(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "host"

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "port"

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "action"

    .line 4
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/smssdk/net/a;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/smssdk/net/g;->m:Lcn/smssdk/utils/SPHelper;

    iget-object v1, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/smssdk/utils/SPHelper;->getLastRequestTimeMillis(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/smssdk/net/g;->l:J

    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/smssdk/net/g;->m:Lcn/smssdk/utils/SPHelper;

    iget-object v1, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcn/smssdk/net/g;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lcn/smssdk/utils/SPHelper;->setLastRequestTimeMillis(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcn/smssdk/net/a;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    invoke-static {}, Lcn/smssdk/net/e;->a()Lcn/smssdk/net/e;

    move-result-object v1

    iget v2, p0, Lcn/smssdk/net/a;->a:I

    iget-object v3, p0, Lcn/smssdk/net/a;->h:Ljava/util/ArrayList;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcn/smssdk/net/e;->a(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "ServiceApi"

    aput-object v0, p2, p3

    const/4 p3, 0x1

    const-string v0, "buildParams"

    aput-object v0, p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "]Can not build request params since listParam is null."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    aput-object p3, p2, v0

    const-string p3, "[SMSSDK][%s][%s] %s"

    invoke-virtual {p1, p3, p2}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 89
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Can not build request params since listParam is null."

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "name"

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 5
    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    const-string v1, "getZoneList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 6
    iput v1, p0, Lcn/smssdk/net/a;->a:I

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    const-string v4, "getToken"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 8
    iput v4, p0, Lcn/smssdk/net/a;->a:I

    goto/16 :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    const-string/jumbo v5, "submitUser"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 10
    iput v0, p0, Lcn/smssdk/net/a;->a:I

    goto/16 :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    const-string v5, "logCollect"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    .line 12
    iput v0, p0, Lcn/smssdk/net/a;->a:I

    goto/16 :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    const-string v5, "logInstall"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    .line 14
    iput v0, p0, Lcn/smssdk/net/a;->a:I

    goto/16 :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    const-string/jumbo v5, "sendTextSMS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    .line 16
    iput v0, p0, Lcn/smssdk/net/a;->a:I

    goto :goto_0

    .line 17
    :cond_5
    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    const-string/jumbo v5, "sendVoiceSMS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    .line 18
    iput v0, p0, Lcn/smssdk/net/a;->a:I

    goto :goto_0

    .line 19
    :cond_6
    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    const-string/jumbo v5, "verifyCode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    .line 20
    iput v0, p0, Lcn/smssdk/net/a;->a:I

    goto :goto_0

    .line 21
    :cond_7
    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    const-string/jumbo v5, "uploadCollectData"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    .line 22
    iput v0, p0, Lcn/smssdk/net/a;->a:I

    goto :goto_0

    .line 23
    :cond_8
    iget-object v0, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    const-string/jumbo v5, "sdkLog"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xd

    .line 24
    iput v0, p0, Lcn/smssdk/net/a;->a:I

    goto :goto_0

    .line 26
    :cond_9
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ServiceApi"

    aput-object v5, v4, v2

    const-string v5, "parseConfig"

    aput-object v5, v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown api type. name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, v1, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 27
    iput v2, p0, Lcn/smssdk/net/a;->a:I

    .line 30
    :goto_0
    invoke-direct {p0, p1}, Lcn/smssdk/net/g;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/net/a;->c:Ljava/lang/String;

    const-string v0, "params"

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcn/smssdk/net/a;->h:Ljava/util/ArrayList;

    .line 32
    iget-object v0, p0, Lcn/smssdk/net/a;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "zip"

    .line 36
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 38
    iput-boolean v3, p0, Lcn/smssdk/net/a;->d:Z

    goto :goto_1

    .line 40
    :cond_a
    iput-boolean v2, p0, Lcn/smssdk/net/a;->d:Z

    :goto_1
    const-string/jumbo v0, "request"

    .line 43
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 45
    iput-boolean v3, p0, Lcn/smssdk/net/a;->e:Z

    goto :goto_2

    .line 47
    :cond_b
    iput-boolean v2, p0, Lcn/smssdk/net/a;->e:Z

    :goto_2
    const-string v0, "frequency"

    .line 50
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcn/smssdk/net/g;->k:I

    if-eqz p1, :cond_c

    .line 53
    iput-boolean v3, p0, Lcn/smssdk/net/a;->f:Z

    .line 55
    :cond_c
    invoke-direct {p0}, Lcn/smssdk/net/g;->e()V

    return-void

    .line 56
    :cond_d
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "GET API PARAMS ERROR"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_e
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "GET API NAME ERROR"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    iget-boolean v0, p0, Lcn/smssdk/net/a;->e:Z

    const-string v1, "[SMSSDK][%s][%s] %s"

    const/4 v2, 0x2

    const-string v3, "["

    const-string v4, "checkLimit"

    const/4 v5, 0x1

    const-string v6, "ServiceApi"

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    .line 64
    iget-boolean v0, p0, Lcn/smssdk/net/a;->f:Z

    if-eqz v0, :cond_1

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcn/smssdk/net/g;->l:J

    sub-long/2addr v9, v11

    .line 66
    iget v0, p0, Lcn/smssdk/net/g;->k:I

    int-to-long v11, v0

    cmp-long v0, v9, v11

    if-ltz v0, :cond_0

    .line 71
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v6, v9, v8

    aput-object v4, v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]interval > frequency."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v0, v1, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v8

    aput-object v4, v7, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]Request too frequently, terminate this request. Interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/smssdk/net/g;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-virtual {v0, v1, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 74
    new-instance v0, Ljava/lang/Throwable;

    const-string/jumbo v1, "{\"status\":600}"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v6, v9, v8

    aput-object v4, v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]Not limited for this api."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v0, v1, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 81
    :goto_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v8

    aput-object v4, v7, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]Check OK, allow sending request."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-virtual {v0, v1, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v8

    .line 82
    :cond_2
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v8

    aput-object v4, v7, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/smssdk/net/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]No access permission for this api, terminate this request."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-virtual {v0, v1, v7}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 83
    new-instance v0, Ljava/lang/Throwable;

    const-string/jumbo v1, "{\"status\":606}"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/smssdk/net/a;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/smssdk/net/g;->l:J

    .line 5
    invoke-direct {p0}, Lcn/smssdk/net/g;->f()V

    return-void
.end method
