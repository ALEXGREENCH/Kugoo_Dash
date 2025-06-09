.class Lcn/smssdk/net/b$b;
.super Ljava/lang/Thread;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/smssdk/net/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcn/smssdk/net/b;


# direct methods
.method constructor <init>(Lcn/smssdk/net/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/smssdk/net/b$b;->a:Z

    return-void
.end method

.method private a()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "SMSSDK"

    const-string v1, "getConfig"

    .line 1
    invoke-static {v0, v1}, Lcom/mob/commons/eventrecoder/EventRecorder;->addBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/smssdk/net/b;->a(Lcn/smssdk/net/b;Z)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 7
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "appkey"

    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "duid"

    .line 9
    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcn/smssdk/utils/e;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, "sdkver"

    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPlatformCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "plat"

    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "apppkg"

    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "appver"

    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcn/smssdk/utils/DHelper;->getSignMd5()Ljava/lang/String;

    move-result-object v2

    const-string v4, "md5"

    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v5, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v5}, Lcn/smssdk/net/b;->c(Lcn/smssdk/net/b;)Lcn/smssdk/net/d;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lcn/smssdk/net/b;->a(Lcn/smssdk/net/b;Lcn/smssdk/net/a;Ljava/util/HashMap;ZZI)Ljava/util/HashMap;

    move-result-object v2

    .line 17
    sget-object v4, Lcn/smssdk/utils/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "[SMSSDK][%s][%s] %s"

    const/4 v6, 0x2

    const-string v7, "getConfigFromService"

    const-string v8, "Config"

    const/4 v9, 0x3

    if-eqz v4, :cond_0

    .line 18
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v8, v11, v3

    aput-object v7, v11, v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Config from server got. resp: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    .line 19
    invoke-static {v13}, Lcn/smssdk/net/b;->d(Lcn/smssdk/net/b;)Lcom/mob/tools/utils/Hashon;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 20
    invoke-virtual {v4, v5, v11}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    if-eqz v2, :cond_2

    .line 27
    invoke-static {}, Lcn/smssdk/logger/d;->d()Lcn/smssdk/logger/d;

    move-result-object v4

    const/4 v11, 0x6

    invoke-virtual {v4, v11, v2}, Lcn/smssdk/logger/d;->a(ILjava/lang/Object;)V

    .line 28
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v4, Lcn/smssdk/net/b;->x:Ljava/util/HashMap;

    .line 30
    :try_start_0
    iget-object v4, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v4}, Lcn/smssdk/net/b;->b(Lcn/smssdk/net/b;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 33
    :try_start_1
    iget-object v4, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v4, v2}, Lcn/smssdk/net/b;->a(Lcn/smssdk/net/b;Ljava/util/HashMap;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :try_start_2
    iput-boolean v3, p0, Lcn/smssdk/net/b$b;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v11

    goto :goto_0

    :catchall_1
    move-exception v11

    move v4, v3

    .line 36
    :goto_0
    :try_start_3
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v8, v13, v3

    aput-object v7, v13, v10

    const-string v14, "parseConfig encounters error, use default config re-configure"

    aput-object v14, v13, v6

    invoke-virtual {v12, v11, v5, v13}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 38
    iput-boolean v10, p0, Lcn/smssdk/net/b$b;->a:Z

    .line 39
    iget-object v11, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v11}, Lcn/smssdk/net/b;->e(Lcn/smssdk/net/b;)Lcn/smssdk/utils/SPHelper;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Lcn/smssdk/utils/SPHelper;->setConfig(Ljava/lang/String;)V

    .line 40
    iget-object v11, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v11}, Lcn/smssdk/net/b;->d(Lcn/smssdk/net/b;)Lcom/mob/tools/utils/Hashon;

    move-result-object v11

    const-string/jumbo v12, "{\"updateAt\":1545204873539,\"zoneAt\":1517389200000,\"result\":{\"urls\":[{\"name\":\"getToken\",\"host\":\"sdkapi.sms.mob.com\",\"port\":80,\"action\":\"/v3/token/get\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"sign\",\"apppkg\",\"appver\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"getFriend\",\"host\":\"addrlist.sms.mob.com\",\"port\":80,\"action\":\"/v3/relat/fm\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"contactphones\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"sendTextSMS\",\"host\":\"code.sms.mob.com\",\"port\":80,\"action\":\"/v3/verify/code\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"zone\",\"phone\",\"simserial\",\"myPhone\",\"tempCode\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"verifyCode\",\"host\":\"code.sms.mob.com\",\"port\":80,\"action\":\"/v3/client/verification\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"zone\",\"phone\",\"code\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"getZoneList\",\"host\":\"sdkapi.sms.mob.com\",\"port\":80,\"action\":\"/v3/utils/zonelist\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"getFriendNew\",\"host\":\"addrlist.sms.mob.com\",\"port\":80,\"action\":\"/v3/relat/fm/new\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"contactphones\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"submitUser\",\"host\":\"sdkapi.sms.mob.com\",\"port\":80,\"action\":\"/v3/app/submituserinfo\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"zone\",\"phone\",\"uid\",\"nickname\",\"avatar\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"sendVoiceSMS\",\"host\":\"code.sms.mob.com\",\"port\":80,\"action\":\"/v3/voice/verify/code\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"zone\",\"phone\",\"md5\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"sdkLog\",\"host\":\"log.sms.mob.com\",\"port\":80,\"action\":\"/log/sdk\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"list\"],\"zip\":0,\"request\":1,\"frequency\":0},{\"name\":\"uploadContacts\",\"host\":\"addrlist.sms.mob.com\",\"port\":80,\"action\":\"/v3/relat/apply\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"apppkg\",\"appver\",\"token\",\"zone\",\"myPhone\",\"simserial\",\"operator\",\"secretKey\",\"contacts\",\"imsi\",\"md5\"],\"zip\":1,\"request\":1,\"frequency\":0},{\"name\":\"uploadContactsNew\",\"host\":\"addrlist.sms.mob.com\",\"port\":80,\"action\":\"/v3/relat/apply/new\",\"params\":[\"appkey\",\"duid\",\"sdkver\",\"plat\",\"zone\",\"myPhone\",\"simserial\",\"operator\",\"secretKey\",\"contacts\",\"md5\"],\"zip\":1,\"request\":1,\"frequency\":0}]},\"request\":1,\"isSensitiveOrigin\":true,\"isPhoneSensitiveOrigin\":false}"

    invoke-virtual {v11, v12}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    .line 41
    iget-object v12, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v12, v11}, Lcn/smssdk/net/b;->a(Lcn/smssdk/net/b;Ljava/util/HashMap;)Z

    .line 44
    :goto_1
    iget-boolean v11, p0, Lcn/smssdk/net/b$b;->a:Z

    if-nez v11, :cond_1

    if-eqz v4, :cond_1

    .line 45
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v3

    aput-object v7, v9, v10

    const-string v3, "config observed from server has been updated, store into SP"

    aput-object v3, v9, v6

    invoke-virtual {v4, v5, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 47
    iget-object v3, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v3}, Lcn/smssdk/net/b;->d(Lcn/smssdk/net/b;)Lcom/mob/tools/utils/Hashon;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 48
    iget-object v3, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v3}, Lcn/smssdk/net/b;->e(Lcn/smssdk/net/b;)Lcn/smssdk/utils/SPHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/smssdk/utils/SPHelper;->setConfig(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 51
    :cond_1
    iget-object v2, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v2}, Lcn/smssdk/net/b;->b(Lcn/smssdk/net/b;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 53
    invoke-static {v0, v1}, Lcom/mob/commons/eventrecoder/EventRecorder;->addEnd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    .line 54
    iget-object v1, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v1}, Lcn/smssdk/net/b;->b(Lcn/smssdk/net/b;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 55
    throw v0

    .line 56
    :cond_2
    iget-object v0, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    const-string/jumbo v1, "response is empty"

    invoke-static {v0, v1}, Lcn/smssdk/net/b;->a(Lcn/smssdk/net/b;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_3
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "duid is empty!"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcn/smssdk/net/b$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lcn/smssdk/logger/d;->d()Lcn/smssdk/logger/d;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcn/smssdk/logger/d;->a(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v0}, Lcn/smssdk/net/b;->b(Lcn/smssdk/net/b;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/smssdk/net/b$b;->b:Lcn/smssdk/net/b;

    invoke-static {v0}, Lcn/smssdk/net/b;->b(Lcn/smssdk/net/b;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_0
    :goto_0
    return-void
.end method
