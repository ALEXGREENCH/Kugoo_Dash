.class public Lcom/kugoo/kugookirin/user/MobileSignUpActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MobileSignUpActivity.java"


# instance fields
.field areaCodeItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;",
            ">;"
        }
    .end annotation
.end field

.field back_img:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0086
    .end annotation
.end field

.field private countDown:I

.field private eventHandler:Lcn/smssdk/EventHandler;

.field getVerCode:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a00c5
    .end annotation
.end field

.field private isSending:Z

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field mhandler:Landroid/os/Handler;

.field private pNum:Ljava/lang/String;

.field phoneAreaCode:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a044c
    .end annotation
.end field

.field private pwd:Ljava/lang/String;

.field signCode:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0609
    .end annotation
.end field

.field signNum:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a060b
    .end annotation
.end field

.field private userName:Ljava/lang/String;

.field verConfirmPwd:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0607
    .end annotation
.end field

.field verName:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a060a
    .end annotation
.end field

.field verPwd:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0606
    .end annotation
.end field

.field ver_sign_skip:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a060c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x3c

    .line 85
    iput v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->countDown:I

    .line 156
    new-instance v0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$2;-><init>(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->mhandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->countDown:I

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->countDown:I

    return p1
.end method

.method static synthetic access$010(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)I
    .locals 2

    .line 61
    iget v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->countDown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->countDown:I

    return v0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->isSending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->userName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->pNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->pwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->postSignUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method private areaCodeSelectDialog(Landroid/content/Context;)V
    .locals 5

    .line 344
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0086

    .line 345
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 347
    new-instance v1, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->areaCodeItemList:Ljava/util/List;

    new-instance v3, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$6;-><init>(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;)V

    const p1, 0x7f0a0071

    .line 361
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 362
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 363
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p1, 0x7f0a00cf

    .line 365
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$7;-><init>(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 374
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x51

    .line 375
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 376
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 377
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 378
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f130113

    .line 379
    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 381
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 382
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 383
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private initAreaCode()V
    .locals 5

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->areaCodeItemList:Ljava/util/List;

    .line 115
    new-instance v1, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;

    const v2, 0x7f120026

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "86"

    const v4, 0x7f0f0004

    invoke-direct {v1, v4, v2, v3}, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->areaCodeItemList:Ljava/util/List;

    new-instance v1, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;

    const v2, 0x7f120027

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "7"

    const v4, 0x7f0f0005

    invoke-direct {v1, v4, v2, v3}, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initEvent()V
    .locals 1

    .line 152
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private initSms()V
    .locals 1

    .line 138
    new-instance v0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$1;-><init>(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->eventHandler:Lcn/smssdk/EventHandler;

    .line 148
    invoke-static {v0}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    return-void
.end method

.method private initView()V
    .locals 0

    return-void
.end method

.method private postSignUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 201
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "nickName"

    .line 202
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "phone"

    .line 203
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "password"

    .line 204
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string v0, "Pregister"

    .line 205
    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 206
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance p1, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$5;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;

    invoke-direct {v4, p0, p2, p3}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$3;-><init>(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$4;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$4;-><init>(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$5;-><init>(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 243
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

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
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a00c5,
            0x7f0a05a2,
            0x7f0a01fc,
            0x7f0a0608,
            0x7f0a060c,
            0x7f0a0086,
            0x7f0a044c
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "86"

    const v1, 0x7f12036a

    const-string v2, ""

    const-string v3, "+"

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 334
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 290
    :sswitch_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->signNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->pNum:Ljava/lang/String;

    .line 291
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->signCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 292
    iget-object v5, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->verPwd:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->pwd:Ljava/lang/String;

    .line 293
    iget-object v5, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->verConfirmPwd:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 294
    iget-object v6, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->verName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->userName:Ljava/lang/String;

    .line 296
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const p1, 0x7f1201a4

    .line 297
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 300
    :cond_0
    iget-object v6, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->pNum:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const p1, 0x7f1201b4

    .line 301
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 304
    :cond_1
    iget-object v6, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->phoneAreaCode:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->pNum:Ljava/lang/String;

    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/toolUtil;->isPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 306
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->pNum:Ljava/lang/String;

    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/toolUtil;->isRussiaPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 315
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f1203b1

    .line 316
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->pwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 327
    :cond_5
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const p1, 0x7f1201e7

    .line 328
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->phoneAreaCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->pNum:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/smssdk/SMSSDK;->submitVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 320
    :cond_7
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7f120097

    .line 321
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_8
    const p1, 0x7f1201e6

    .line 323
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    .line 255
    :sswitch_2
    invoke-direct {p0, p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->areaCodeSelectDialog(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 287
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 259
    :sswitch_4
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->isSending:Z

    if-nez p1, :cond_c

    .line 260
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->signNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 261
    iget-object v5, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->phoneAreaCode:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-eqz v0, :cond_a

    .line 262
    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/toolUtil;->isPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 263
    iput-boolean v6, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->isSending:Z

    .line 264
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->getVerCode:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 265
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->phoneAreaCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2929860"

    invoke-static {v1, v0, p1}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->mhandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 268
    :cond_9
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 271
    :cond_a
    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/toolUtil;->isRussiaPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 272
    iput-boolean v6, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->isSending:Z

    .line 273
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->getVerCode:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 274
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->phoneAreaCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "10807669"

    invoke-static {v1, v0, p1}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->mhandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 277
    :cond_b
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 284
    :sswitch_5
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->finish()V

    :cond_c
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0086 -> :sswitch_5
        0x7f0a00c5 -> :sswitch_4
        0x7f0a01fc -> :sswitch_3
        0x7f0a044c -> :sswitch_2
        0x7f0a05a2 -> :sswitch_5
        0x7f0a0608 -> :sswitch_1
        0x7f0a060c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0052

    .line 95
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->setContentView(I)V

    .line 97
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 98
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->initAreaCode()V

    .line 99
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->initView()V

    .line 100
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->initSms()V

    .line 101
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->initEvent()V

    .line 102
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 388
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 389
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->eventHandler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    .line 390
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->mhandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 121
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 122
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "showBackBtn"

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->back_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->back_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const-string v1, "showSkipBtn"

    const/4 v4, 0x1

    .line 129
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->ver_sign_skip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->ver_sign_skip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
