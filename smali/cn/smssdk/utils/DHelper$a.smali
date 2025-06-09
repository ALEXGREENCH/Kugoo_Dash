.class final Lcn/smssdk/utils/DHelper$a;
.super Lcn/smssdk/utils/d;
.source "DHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/utils/DHelper;->init()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/smssdk/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 9

    const-string v0, "DH exception "

    .line 1
    invoke-static {}, Lcn/smssdk/utils/DHelper;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    :try_start_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "[SMSSDK] %s"

    :try_start_1
    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "DH request"

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mob/tools/utils/DH$RequestBuilder;->getSignMD5()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v4

    new-instance v5, Lcn/smssdk/utils/DHelper$a$a;

    invoke-direct {v5, p0}, Lcn/smssdk/utils/DHelper$a$a;-><init>(Lcn/smssdk/utils/DHelper$a;)V

    invoke-virtual {v4, v5}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 19
    :try_start_2
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v6, "[SMSSDK] %s"

    :try_start_3
    new-array v7, v3, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 20
    invoke-static {}, Lcn/smssdk/utils/DHelper;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 24
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DH;->requester(Landroid/content/Context;)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getSimSerialNumber()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getCarrier()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v3}, Lcom/mob/tools/utils/DH$RequestBuilder;->getNetworkTypeForce(Z)Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->getDeviceId()Lcom/mob/tools/utils/DH$RequestBuilder;

    move-result-object v0

    new-instance v4, Lcn/smssdk/utils/DHelper$a$b;

    invoke-direct {v4, p0}, Lcn/smssdk/utils/DHelper$a$b;-><init>(Lcn/smssdk/utils/DHelper$a;)V

    .line 29
    invoke-virtual {v0, v4}, Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 43
    :try_start_5
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string v5, "[SMSSDK] %s"

    :try_start_6
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v4, v5, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 45
    :goto_1
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method
