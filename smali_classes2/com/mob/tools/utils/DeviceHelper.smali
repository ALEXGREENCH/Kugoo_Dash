.class public Lcom/mob/tools/utils/DeviceHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:Lcom/mob/tools/utils/DeviceHelper;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/mob/tools/utils/DeviceHelper;

    invoke-direct {v0}, Lcom/mob/tools/utils/DeviceHelper;-><init>()V

    sput-object v0, Lcom/mob/tools/utils/DeviceHelper;->a:Lcom/mob/tools/utils/DeviceHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentActivityThread()Ljava/lang/Object;
    .locals 1

    .line 804
    invoke-static {}, Lcom/mob/commons/v;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;
    .locals 3

    const-class v0, Lcom/mob/tools/utils/DeviceHelper;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/DeviceHelper;->a:Lcom/mob/tools/utils/DeviceHelper;

    iget-object v2, v1, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    if-nez v2, :cond_0

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v1, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    .line 32
    :cond_0
    sget-object p0, Lcom/mob/tools/utils/DeviceHelper;->a:Lcom/mob/tools/utils/DeviceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 797
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->Base64AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checkNetworkAvailable()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->G()Z

    move-result v0

    return v0
.end method

.method public checkPad()Z
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->c()Z

    move-result v0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/b/a;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkUA()Z
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->f()Z

    move-result v0

    return v0
.end method

.method public cx()Z
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->b()Z

    move-result v0

    return v0
.end method

.method public debugable()Z
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->d()Z

    move-result v0

    return v0
.end method

.method public devEnable()Z
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->g()Z

    move-result v0

    return v0
.end method

.method public getAInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->ak()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAInfo(ZLjava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mob/tools/b/a;->a(ZLjava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getALLD()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->aj()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getAdvertisingID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLanguage()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLastUpdateTime()J
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->ad()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->U()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppVersion()I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->V()I

    move-result v0

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->W()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplication()Landroid/content/Context;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->aa()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableWifiListOneKey()Ljava/util/ArrayList;
    .locals 1
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

    .line 886
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->al()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBaseband()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoardFromSysProperty()Ljava/lang/String;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoardPlatform()Ljava/lang/String;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mob/tools/b/a;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCInfo()Ljava/lang/String;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->ag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->w()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarrier(Z)Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/b/a;->c(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrierName(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierName(Z)Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/b/a;->d(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCgroup()Ljava/lang/String;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->af()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProcessName()Ljava/lang/String;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWifiInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->r()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getDataNtType()I
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->H()I

    move-result v0

    return v0
.end method

.method public getDefaultIMPkg()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetailNetworkTypeForStatic()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceData()Ljava/lang/String;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->ab()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDataNotAES()Ljava/lang/String;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceKey(Z)Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/b/a;->g(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlavor()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIA(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mob/tools/b/a;->a(ZZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->N()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(IIZ)Landroid/location/Location;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mob/tools/b/a;->a(IIZ)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public getMIUIVersion()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->A()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo()Ljava/util/ArrayList;
    .locals 1
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

    .line 399
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->q()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Lcom/mob/tools/utils/DeviceHelper;->getNetworkType(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(Z)Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/b/a;->f(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkTypeForStatic()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOD()Ljava/lang/String;
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->ah()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getODH()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->ai()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSCountry()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSLanguage()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOSVersionInt()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->s()I

    move-result v0

    return v0
.end method

.method public getOSVersionName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPInfo(ILjava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/mob/tools/b/a;->a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, p1, p2}, Lcom/mob/tools/b/a;->a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPInfo(ZLjava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/mob/tools/b/a;->a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getQemuKernel()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSA()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->P()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mob/tools/b/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdcardPath()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdcardState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSerialno()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignMD5()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/b/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSizeInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->z()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 649
    invoke-static {p1}, Lcom/mob/commons/v;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTTYDriversInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->x()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideSoftInput(Landroid/view/View;)V
    .locals 0

    .line 759
    invoke-static {p1}, Lcom/mob/commons/v;->a(Landroid/view/View;)V

    return-void
.end method

.method public varargs invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 662
    invoke-static {p1, p2, v0, p3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 676
    invoke-static {p1, p2, p3, p4, v0}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isInMainProcess()Z
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->X()Z

    move-result v0

    return v0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mob/tools/b/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isRooted()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->a()Z

    move-result v0

    return v0
.end method

.method public isWifiProxy()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->i()Z

    move-result v0

    return v0
.end method

.method public queryIMEI()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryIMSI()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/b/a;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/b/a;->b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public showSoftInput(Landroid/view/View;)V
    .locals 0

    .line 768
    invoke-static {p1}, Lcom/mob/commons/v;->b(Landroid/view/View;)V

    return-void
.end method

.method public usbEnable()Z
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->h()Z

    move-result v0

    return v0
.end method

.method public vpn()Z
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/mob/tools/utils/DeviceHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->e()Z

    move-result v0

    return v0
.end method
