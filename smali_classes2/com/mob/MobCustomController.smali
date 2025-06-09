.class public abstract Lcom/mob/MobCustomController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveSubscriptionInfoCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellIpv4()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellIpv6()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAdvertisingIdEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAndroidIdEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAppListDataEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCellLocationDataEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConfigEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDREnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIpAddressEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLocationDataEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOaidEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPhoneStateDataEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSocietyPlatformDataEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWifiDataEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
