.class public Lcn/smssdk/SMSSDKCore;
.super Ljava/lang/Object;
.source "SMSSDKCore.java"


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcn/smssdk/EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/smssdk/net/f;

.field private c:Lcn/smssdk/b/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcn/smssdk/SMSSDK$InitFlag;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcn/smssdk/a;->a()Lcn/smssdk/a;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    .line 4
    invoke-static {}, Lcn/smssdk/net/f;->d()Lcn/smssdk/net/f;

    move-result-object p1

    iput-object p1, p0, Lcn/smssdk/SMSSDKCore;->b:Lcn/smssdk/net/f;

    .line 5
    invoke-static {}, Lcn/smssdk/b/a;->a()Lcn/smssdk/b/a;

    move-result-object p1

    iput-object p1, p0, Lcn/smssdk/SMSSDKCore;->c:Lcn/smssdk/b/a;

    return-void
.end method

.method static synthetic a(Lcn/smssdk/SMSSDKCore;)Lcn/smssdk/net/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/smssdk/SMSSDKCore;->b:Lcn/smssdk/net/f;

    return-object p0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 216
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "status"

    .line 218
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "detail"

    .line 219
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :catchall_0
    new-instance p0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method static synthetic a(ILjava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method private a(IILjava/lang/Object;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const-string/jumbo v0, "smssdk_error_desc_"

    const-string/jumbo v5, "smssdk_error_desc_"

    const-string v6, "Throwable message: "

    .line 28
    sget-object v7, Lcn/smssdk/utils/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_1

    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    .line 30
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-array v12, v9, [Ljava/lang/Object;

    const-string v13, "SMSSDKCore"

    aput-object v13, v12, v11

    const-string/jumbo v13, "throwResult"

    aput-object v13, v12, v10

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "afterEvent. event: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static/range {p1 .. p1}, Lcn/smssdk/utils/c;->a(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Lcn/smssdk/utils/c;->b(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[SMSSDK][%s][%s] %s"

    .line 32
    invoke-virtual {v7, v13, v12}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    new-array v12, v9, [Ljava/lang/Object;

    const-string v13, "SMSSDKCore"

    aput-object v13, v12, v11

    const-string/jumbo v13, "throwResult"

    aput-object v13, v12, v10

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "afterEvent. event: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static/range {p1 .. p1}, Lcn/smssdk/utils/c;->a(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Lcn/smssdk/utils/c;->b(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[SMSSDK][%s][%s] %s"

    .line 37
    invoke-virtual {v7, v13, v12}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    if-eqz v4, :cond_d

    .line 41
    instance-of v7, v4, Ljava/lang/Throwable;

    if-eqz v7, :cond_d

    .line 42
    instance-of v7, v4, Lcn/smssdk/wrapper/TokenVerifyException;

    if-eqz v7, :cond_2

    .line 43
    move-object v0, v4

    check-cast v0, Lcn/smssdk/wrapper/TokenVerifyException;

    .line 44
    invoke-virtual {v0}, Lcn/smssdk/wrapper/TokenVerifyException;->getCode()I

    move-result v5

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 46
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v12, "status"

    .line 48
    invoke-virtual {v7, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "detail"

    .line 49
    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    new-instance v5, Ljava/lang/Throwable;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 52
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 54
    :cond_2
    instance-of v7, v4, Lcom/mob/MobCommunicator$NetworkError;

    const/16 v12, 0x26b

    if-eqz v7, :cond_5

    .line 55
    move-object v0, v4

    check-cast v0, Lcom/mob/MobCommunicator$NetworkError;

    .line 56
    invoke-virtual {v0}, Lcom/mob/MobCommunicator$NetworkError;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 59
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "error"

    .line 60
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v13, "status"

    .line 61
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "httpStatus"

    .line 62
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v14, 0xc8

    if-eq v4, v14, :cond_4

    .line 65
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 68
    invoke-static {v13, v0}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    goto/16 :goto_2

    .line 71
    :cond_3
    invoke-static {v12, v7, v0}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    goto/16 :goto_2

    .line 74
    :cond_4
    invoke-static {v12, v7, v0}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 78
    :catchall_0
    invoke-static {v12, v6, v0}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    goto/16 :goto_2

    .line 83
    :cond_5
    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;

    .line 84
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 87
    :try_start_2
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v14, "[SMSSDK][%s][%s] %s"

    :try_start_3
    new-array v12, v9, [Ljava/lang/Object;

    const-string v16, "SMSSDKCore"

    aput-object v16, v12, v11

    const-string/jumbo v16, "throwResult"

    aput-object v16, v12, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v8

    invoke-virtual {v15, v14, v12}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-string/jumbo v6, "status"

    .line 89
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v10, "detail"

    .line 90
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x190

    if-lt v6, v12, :cond_6

    const/16 v12, 0x1f4

    if-le v6, v12, :cond_7

    :cond_6
    const/16 v12, 0x258

    if-lt v6, v12, :cond_8

    .line 92
    :cond_7
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    .line 94
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "status"

    .line 96
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "detail"

    .line 97
    invoke-virtual {v0, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    new-instance v4, Ljava/lang/Throwable;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :cond_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v6, 0x267

    .line 103
    invoke-static {v6, v7, v5}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_9
    move-object v0, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 106
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-array v6, v11, [Ljava/lang/Object;

    const-string v10, "[SMSSDK] %s"

    invoke-virtual {v4, v0, v10, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 107
    instance-of v0, v5, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_a

    const/16 v4, 0x268

    .line 108
    invoke-static {v4, v5}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :cond_a
    const/16 v4, 0x267

    .line 111
    invoke-static {v4, v7, v5}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :cond_b
    const/16 v4, 0x268

    .line 115
    instance-of v0, v5, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_c

    .line 116
    invoke-static {v4, v5}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 118
    :cond_c
    invoke-static {v12, v5}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 121
    :goto_1
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_2
    move-object v4, v0

    .line 124
    :cond_d
    :goto_3
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "SMSSDKCore"

    aput-object v6, v5, v11

    const-string/jumbo v6, "throwResult"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Data put into afterEvent: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, v6, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 125
    invoke-static {}, Lcn/smssdk/logger/d;->d()Lcn/smssdk/logger/d;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcn/smssdk/logger/d;->a(ILjava/lang/Object;)V

    .line 126
    iget-object v5, v1, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    monitor-enter v5

    .line 127
    :try_start_4
    iget-object v0, v1, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/smssdk/EventHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 129
    :try_start_5
    invoke-virtual {v0, v2, v3, v4}, Lcn/smssdk/EventHandler;->afterEvent(IILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v0

    .line 131
    :try_start_6
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-string v8, "[SMSSDK] %s"

    const/4 v9, 0x1

    :try_start_7
    new-array v10, v9, [Ljava/lang/Object;

    const-string v12, "Outer exception encountered"

    aput-object v12, v10, v11

    invoke-virtual {v0, v7, v8, v10}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_4

    .line 134
    :cond_e
    monitor-exit v5

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method private a(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    .line 223
    invoke-static {}, Lcn/smssdk/utils/b;->c()Lcn/smssdk/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/smssdk/utils/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/smssdk/utils/b;->c()Lcn/smssdk/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/smssdk/utils/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SMSSDKCore"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "showDialog"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AlertPage.isShow(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/smssdk/ui/AlertPage;->isShow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 225
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "smssdk_authorize_msg_sms"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcn/smssdk/utils/SmsResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {}, Lcn/smssdk/ui/AlertPage;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-static {v0}, Lcn/smssdk/ui/AlertPage;->setMsg(Ljava/lang/String;)V

    .line 228
    invoke-static {p2, p3}, Lcn/smssdk/ui/AlertPage;->setActions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 230
    :cond_0
    new-instance v1, Lcn/smssdk/ui/AlertPage;

    invoke-direct {v1}, Lcn/smssdk/ui/AlertPage;-><init>()V

    .line 231
    invoke-static {v0}, Lcn/smssdk/ui/AlertPage;->setMsg(Ljava/lang/String;)V

    .line 232
    invoke-static {p2, p3}, Lcn/smssdk/ui/AlertPage;->setActions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 233
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcn/smssdk/SMSSDKCore$12;

    invoke-direct {p3, p0, p1}, Lcn/smssdk/SMSSDKCore$12;-><init>(Lcn/smssdk/SMSSDKCore;I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p2, p1, p3}, Lcom/mob/tools/FakeActivity;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 271
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/smssdk/SMSSDKCore;IILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcn/smssdk/SMSSDKCore;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcn/smssdk/SMSSDKCore;ILjava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    const/16 p1, 0x265

    const/4 v0, 0x0

    .line 135
    invoke-static {p1, v0}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcn/smssdk/SMSSDKCore;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private static b(ILjava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3

    .line 130
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "smssdk_error_desc_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 131
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "status"

    .line 134
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "detail"

    .line 135
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :catchall_0
    new-instance p0, Ljava/lang/Throwable;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method static synthetic b(Lcn/smssdk/SMSSDKCore;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    return-object p0
.end method

.method private b(ILjava/lang/Object;)V
    .locals 1

    .line 27
    invoke-static {}, Lcn/smssdk/logger/d;->d()Lcn/smssdk/logger/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/smssdk/logger/d;->b(I)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 37
    :pswitch_0
    invoke-direct {p0}, Lcn/smssdk/SMSSDKCore;->i()V

    goto :goto_0

    .line 38
    :pswitch_1
    invoke-direct {p0, p2}, Lcn/smssdk/SMSSDKCore;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-direct {p0}, Lcn/smssdk/SMSSDKCore;->j()V

    goto :goto_0

    .line 40
    :pswitch_3
    invoke-direct {p0}, Lcn/smssdk/SMSSDKCore;->h()V

    goto :goto_0

    .line 41
    :pswitch_4
    invoke-direct {p0, p2}, Lcn/smssdk/SMSSDKCore;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :pswitch_5
    invoke-direct {p0, p2}, Lcn/smssdk/SMSSDKCore;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :pswitch_6
    invoke-direct {p0, p2}, Lcn/smssdk/SMSSDKCore;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :pswitch_7
    invoke-direct {p0, p2}, Lcn/smssdk/SMSSDKCore;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :pswitch_8
    invoke-direct {p0}, Lcn/smssdk/SMSSDKCore;->k()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2

    .line 48
    new-instance v0, Lcn/smssdk/SMSSDKCore$h;

    invoke-direct {v0, p0, p1}, Lcn/smssdk/SMSSDKCore$h;-><init>(Lcn/smssdk/SMSSDKCore;Ljava/lang/Object;)V

    .line 83
    new-instance p1, Lcn/smssdk/SMSSDKCore$i;

    invoke-direct {p1, p0}, Lcn/smssdk/SMSSDKCore$i;-><init>(Lcn/smssdk/SMSSDKCore;)V

    const/4 v1, 0x2

    .line 90
    invoke-direct {p0, v1, v0, p1}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcn/smssdk/SMSSDKCore;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/smssdk/SMSSDKCore;->f:Ljava/util/HashMap;

    return-object p0
.end method

.method private c(Ljava/lang/Object;)V
    .locals 2

    .line 16
    new-instance v0, Lcn/smssdk/SMSSDKCore$a;

    invoke-direct {v0, p0, p1}, Lcn/smssdk/SMSSDKCore$a;-><init>(Lcn/smssdk/SMSSDKCore;Ljava/lang/Object;)V

    .line 44
    new-instance p1, Lcn/smssdk/SMSSDKCore$b;

    invoke-direct {p1, p0}, Lcn/smssdk/SMSSDKCore$b;-><init>(Lcn/smssdk/SMSSDKCore;)V

    const/16 v1, 0x8

    .line 52
    invoke-direct {p0, v1, v0, p1}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcn/smssdk/SMSSDKCore;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/smssdk/SMSSDKCore;->l()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/Object;)V
    .locals 2

    const/16 p1, 0x265

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcn/smssdk/SMSSDKCore;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .locals 2

    .line 12
    new-instance v0, Lcn/smssdk/SMSSDKCore$j;

    invoke-direct {v0, p0, p1}, Lcn/smssdk/SMSSDKCore$j;-><init>(Lcn/smssdk/SMSSDKCore;Ljava/lang/Object;)V

    .line 40
    new-instance p1, Lcn/smssdk/SMSSDKCore$k;

    invoke-direct {p1, p0}, Lcn/smssdk/SMSSDKCore$k;-><init>(Lcn/smssdk/SMSSDKCore;)V

    const/4 v1, 0x3

    .line 48
    invoke-direct {p0, v1, v0, p1}, Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "[SMSSDK][%s][%s] %s"

    const-string v1, "checkBusiness"

    const-string v2, "SMSSDKCore"

    const-string v3, "isAuth: "

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->isForb()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 8
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->isAuth()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v2, v10, v4

    aput-object v1, v10, v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v6

    invoke-virtual {v9, v0, v10}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move v8, v7

    .line 11
    :catchall_1
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    aput-object v1, v5, v7

    const-string v1, "Not privacy version, do work!"

    aput-object v1, v5, v6

    invoke-virtual {v3, v0, v5}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    if-eq v8, v7, :cond_1

    if-ne v8, v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x264

    const/4 v1, 0x0

    .line 26
    invoke-static {v0, v1}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    :goto_1
    return-void

    .line 27
    :cond_2
    new-instance v0, Lcom/mob/commons/ForbThrowable;

    invoke-direct {v0}, Lcom/mob/commons/ForbThrowable;-><init>()V

    throw v0
.end method

.method private g()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.mob.mobverify.MobVerify"

    .line 1
    invoke-static {v1}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "has mobverify component"

    :try_start_1
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    return v0

    .line 4
    :catchall_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "no mobverify component"

    invoke-virtual {v1, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method

.method private h()V
    .locals 3

    const/16 v0, 0x265

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcn/smssdk/SMSSDKCore;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private i()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/smssdk/SMSSDKCore;->c()V

    return-void
.end method

.method private j()V
    .locals 3

    const/16 v0, 0x265

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcn/smssdk/SMSSDKCore;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcn/smssdk/SMSSDKCore;->l()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    .line 7
    invoke-direct {p0, v2, v1, v0}, Lcn/smssdk/SMSSDKCore;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private l()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/SMSSDKCore;->b:Lcn/smssdk/net/f;

    invoke-virtual {v0}, Lcn/smssdk/net/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore;->b:Lcn/smssdk/net/f;

    invoke-virtual {v0}, Lcn/smssdk/net/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/SMSSDKCore;->g:Ljava/util/ArrayList;

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v2, "zone"

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "rule"

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    iget-object v3, p0, Lcn/smssdk/SMSSDKCore;->f:Ljava/util/HashMap;

    if-nez v3, :cond_4

    .line 17
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcn/smssdk/SMSSDKCore;->f:Ljava/util/HashMap;

    .line 19
    :cond_4
    iget-object v3, p0, Lcn/smssdk/SMSSDKCore;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_5
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SMSSDKCore"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "saveCountryRules"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "WARNING: Get \'countryData\' from server error!"

    aput-object v3, v1, v2

    const-string v2, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/smssdk/SMSSDKCore;->g:Ljava/util/ArrayList;

    .line 26
    :cond_6
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore;->g:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-static {}, Lcn/smssdk/SMSSDKCore;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getAppLanguage()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appLanguage:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 143
    iget-object v3, p0, Lcn/smssdk/SMSSDKCore;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    iput-object v1, p0, Lcn/smssdk/SMSSDKCore;->d:Ljava/lang/String;

    .line 145
    iput-object v2, p0, Lcn/smssdk/SMSSDKCore;->e:Ljava/util/HashMap;

    .line 148
    :cond_0
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 149
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore;->e:Ljava/util/HashMap;

    return-object v0

    :cond_1
    const/16 v1, 0x41

    move-object v3, v2

    :goto_0
    const/16 v4, 0x5a

    if-gt v1, v4, :cond_7

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "smssdk_country_group_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/mob/tools/utils/ResHelper;->getStringArrayRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    .line 157
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 160
    array-length v5, v4

    move v6, v0

    move-object v7, v2

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v8, v4, v6

    const-string v9, ","

    .line 161
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_2

    .line 163
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 165
    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-object v7, v2

    :cond_4
    if-eqz v7, :cond_6

    if-nez v3, :cond_5

    .line 170
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 172
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_7
    if-nez v3, :cond_8

    .line 177
    invoke-static {}, Lcn/smssdk/utils/a;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/smssdk/SMSSDKCore;->e:Ljava/util/HashMap;

    goto :goto_2

    .line 179
    :cond_8
    iput-object v3, p0, Lcn/smssdk/SMSSDKCore;->e:Ljava/util/HashMap;

    .line 181
    :goto_2
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore;->e:Ljava/util/HashMap;

    return-object v0

    :catchall_0
    move-exception v1

    .line 182
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "SMSSDKCore"

    aput-object v4, v3, v0

    const-string v0, "getGroupedCountryList"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, "Can not do work currently!"

    aput-object v4, v3, v0

    const-string v0, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v2, v1, v0, v3}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    .line 12
    new-instance v0, Lcn/smssdk/SMSSDKCore$g;

    invoke-direct {v0, p0, p1, p2}, Lcn/smssdk/SMSSDKCore$g;-><init>(Lcn/smssdk/SMSSDKCore;ILjava/lang/Object;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcn/smssdk/OnDialogListener;)V
    .locals 1

    .line 214
    new-instance v0, Lcn/smssdk/ui/a;

    invoke-direct {v0, p1, p2}, Lcn/smssdk/ui/a;-><init>(Landroid/content/Context;Lcn/smssdk/OnDialogListener;)V

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public a(Landroid/telephony/SmsMessage;Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V
    .locals 4

    .line 201
    :try_start_0
    invoke-static {}, Lcn/smssdk/SMSSDKCore;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore;->c:Lcn/smssdk/b/a;

    invoke-virtual {v0, p2}, Lcn/smssdk/b/a;->a(Lcn/smssdk/SMSSDK$VerifyCodeReadListener;)V

    .line 210
    iget-object p2, p0, Lcn/smssdk/SMSSDKCore;->c:Lcn/smssdk/b/a;

    invoke-virtual {p2, p1}, Lcn/smssdk/b/a;->a(Landroid/telephony/SmsMessage;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 211
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SMSSDKCore"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "getGroupedCountryList"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Can not do work currently!"

    aput-object v3, v1, v2

    const-string v2, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, p1, v2, v1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 213
    invoke-interface {p2, p1}, Lcn/smssdk/SMSSDK$VerifyCodeReadListener;->onReadVerifyCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/smssdk/EventHandler;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p1}, Lcn/smssdk/EventHandler;->onRegister()V

    .line 11
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Lcn/smssdk/wrapper/TokenVerifyResult;)V
    .locals 2

    .line 5
    new-instance v0, Lcn/smssdk/net/login/LoginCore;

    invoke-direct {v0}, Lcn/smssdk/net/login/LoginCore;-><init>()V

    new-instance v1, Lcn/smssdk/SMSSDKCore$e;

    invoke-direct {v1, p0}, Lcn/smssdk/SMSSDKCore$e;-><init>(Lcn/smssdk/SMSSDKCore;)V

    invoke-virtual {v0, p1, p2, v1}, Lcn/smssdk/net/login/LoginCore;->a(Ljava/lang/String;Lcn/smssdk/wrapper/TokenVerifyResult;Lcn/smssdk/net/login/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 184
    :try_start_0
    invoke-static {}, Lcn/smssdk/SMSSDKCore;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcn/smssdk/SMSSDKCore;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 194
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_2

    move v5, v2

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_0
    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 198
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 199
    array-length v8, v7

    if-le v8, v1, :cond_3

    aget-object v8, v7, v1

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    return-object v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    .line 200
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "SMSSDKCore"

    aput-object v5, v4, v2

    const-string v2, "getGroupedCountryList"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string v2, "Can not do work currently!"

    aput-object v2, v4, v1

    const-string v1, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v3, p1, v1, v4}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/smssdk/SMSSDKCore$c;

    invoke-direct {v1, p0}, Lcn/smssdk/SMSSDKCore$c;-><init>(Lcn/smssdk/SMSSDKCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b(Lcn/smssdk/EventHandler;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 14
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcn/smssdk/EventHandler;->onUnregister()V

    .line 19
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v0

    return-void

    .line 21
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    .line 91
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SMSSDKCore"

    aput-object v4, v2, v3

    const-string v5, "getCountryByMCC"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "mcc: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v2, v7

    const-string v5, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, v5, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-static {}, Lcn/smssdk/SMSSDKCore;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcn/smssdk/SMSSDKCore;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_2

    move v5, v3

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_0
    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_1

    .line 110
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 111
    array-length v8, v7

    const/4 v9, 0x4

    if-ge v8, v9, :cond_3

    .line 112
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MCC not found in the country: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v7, v3

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_3

    .line 117
    :cond_3
    aget-object v8, v7, v1

    const-string/jumbo v9, "|"

    .line 119
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_4

    .line 120
    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    return-object v7

    :cond_4
    const-string v9, "\\|"

    .line 126
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 127
    array-length v9, v8

    move v10, v3

    :goto_2
    if-ge v10, v9, :cond_6

    aget-object v11, v8, v10

    .line 128
    invoke-virtual {v11, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    return-object v7

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    return-object v0

    :catchall_0
    move-exception p1

    .line 129
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v3, "getGroupedCountryList"

    aput-object v3, v1, v6

    const-string v3, "Can not do work currently!"

    aput-object v3, v1, v7

    invoke-virtual {v2, p1, v5, v1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v0
.end method

.method public c()V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcn/smssdk/SMSSDKCore;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcn/smssdk/SMSSDKCore$d;

    invoke-direct {v0, p0}, Lcn/smssdk/SMSSDKCore$d;-><init>(Lcn/smssdk/SMSSDKCore;)V

    invoke-static {v0}, Lcn/smssdk/wrapper/MobVerifyWrapper;->a(Lcn/smssdk/wrapper/a;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x269

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lcn/smssdk/SMSSDKCore;->b(ILjava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcn/smssdk/SMSSDKCore;->a(IILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/smssdk/EventHandler;

    .line 4
    invoke-virtual {v2}, Lcn/smssdk/EventHandler;->onUnregister()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/smssdk/SMSSDKCore$f;

    invoke-direct {v1, p0}, Lcn/smssdk/SMSSDKCore$f;-><init>(Lcn/smssdk/SMSSDKCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
