.class public Lcom/kugoo/kugookirin/user/MobileForgotActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MobileForgotActivity.java"


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

.field btnCode:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a00be
    .end annotation
.end field

.field confirmPwd:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a026f
    .end annotation
.end field

.field private countDown:I

.field private eventHandler:Lcn/smssdk/EventHandler;

.field private isSending:Z

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field mhandler:Landroid/os/Handler;

.field newPwd:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a026e
    .end annotation
.end field

.field phoneAreaCode:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a044c
    .end annotation
.end field

.field phoneNum:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0271
    .end annotation
.end field

.field private pwd:Ljava/lang/String;

.field private strNum:Ljava/lang/String;

.field verCode:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0272
    .end annotation
.end field

.field verForgotBack:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a05a3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x3c

    .line 251
    iput v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->countDown:I

    .line 252
    new-instance v0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity$4;-><init>(Lcom/kugoo/kugookirin/user/MobileForgotActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->mhandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->countDown:I

    return p0
.end method

.method static synthetic access$002(Lcom/kugoo/kugookirin/user/MobileForgotActivity;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->countDown:I

    return p1
.end method

.method static synthetic access$010(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)I
    .locals 2

    .line 58
    iget v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->countDown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->countDown:I

    return v0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/user/MobileForgotActivity;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->isSending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->strNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->pwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/user/MobileForgotActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->postChangePwd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method private areaCodeSelectDialog(Landroid/content/Context;)V
    .locals 5

    .line 209
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0086

    .line 210
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 212
    new-instance v1, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->areaCodeItemList:Ljava/util/List;

    new-instance v3, Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity$2;-><init>(Lcom/kugoo/kugookirin/user/MobileForgotActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;)V

    const p1, 0x7f0a0071

    .line 226
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 228
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p1, 0x7f0a00cf

    .line 230
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/kugoo/kugookirin/user/MobileForgotActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity$3;-><init>(Lcom/kugoo/kugookirin/user/MobileForgotActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x51

    .line 240
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 241
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 242
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 243
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f130113

    .line 244
    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 246
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 247
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 248
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private initAreaCode()V
    .locals 5

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->areaCodeItemList:Ljava/util/List;

    .line 106
    new-instance v1, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;

    const v2, 0x7f120026

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "86"

    const v4, 0x7f0f0004

    invoke-direct {v1, v4, v2, v3}, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->areaCodeItemList:Ljava/util/List;

    new-instance v1, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;

    const v2, 0x7f120027

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "7"

    const v4, 0x7f0f0005

    invoke-direct {v1, v4, v2, v3}, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initSms()V
    .locals 1

    .line 111
    new-instance v0, Lcom/kugoo/kugookirin/user/MobileForgotActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity$1;-><init>(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->eventHandler:Lcn/smssdk/EventHandler;

    .line 121
    invoke-static {v0}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->verForgotBack:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private postChangePwd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 294
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    .line 295
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "phone"

    .line 296
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    .line 297
    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    const-string v1, "updatePhonePassword"

    .line 298
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    .line 299
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v7, Lcom/kugoo/kugookirin/user/MobileForgotActivity$7;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;

    invoke-direct {v4, p0, p1, p2}, Lcom/kugoo/kugookirin/user/MobileForgotActivity$5;-><init>(Lcom/kugoo/kugookirin/user/MobileForgotActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/kugoo/kugookirin/user/MobileForgotActivity$6;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity$6;-><init>(Lcom/kugoo/kugookirin/user/MobileForgotActivity;)V

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/user/MobileForgotActivity$7;-><init>(Lcom/kugoo/kugookirin/user/MobileForgotActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 332
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 98
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->getWindow()Landroid/view/Window;

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
            0x7f0a00bd,
            0x7f0a05a2,
            0x7f0a00be,
            0x7f0a044c
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "86"

    const v1, 0x7f12036a

    const-string v2, ""

    const-string v3, "+"

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 174
    :sswitch_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->finish()V

    goto/16 :goto_1

    .line 132
    :sswitch_1
    invoke-direct {p0, p0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->areaCodeSelectDialog(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 178
    :sswitch_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->isSending:Z

    if-nez p1, :cond_b

    .line 179
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->phoneNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object v5, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->phoneAreaCode:Landroid/widget/TextView;

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

    if-eqz v0, :cond_1

    .line 181
    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/toolUtil;->isPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iput-boolean v6, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->isSending:Z

    .line 183
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->btnCode:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 184
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->phoneAreaCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2929860"

    invoke-static {v1, v0, p1}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->mhandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 187
    :cond_0
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 190
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/toolUtil;->isRussiaPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iput-boolean v6, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->isSending:Z

    .line 192
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->btnCode:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 193
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->phoneAreaCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "10807669"

    invoke-static {v1, v0, p1}, Lcn/smssdk/SMSSDK;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->mhandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 196
    :cond_2
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 136
    :sswitch_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->phoneNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->strNum:Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->verCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 138
    iget-object v5, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->newPwd:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->pwd:Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->confirmPwd:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 140
    iget-object v6, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->strNum:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const p1, 0x7f1201b4

    .line 141
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 144
    :cond_3
    iget-object v6, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->phoneAreaCode:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->strNum:Ljava/lang/String;

    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/toolUtil;->isPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 146
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->strNum:Ljava/lang/String;

    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/toolUtil;->isRussiaPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 151
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 155
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f1203b1

    .line 156
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 159
    :cond_6
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->pwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 167
    :cond_7
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const p1, 0x7f1201e7

    .line 168
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 171
    :cond_8
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->phoneAreaCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->strNum:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/smssdk/SMSSDK;->submitVerificationCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :cond_9
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    const p1, 0x7f120097

    .line 161
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_a
    const p1, 0x7f1201e6

    .line 163
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_b
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00bd -> :sswitch_3
        0x7f0a00be -> :sswitch_2
        0x7f0a044c -> :sswitch_1
        0x7f0a05a2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0051

    .line 86
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->setContentView(I)V

    .line 88
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 89
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->initView()V

    .line 90
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->initAreaCode()V

    .line 91
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->initSms()V

    .line 92
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 337
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 338
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->eventHandler:Lcn/smssdk/EventHandler;

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    .line 339
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;->mhandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
