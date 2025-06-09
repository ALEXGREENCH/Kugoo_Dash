.class public Lcom/kugoo/kugookirin/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/MainActivity$FragContainerAdapter;
    }
.end annotation


# static fields
.field public static isRunning:Z = false

.field public static is_click_blue_connect:Z = false


# instance fields
.field private allFrag:[Landroidx/fragment/app/Fragment;

.field private bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

.field bottomTabLayout:Lcom/kugoo/kugookirin/view/MyTabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00a2
    .end annotation
.end field

.field private count:I

.field private exitTime:J

.field fragmentVp:Lcom/kugoo/kugookirin/view/NoSwipeViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a027d
    .end annotation
.end field

.field private isLogin:Z

.field private isNormal:Z

.field private lastIndex:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mapSign:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private tabName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/kugoo/kugookirin/MainActivity;->lastIndex:I

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    .line 75
    iput-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 326
    new-instance v0, Lcom/kugoo/kugookirin/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/MainActivity$2;-><init>(Lcom/kugoo/kugookirin/MainActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/MainActivity;)[Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kugoo/kugookirin/MainActivity;->tabName:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/MainActivity;)[Landroidx/fragment/app/Fragment;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kugoo/kugookirin/MainActivity;->allFrag:[Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/MainActivity;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kugoo/kugookirin/MainActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/MainActivity;Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;)Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/kugoo/kugookirin/MainActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/MainActivity;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kugoo/kugookirin/MainActivity;->mapSign:Ljava/util/Map;

    return-object p0
.end method

.method private checkPermission()V
    .locals 11

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/16 v2, 0x7b

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    .line 151
    filled-new-array {v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 158
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v3, "hahahah002"

    if-lt v0, v1, :cond_1

    const-string v0, ">=31"

    .line 161
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.permission.BLUETOOTH_SCAN"

    const-string v5, "android.permission.BLUETOOTH_CONNECT"

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    const-string v9, "android.permission.INTERNET"

    .line 163
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v8, "android.permission.BLUETOOTH"

    const-string v9, "android.permission.BLUETOOTH_ADMIN"

    const-string v10, "android.permission.INTERNET"

    .line 174
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "<31"

    .line 183
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private initBle()V
    .locals 2

    .line 132
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const v0, 0x7f1201b2

    .line 135
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/MainActivity;->finish()V

    return-void

    .line 140
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x65

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/kugoo/kugookirin/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private initEvent()V
    .locals 11

    .line 191
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->preferences:Landroid/content/SharedPreferences;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f120373

    .line 194
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const v3, 0x7f12036d

    .line 195
    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const v5, 0x7f12039e

    .line 196
    invoke-virtual {p0, v5}, Lcom/kugoo/kugookirin/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v1, v8

    const v7, 0x7f120380

    .line 197
    invoke-virtual {p0, v7}, Lcom/kugoo/kugookirin/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v1, v10

    iput-object v1, p0, Lcom/kugoo/kugookirin/MainActivity;->tabName:[Ljava/lang/String;

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 200
    invoke-static {}, Lcom/kugoo/kugookirin/social/ForYouFragment;->newInstance()Lcom/kugoo/kugookirin/social/ForYouFragment;

    move-result-object v1

    aput-object v1, v0, v4

    .line 201
    invoke-static {}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->newInstance()Lcom/kugoo/kugookirin/social/DiscoverFragment;

    move-result-object v1

    aput-object v1, v0, v6

    .line 202
    invoke-static {}, Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->newInstance()Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    move-result-object v1

    aput-object v1, v0, v8

    .line 203
    invoke-static {}, Lcom/kugoo/kugookirin/more/MoreFragment;->newInstance()Lcom/kugoo/kugookirin/more/MoreFragment;

    move-result-object v1

    aput-object v1, v0, v10

    iput-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->allFrag:[Landroidx/fragment/app/Fragment;

    .line 205
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->bottomTabLayout:Lcom/kugoo/kugookirin/view/MyTabLayout;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/MyTabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    .line 206
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f08017c

    invoke-direct {p0, v2, v6}, Lcom/kugoo/kugookirin/MainActivity;->tab_icon(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/MyTabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 208
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->bottomTabLayout:Lcom/kugoo/kugookirin/view/MyTabLayout;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/MyTabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    .line 209
    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08017a

    invoke-direct {p0, v2, v3}, Lcom/kugoo/kugookirin/MainActivity;->tab_icon(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/MyTabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 211
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->bottomTabLayout:Lcom/kugoo/kugookirin/view/MyTabLayout;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/MyTabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    .line 212
    invoke-virtual {p0, v5}, Lcom/kugoo/kugookirin/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08018d

    invoke-direct {p0, v2, v3}, Lcom/kugoo/kugookirin/MainActivity;->tab_icon(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/MyTabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 217
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->bottomTabLayout:Lcom/kugoo/kugookirin/view/MyTabLayout;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/view/MyTabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    .line 218
    invoke-virtual {p0, v7}, Lcom/kugoo/kugookirin/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080187

    invoke-direct {p0, v2, v3}, Lcom/kugoo/kugookirin/MainActivity;->tab_icon(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/MyTabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 221
    new-instance v0, Lcom/kugoo/kugookirin/MainActivity$FragContainerAdapter;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/MainActivity$FragContainerAdapter;-><init>(Lcom/kugoo/kugookirin/MainActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 222
    iget-object v1, p0, Lcom/kugoo/kugookirin/MainActivity;->fragmentVp:Lcom/kugoo/kugookirin/view/NoSwipeViewPager;

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/view/NoSwipeViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 226
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->fragmentVp:Lcom/kugoo/kugookirin/view/NoSwipeViewPager;

    new-instance v1, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Lcom/kugoo/kugookirin/MainActivity;->bottomTabLayout:Lcom/kugoo/kugookirin/view/MyTabLayout;

    invoke-direct {v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/NoSwipeViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 227
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->bottomTabLayout:Lcom/kugoo/kugookirin/view/MyTabLayout;

    new-instance v1, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;

    iget-object v2, p0, Lcom/kugoo/kugookirin/MainActivity;->fragmentVp:Lcom/kugoo/kugookirin/view/NoSwipeViewPager;

    invoke-direct {v1, v2}, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/MyTabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 229
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->fragmentVp:Lcom/kugoo/kugookirin/view/NoSwipeViewPager;

    invoke-virtual {v0, v4}, Lcom/kugoo/kugookirin/view/NoSwipeViewPager;->setCanSwipe(Z)V

    .line 231
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->fragmentVp:Lcom/kugoo/kugookirin/view/NoSwipeViewPager;

    new-instance v1, Lcom/kugoo/kugookirin/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/MainActivity$1;-><init>(Lcom/kugoo/kugookirin/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/NoSwipeViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 267
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->fragmentVp:Lcom/kugoo/kugookirin/view/NoSwipeViewPager;

    iget-object v1, p0, Lcom/kugoo/kugookirin/MainActivity;->allFrag:[Landroidx/fragment/app/Fragment;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/NoSwipeViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method private loginDialog()V
    .locals 4

    .line 344
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 345
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00c3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0a0348

    .line 348
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/MainActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/MainActivity$3;-><init>(Lcom/kugoo/kugookirin/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0349

    .line 354
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/MainActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/MainActivity$4;-><init>(Lcom/kugoo/kugookirin/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 364
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 365
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private postSignPlatform()V
    .locals 9

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->mapSign:Ljava/util/Map;

    const-string v1, "Android"

    const-string v2, "platform"

    .line 422
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->mapSign:Ljava/util/Map;

    iget-object v1, p0, Lcom/kugoo/kugookirin/MainActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "token"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->mapSign:Ljava/util/Map;

    const-string v1, "method"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    new-instance v0, Lcom/kugoo/kugookirin/MainActivity$7;

    const/4 v5, 0x1

    sget-object v6, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v7, Lcom/kugoo/kugookirin/MainActivity$5;

    invoke-direct {v7, p0}, Lcom/kugoo/kugookirin/MainActivity$5;-><init>(Lcom/kugoo/kugookirin/MainActivity;)V

    new-instance v8, Lcom/kugoo/kugookirin/MainActivity$6;

    invoke-direct {v8, p0}, Lcom/kugoo/kugookirin/MainActivity$6;-><init>(Lcom/kugoo/kugookirin/MainActivity;)V

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/kugoo/kugookirin/MainActivity$7;-><init>(Lcom/kugoo/kugookirin/MainActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 442
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/MainActivity;->isNormal:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private tab_icon(Ljava/lang/String;I)Landroid/view/View;
    .locals 3

    .line 278
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00bc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00a4

    .line 279
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 280
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a00a3

    .line 281
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 282
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kugoo/kugookirin/MainActivity;->exitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7f120358

    const/4 v1, 0x0

    .line 371
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kugoo/kugookirin/MainActivity;->exitTime:J

    return-void

    .line 375
    :cond_0
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->exit()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003b

    .line 89
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/MainActivity;->setContentView(I)V

    .line 90
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 91
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 95
    invoke-direct {p0}, Lcom/kugoo/kugookirin/MainActivity;->initEvent()V

    .line 96
    iget-object p1, p0, Lcom/kugoo/kugookirin/MainActivity;->bottomTabLayout:Lcom/kugoo/kugookirin/view/MyTabLayout;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/MyTabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 97
    invoke-direct {p0}, Lcom/kugoo/kugookirin/MainActivity;->showDefaultUi()V

    .line 99
    invoke-direct {p0}, Lcom/kugoo/kugookirin/MainActivity;->checkPermission()V

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_UPDATE_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kugoo/kugookirin/utils/CheckAppUpdataUtils;->checkUpdate(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 451
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 380
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x7b

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "grantResults=="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hahahah002"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    array-length p1, p3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 390
    aget p1, p3, p1

    const/4 p3, 0x1

    if-nez p1, :cond_3

    .line 391
    iget-object p1, p0, Lcom/kugoo/kugookirin/MainActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    if-eqz p1, :cond_2

    const-string p1, "lfBluetootService not null"

    .line 392
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/MainActivity;->bleService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    if-nez p1, :cond_5

    const-string p1, "lfBluetootService null"

    .line 394
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 397
    iget-object p2, p0, Lcom/kugoo/kugookirin/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 401
    :cond_3
    iget p1, p0, Lcom/kugoo/kugookirin/MainActivity;->count:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/kugoo/kugookirin/MainActivity;->count:I

    const/4 p3, 0x3

    if-lt p1, p3, :cond_4

    const-string p1, "returm00"

    .line 403
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 406
    :cond_4
    invoke-direct {p0}, Lcom/kugoo/kugookirin/MainActivity;->checkPermission()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 123
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/kugoo/kugookirin/MainActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/MainActivity;->isLogin:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/kugoo/kugookirin/MainActivity;->postSignPlatform()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 117
    invoke-direct {p0}, Lcom/kugoo/kugookirin/MainActivity;->initBle()V

    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
