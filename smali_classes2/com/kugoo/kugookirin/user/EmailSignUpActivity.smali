.class public Lcom/kugoo/kugookirin/user/EmailSignUpActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EmailSignUpActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field back_img:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0086
    .end annotation
.end field

.field countDown:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private email:Ljava/lang/String;

.field emailBg:Landroid/widget/FrameLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0504
    .end annotation
.end field

.field emailEt:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0505
    .end annotation
.end field

.field private etBgLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field getVerifyTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0294
    .end annotation
.end field

.field private inputCode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

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

.field private pwd:Ljava/lang/String;

.field pwdBg:Landroid/widget/FrameLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0506
    .end annotation
.end field

.field pwdEt:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0507
    .end annotation
.end field

.field rePwdBg:Landroid/widget/FrameLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0508
    .end annotation
.end field

.field private repwd:Ljava/lang/String;

.field repwdEt:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0509
    .end annotation
.end field

.field signVerifyEt:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a050d
    .end annotation
.end field

.field sign_skip_btn:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a050a
    .end annotation
.end field

.field private username:Ljava/lang/String;

.field usernameBg:Landroid/widget/FrameLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a050b
    .end annotation
.end field

.field usernameEt:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a050c
    .end annotation
.end field

.field private verifyCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x258

    .line 87
    iput v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->countDown:I

    .line 221
    new-instance v0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$1;-><init>(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->inputCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->pwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Ljava/util/Map;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->mapSign:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->verifyCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->verifyCode:Ljava/lang/String;

    return-object p1
.end method

.method private etBgChange(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 367
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->etBgLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 369
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->etBgLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    goto :goto_1

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->etBgLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getVerifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 320
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->VERIFY_URL:Ljava/lang/String;

    .line 321
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "email"

    .line 322
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nickName"

    .line 323
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 324
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance p1, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$7;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$5;-><init>(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$6;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$6;-><init>(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$7;-><init>(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 362
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 135
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->preferences:Landroid/content/SharedPreferences;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->etBgLists:Ljava/util/List;

    .line 138
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->usernameBg:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->etBgLists:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->emailBg:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->etBgLists:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->pwdBg:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->etBgLists:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->rePwdBg:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initView()V
    .locals 0

    return-void
.end method

.method private postSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->mapSign:Ljava/util/Map;

    const-string v1, "email"

    .line 266
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->mapSign:Ljava/util/Map;

    const-string v1, "nickName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object p2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->mapSign:Ljava/util/Map;

    const-string v0, "password"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object p2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->mapSign:Ljava/util/Map;

    const-string p3, "method"

    const-string v0, "Eregister"

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object p2, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->mapSign:Ljava/util/Map;

    const-string p3, "key"

    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance p2, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$4;

    const/4 v3, 0x1

    sget-object v4, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v5, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;

    invoke-direct {v5, p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$2;-><init>(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;Ljava/lang/String;)V

    new-instance v6, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$3;

    invoke-direct {v6, p0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$3;-><init>(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;)V

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity$4;-><init>(Lcom/kugoo/kugookirin/user/EmailSignUpActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 309
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 107
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 389
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->inputCode:Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->verifyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 391
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    const v0, 0x7f120069

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    const v0, 0x7f06020f

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    const v0, 0x7f120068

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    const v0, 0x7f0602c2

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a0503,
            0x7f0a050a,
            0x7f0a050c,
            0x7f0a0505,
            0x7f0a0507,
            0x7f0a0509,
            0x7f0a0363,
            0x7f0a0294,
            0x7f0a0086
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 206
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->etBgChange(I)V

    goto/16 :goto_0

    .line 202
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->finish()V

    goto/16 :goto_0

    :sswitch_2
    const/4 p1, 0x3

    .line 215
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->etBgChange(I)V

    goto/16 :goto_0

    :sswitch_3
    const/4 p1, 0x2

    .line 212
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->etBgChange(I)V

    goto/16 :goto_0

    :sswitch_4
    const/4 p1, 0x1

    .line 209
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->etBgChange(I)V

    goto/16 :goto_0

    .line 170
    :sswitch_5
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->usernameEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->username:Ljava/lang/String;

    .line 171
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->emailEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->email:Ljava/lang/String;

    .line 172
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->pwdEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->pwd:Ljava/lang/String;

    .line 173
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->repwdEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->repwd:Ljava/lang/String;

    .line 174
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->signVerifyEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 175
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 176
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->username:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->email:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->pwd:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->repwd:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->pwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->repwd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->email:Ljava/lang/String;

    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/DensityUtils;->isEmail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->email:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->pwd:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->postSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const p1, 0x7f1200b8

    .line 188
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1
    const p1, 0x7f1201c6

    .line 191
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    const p1, 0x7f120237

    .line 194
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    const p1, 0x7f120125

    .line 197
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 167
    :sswitch_6
    invoke-static {p0, p1}, Lcom/kugoo/kugookirin/utils/DensityUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 150
    :sswitch_7
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->usernameEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->username:Ljava/lang/String;

    .line 151
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->emailEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->email:Ljava/lang/String;

    .line 153
    iget p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->countDown:I

    const/16 v0, 0x258

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->username:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->email:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 154
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyTv:Landroid/widget/TextView;

    const v0, 0x7f0600c5

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->email:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->username:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getVerifyCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->username:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f12039d

    .line 158
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 159
    :cond_5
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->email:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f120370

    .line 160
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 164
    :sswitch_8
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->finish()V

    :cond_6
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0086 -> :sswitch_8
        0x7f0a0294 -> :sswitch_7
        0x7f0a0363 -> :sswitch_6
        0x7f0a0503 -> :sswitch_5
        0x7f0a0505 -> :sswitch_4
        0x7f0a0507 -> :sswitch_3
        0x7f0a0509 -> :sswitch_2
        0x7f0a050a -> :sswitch_1
        0x7f0a050c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0049

    .line 94
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->setContentView(I)V

    .line 95
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 97
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 98
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->initView()V

    .line 99
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->initData()V

    .line 101
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->signVerifyEt:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->showDefaultUi()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 115
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "showBackBtn"

    const/4 v2, 0x0

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->back_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->back_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const-string v1, "showSkipBtn"

    const/4 v4, 0x1

    .line 123
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->sign_skip_btn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;->sign_skip_btn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
