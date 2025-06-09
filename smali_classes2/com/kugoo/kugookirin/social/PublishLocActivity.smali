.class public Lcom/kugoo/kugookirin/social/PublishLocActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PublishLocActivity.java"

# interfaces
.implements Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;
.implements Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$onSelectLocTxtListener;


# instance fields
.field private SelectedTxt:Ljava/lang/String;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/PublishLocBean;",
            ">;"
        }
    .end annotation
.end field

.field private dynamicLocCODE:I

.field imgRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d2
    .end annotation
.end field

.field imgTopBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d3
    .end annotation
.end field

.field private isOpenGps:Z

.field private languageType:I

.field private lastKnownLocation:Landroid/location/Location;

.field private latitudeStr:Ljava/lang/String;

.field loadLinear:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0341
    .end annotation
.end field

.field locRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0346
    .end annotation
.end field

.field private locationManager:Landroid/location/LocationManager;

.field private longitudeStr:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLocationListener:Landroid/location/LocationListener;

.field private nowLoc:Lcom/google/android/gms/maps/model/LatLng;

.field private preferences:Landroid/content/SharedPreferences;

.field private publishLocAdapter:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

.field private textStr:Ljava/lang/String;

.field tvRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05df
    .end annotation
.end field

.field txtTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05e8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "sajsjajsaj \u6df1\u5733\u5e02\u5357\u5c71\u533a\u7559\u4ed9\u6d1e"

    .line 66
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->textStr:Ljava/lang/String;

    const/16 v0, 0x65

    .line 75
    iput v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->dynamicLocCODE:I

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->SelectedTxt:Ljava/lang/String;

    .line 291
    new-instance v0, Lcom/kugoo/kugookirin/social/PublishLocActivity$3;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity$3;-><init>(Lcom/kugoo/kugookirin/social/PublishLocActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->mLocationListener:Landroid/location/LocationListener;

    .line 325
    new-instance v0, Lcom/kugoo/kugookirin/social/PublishLocActivity$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/PublishLocActivity$4;-><init>(Lcom/kugoo/kugookirin/social/PublishLocActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Landroid/location/Location;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->lastKnownLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/PublishLocActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getNetData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->longitudeStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->latitudeStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kugoo/kugookirin/social/PublishLocActivity;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->nowLoc:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->isOpenGps:Z

    return p0
.end method

.method static synthetic access$502(Lcom/kugoo/kugookirin/social/PublishLocActivity;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->isOpenGps:Z

    return p1
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/PublishLocActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getCurrentPosition()V

    return-void
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/social/PublishLocActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->dataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/social/PublishLocActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->setAdapter()V

    return-void
.end method

.method private getCurrentPosition()V
    .locals 14

    const-string v0, "getCurrentPosition"

    const-string v1, "\u6267\u884c002"

    .line 262
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 264
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->locationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isGPSEnable="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "isNetworkEnable="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->checkPermission()V

    if-eqz v0, :cond_0

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v8, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->locationManager:Landroid/location/LocationManager;

    const-string v9, "gps"

    const-wide/16 v10, 0x3e8

    const/high16 v12, 0x41200000    # 10.0f

    iget-object v13, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v8 .. v13}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 270
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->lastKnownLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-direct {v0, v5, v6, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->nowLoc:Lcom/google/android/gms/maps/model/LatLng;

    :cond_0
    if-eqz v3, :cond_1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v5, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->locationManager:Landroid/location/LocationManager;

    const-string v6, "network"

    const-wide/16 v7, 0x3e8

    const/high16 v9, 0x41200000    # 10.0f

    iget-object v10, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 279
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->lastKnownLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 281
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->nowLoc:Lcom/google/android/gms/maps/model/LatLng;

    :cond_1
    return-void
.end method

.method private getLanguageType()V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zh"

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iput v1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->languageType:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 124
    iput v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->languageType:I

    :goto_0
    return-void
.end method

.method private getNetData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "longitudeStr=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  latitudeStr=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locationdata02"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->languageType:I

    const-string v1, "%2C"

    const-string v2, "https://maps.googleapis.com/maps/api/place/nearbysearch/json?&location="

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&radius=500&type=establishment&key=AIzaSyBQTyKTsKrZ4AamGOtID4qHsmdgOohMbas&language=zh-CN"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&radius=500&type=establishment&key=AIzaSyBQTyKTsKrZ4AamGOtID4qHsmdgOohMbas&language=en-US"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "url02=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "url02222"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget p2, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->languageType:I

    invoke-static {p1, p2}, Lcom/kugoo/kugookirin/utils/RouteUtils;->getNearbyPlace(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private getPermission()V
    .locals 3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 163
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    if-nez v1, :cond_0

    .line 164
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 166
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->dataList:Ljava/util/ArrayList;

    .line 114
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->preferences:Landroid/content/SharedPreferences;

    .line 115
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_LONGITUDE:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->longitudeStr:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_LATITUDE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->latitudeStr:Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->imgRight:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->txtTitle:Landroid/widget/TextView;

    const v1, 0x7f120351

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private openGPS()V
    .locals 4

    const-string v0, "location"

    .line 174
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 175
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201c1

    .line 178
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1201c0

    .line 179
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1201ba

    .line 180
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/kugoo/kugookirin/social/PublishLocActivity$1;

    invoke-direct {v3, p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity$1;-><init>(Lcom/kugoo/kugookirin/social/PublishLocActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f12004e

    .line 187
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/PublishLocActivity$2;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity$2;-><init>(Lcom/kugoo/kugookirin/social/PublishLocActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getCurrentPosition()V

    .line 210
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "saleOnresume004"

    const-string v1, "opengps==>"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->lastKnownLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->lastKnownLocation:Landroid/location/Location;

    .line 217
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getNetData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .line 129
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->dataList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->publishLocAdapter:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    .line 130
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->locRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 132
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 134
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->locRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 135
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->publishLocAdapter:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;

    invoke-virtual {v0, p0}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->setOnSelectLocTxtListener(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$onSelectLocTxtListener;)V

    return-void
.end method

.method private setLocTxtIntent(Ljava/lang/String;)V
    .locals 2

    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "publishLocTxt"

    .line 246
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->dynamicLocCODE:I

    invoke-virtual {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->setResult(ILandroid/content/Intent;)V

    .line 248
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->finish()V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 100
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkPermission()V
    .locals 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 253
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 254
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "\u6267\u884c001"

    const-string v1, "checkPermission"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public nearbySearchResult(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/PublishLocBean;",
            ">;)V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->dataList:Ljava/util/ArrayList;

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nearbySearchResult"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x6e

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 224
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x4b0

    if-ne p1, p2, :cond_0

    const-string p1, "possearch"

    const-string p2, "requestCode"

    .line 226
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->isOpenGps:Z

    .line 228
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getCurrentPosition()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 240
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 241
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->SelectedTxt:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->setLocTxtIntent(Ljava/lang/String;)V

    return-void
.end method

.method public onClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02d3
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->SelectedTxt:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->setLocTxtIntent(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0040

    .line 82
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->setContentView(I)V

    .line 83
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 85
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->initView()V

    .line 86
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->initEvent()V

    .line 88
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getLanguageType()V

    .line 90
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getPermission()V

    .line 91
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->openGPS()V

    .line 92
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getCurrentPosition()V

    .line 93
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->loadLinear:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/RouteUtils;->setOnNearbyPlaceListener(Lcom/kugoo/kugookirin/utils/RouteUtils$onNearbyPlaceListener;)V

    .line 95
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 348
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 349
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public selectedLocTxt(Ljava/lang/String;)V
    .locals 2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "locTxt=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nearbySearchResult"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1201e4

    .line 356
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 357
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->SelectedTxt:Ljava/lang/String;

    goto :goto_0

    .line 359
    :cond_0
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity;->SelectedTxt:Ljava/lang/String;

    :goto_0
    return-void
.end method
