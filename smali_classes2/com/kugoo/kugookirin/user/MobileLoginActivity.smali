.class public Lcom/kugoo/kugookirin/user/MobileLoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MobileLoginActivity.java"


# instance fields
.field backImg:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0086
    .end annotation
.end field

.field etPwd:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a046d
    .end annotation
.end field

.field private isClick:Z

.field private languageType:Ljava/lang/String;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private preferences:Landroid/content/SharedPreferences;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a046e
    .end annotation
.end field

.field pwdNum:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a046c
    .end annotation
.end field

.field pwdSkipBtn:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0470
    .end annotation
.end field

.field private strNum:Ljava/lang/String;

.field private strPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/user/MobileLoginActivity;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->isClick:Z

    return p1
.end method

.method private initEvent()V
    .locals 1

    .line 89
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->preferences:Landroid/content/SharedPreferences;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private initPolicyTip()V
    .locals 10

    const v0, 0x7f0a0457

    .line 121
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v2, 0x7f120391

    .line 123
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 125
    new-instance v2, Lcom/kugoo/kugookirin/user/MobileLoginActivity$1;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity$1;-><init>(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)V

    .line 133
    new-instance v3, Lcom/kugoo/kugookirin/user/MobileLoginActivity$2;

    invoke-direct {v3, p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity$2;-><init>(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)V

    .line 141
    iget-object v4, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->languageType:Ljava/lang/String;

    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "#A5A6A7"

    const/16 v6, 0x21

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    const/16 v7, 0x9

    .line 142
    invoke-virtual {v1, v2, v4, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v2, 0xa

    const/16 v8, 0xe

    .line 143
    invoke-virtual {v1, v3, v2, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 145
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 146
    invoke-virtual {v1, v3, v4, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 147
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 148
    invoke-virtual {v1, v3, v2, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x12

    const/16 v7, 0x23

    .line 150
    invoke-virtual {v1, v2, v4, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v2, 0x28

    const/16 v8, 0x36

    .line 151
    invoke-virtual {v1, v3, v2, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 153
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 154
    invoke-virtual {v1, v3, v4, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 155
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 156
    invoke-virtual {v1, v3, v2, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 158
    :goto_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private postLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 218
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    .line 219
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "phone"

    .line 220
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "password"

    .line 221
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "login"

    .line 222
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 223
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance p1, Lcom/kugoo/kugookirin/user/MobileLoginActivity$5;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity$3;-><init>(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/user/MobileLoginActivity$4;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity$4;-><init>(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/user/MobileLoginActivity$5;-><init>(Lcom/kugoo/kugookirin/user/MobileLoginActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 331
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 82
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a00bc,
            0x7f0a046b,
            0x7f0a046a,
            0x7f0a046f,
            0x7f0a0470,
            0x7f0a0086
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 202
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->finish()V

    goto/16 :goto_0

    .line 199
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 174
    :sswitch_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->isClick:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->isClick:Z

    .line 176
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->pwdNum:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strNum:Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strPwd:Ljava/lang/String;

    .line 178
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strNum:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strPwd:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strNum:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strPwd:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->postLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->isClick:Z

    const p1, 0x7f12013b

    .line 187
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 190
    :cond_1
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->isClick:Z

    const p1, 0x7f120125

    .line 191
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 196
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/MobileForgotActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->finish()V

    goto :goto_0

    .line 167
    :sswitch_5
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->finish()V

    :cond_2
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0086 -> :sswitch_5
        0x7f0a00bc -> :sswitch_4
        0x7f0a046a -> :sswitch_3
        0x7f0a046b -> :sswitch_2
        0x7f0a046f -> :sswitch_1
        0x7f0a0470 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0039

    .line 71
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->setContentView(I)V

    .line 73
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 74
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->initEvent()V

    .line 75
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->languageType:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->showDefaultUi()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 95
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PHONE_NUMBER:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strNum:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PASSWORD:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strPwd:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strPwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->pwdNum:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->etPwd:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->strPwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->initPolicyTip()V

    .line 105
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "showBackBtn"

    const/4 v2, 0x0

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->backImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->backImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const-string v1, "showSkipBtn"

    const/4 v4, 0x1

    .line 112
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->pwdSkipBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->pwdSkipBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method
