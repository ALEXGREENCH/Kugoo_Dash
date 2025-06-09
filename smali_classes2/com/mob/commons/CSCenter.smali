.class public Lcom/mob/commons/CSCenter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/CSCenter$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/mob/commons/CSCenter;


# instance fields
.field private volatile b:Lcom/mob/MobCustomController;

.field private c:Lcom/mob/commons/CSCenter$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/mob/commons/CSCenter$a;

    invoke-direct {v0, p0}, Lcom/mob/commons/CSCenter$a;-><init>(Lcom/mob/commons/CSCenter;)V

    iput-object v0, p0, Lcom/mob/commons/CSCenter;->c:Lcom/mob/commons/CSCenter$a;

    return-void
.end method

.method public static getInstance()Lcom/mob/commons/CSCenter;
    .locals 2

    .line 34
    sget-object v0, Lcom/mob/commons/CSCenter;->a:Lcom/mob/commons/CSCenter;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/mob/commons/CSCenter;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/mob/commons/CSCenter;->a:Lcom/mob/commons/CSCenter;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/mob/commons/CSCenter;

    invoke-direct {v1}, Lcom/mob/commons/CSCenter;-><init>()V

    sput-object v1, Lcom/mob/commons/CSCenter;->a:Lcom/mob/commons/CSCenter;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/commons/CSCenter;->a:Lcom/mob/commons/CSCenter;

    return-object v0
.end method


# virtual methods
.method public getActiveSubscriptionInfoCount()I
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getActiveSubscriptionInfoCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 466
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 482
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 306
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getAllCellInfo()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 370
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 273
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellIpv4()Ljava/lang/String;
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getCellIpv4()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 434
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellIpv6()Ljava/lang/String;
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getCellIpv6()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 450
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 354
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 322
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getIpAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 418
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getLocation()Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 257
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 386
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getNetworkType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 530
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->c:Lcom/mob/commons/CSCenter$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mob/commons/CSCenter$a;->a(Lcom/mob/commons/CSCenter$a;Z)Z

    .line 288
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getOaid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 290
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getPackageInfos()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 402
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 546
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getSimOperator()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 514
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 498
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->getWifiScanResults()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 338
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public invocationRecord()Lcom/mob/commons/CSCenter$a;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->c:Lcom/mob/commons/CSCenter$a;

    return-object v0
.end method

.method public isAdvertisingIdEnable()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isAdvertisingIdEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 114
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAndroidIdEnable()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isAndroidIdEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 82
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAppListDataEnable()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isAppListDataEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 162
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCellLocationDataEnable()Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isCellLocationDataEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 146
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isConfigEnable()Z
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isConfigEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 226
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCusControllerNotNull()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDREnable()Z
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isDREnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 241
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isIpAddressEnable()Z
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isIpAddressEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 178
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLocationDataEnable()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isLocationDataEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 66
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOaidEnable()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isOaidEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 98
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPhoneStateDataEnable()Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isPhoneStateDataEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 194
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSocietyPlatformDataEnable()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isSocietyPlatformDataEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 210
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isWifiDataEnable()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    invoke-virtual {v0}, Lcom/mob/MobCustomController;->isWifiDataEnable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 130
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateCustomController(Lcom/mob/MobCustomController;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/mob/commons/CSCenter;->b:Lcom/mob/MobCustomController;

    return-void
.end method
