.class public Lcom/kugoo/kugookirin/user/EmailForgotActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EmailForgotActivity.java"


# instance fields
.field private email:Ljava/lang/String;

.field emailEt:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a026d
    .end annotation
.end field

.field private isClick:Z

.field private mHandler:Landroid/os/Handler;

.field private mapForgot:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 142
    new-instance v0, Lcom/kugoo/kugookirin/user/EmailForgotActivity$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/user/EmailForgotActivity$4;-><init>(Lcom/kugoo/kugookirin/user/EmailForgotActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/user/EmailForgotActivity;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/user/EmailForgotActivity;)Ljava/util/Map;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->mapForgot:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/user/EmailForgotActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->checkEmailDialog()V

    return-void
.end method

.method private checkEmailDialog()V
    .locals 4

    .line 153
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 154
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0078

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0a0349

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/user/EmailForgotActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity$5;-><init>(Lcom/kugoo/kugookirin/user/EmailForgotActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 164
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private initData()V
    .locals 2

    const v0, 0x7f0a05a3

    .line 70
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120115

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private postForgot(Ljava/lang/String;)V
    .locals 6

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->mapForgot:Ljava/util/Map;

    const-string v1, "email"

    .line 109
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->mapForgot:Ljava/util/Map;

    const-string v0, "key"

    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "user/smtp.php"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    new-instance p1, Lcom/kugoo/kugookirin/user/EmailForgotActivity$3;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/user/EmailForgotActivity$1;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity$1;-><init>(Lcom/kugoo/kugookirin/user/EmailForgotActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/user/EmailForgotActivity$2;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity$2;-><init>(Lcom/kugoo/kugookirin/user/EmailForgotActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kugoo/kugookirin/user/EmailForgotActivity$3;-><init>(Lcom/kugoo/kugookirin/user/EmailForgotActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 63
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a05a2,
            0x7f0a0270,
            0x7f0a0363
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0270

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a0363

    if-eq v0, v1, :cond_1

    const p1, 0x7f0a05a2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->finish()V

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {p0, p1}, Lcom/kugoo/kugookirin/utils/DensityUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)Ljava/lang/Boolean;

    goto :goto_0

    .line 83
    :cond_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->isClick:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->isClick:Z

    .line 85
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->emailEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->email:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 88
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->email:Ljava/lang/String;

    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/DensityUtils;->isEmail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->email:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->postForgot(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->isClick:Z

    const v0, 0x7f1200b8

    .line 92
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002e

    .line 53
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->setContentView(I)V

    .line 54
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 56
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 57
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->initData()V

    .line 58
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->showDefaultUi()V

    return-void
.end method
