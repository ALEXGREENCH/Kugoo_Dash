.class public Lcom/kugoo/kugookirin/LauncherActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LauncherActivity.java"


# static fields
.field private static final GO_GUIDE:I = 0x3e9

.field private static final GO_HOME:I = 0x3e8

.field public static isNormal:Z


# instance fields
.field private isFirstIn:Z

.field private isLogin:Z

.field launcherLogo:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0302
    .end annotation
.end field

.field launcherLogo02:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0303
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private permission01:[Ljava/lang/String;

.field permission01List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permission02List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissions02:[Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/LauncherActivity;->isFirstIn:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/LauncherActivity;->permission01List:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/LauncherActivity;->permission02List:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/kugoo/kugookirin/LauncherActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/LauncherActivity$1;-><init>(Lcom/kugoo/kugookirin/LauncherActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/LauncherActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/LauncherActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/kugoo/kugookirin/LauncherActivity;->goHome()V

    return-void
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/LauncherActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/kugoo/kugookirin/LauncherActivity;->checkPermission()V

    return-void
.end method

.method private changeModeView(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 111
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 113
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :goto_0
    return-void
.end method

.method private checkPermission()V
    .locals 8

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    const-string v4, "android.permission.BLUETOOTH_SCAN"

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    if-lt v1, v2, :cond_0

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    .line 134
    filled-new-array {v1, v4, v3, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 140
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    if-lt v1, v2, :cond_1

    .line 141
    filled-new-array {v7, v6, v4, v3, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    .line 149
    filled-new-array {v7, v6, v1, v2, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 166
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x65

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2

    .line 168
    :cond_4
    invoke-direct {p0}, Lcom/kugoo/kugookirin/LauncherActivity;->startActivity()V

    :goto_2
    return-void
.end method

.method private goGuide()V
    .locals 0

    return-void
.end method

.method private goHome()V
    .locals 2

    .line 191
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/LauncherActivity;->isLogin:Z

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/LauncherActivity;->finish()V

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kugoo/kugookirin/user/SignLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/LauncherActivity;->finish()V

    :goto_0
    return-void
.end method

.method private startActivity()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/kugoo/kugookirin/LauncherActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_FIRST_IN:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/LauncherActivity;->isFirstIn:Z

    .line 121
    iget-object v0, p0, Lcom/kugoo/kugookirin/LauncherActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/LauncherActivity;->isLogin:Z

    .line 127
    iget-object v0, p0, Lcom/kugoo/kugookirin/LauncherActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0035

    .line 73
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/LauncherActivity;->setContentView(I)V

    .line 75
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 76
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 77
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/LauncherActivity;->preferences:Landroid/content/SharedPreferences;

    .line 78
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/kugoo/kugookirin/LauncherActivity;->isNormal:Z

    .line 79
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/LauncherActivity;->changeModeView(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 175
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    array-length p1, p2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-eqz p1, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/kugoo/kugookirin/LauncherActivity;->checkPermission()V

    goto :goto_0

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/LauncherActivity;->startActivity()V

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 84
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 85
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x7d0

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 87
    new-instance v1, Lcom/kugoo/kugookirin/LauncherActivity$2;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/LauncherActivity$2;-><init>(Lcom/kugoo/kugookirin/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    iget-object v1, p0, Lcom/kugoo/kugookirin/LauncherActivity;->launcherLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 105
    iget-object v1, p0, Lcom/kugoo/kugookirin/LauncherActivity;->launcherLogo02:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
