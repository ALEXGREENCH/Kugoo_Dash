.class public Lcom/kugoo/kugookirin/user/EmailLoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EmailLoginActivity.java"


# instance fields
.field private RC_SIGN_IN:I

.field backImg:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0086
    .end annotation
.end field

.field btnSkip:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0354
    .end annotation
.end field

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private email:Ljava/lang/String;

.field emailBg:Landroid/widget/FrameLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a034b
    .end annotation
.end field

.field emailEt:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a034c
    .end annotation
.end field

.field private emailText:Ljava/lang/String;

.field private etBgLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private fbCallbackManager:Lcom/facebook/CallbackManager;

.field private isClick:Z

.field private languageType:Ljava/lang/String;

.field private operatingAnim:Landroid/view/animation/Animation;

.field private preferences:Landroid/content/SharedPreferences;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a045e
    .end annotation
.end field

.field private pwd:Ljava/lang/String;

.field pwdBg:Landroid/widget/FrameLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0350
    .end annotation
.end field

.field pwdEt:Landroid/widget/EditText;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0351
    .end annotation
.end field

.field private pwdText:Ljava/lang/String;

.field private signInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x7e6

    .line 107
    iput v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->RC_SIGN_IN:I

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/user/EmailLoginActivity;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->isClick:Z

    return p1
.end method

.method private etBgChange(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 464
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->etBgLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 466
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->etBgLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    goto :goto_1

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->etBgLists:Ljava/util/List;

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

.method private handleSignInResult(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "googlesign"

    const-string v1, "accountData==   email="

    .line 497
    :try_start_0
    const-class v2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v2, "handleSignInResult   get account"

    .line 498
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   name=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 500
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   token=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   id=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 501
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   photoUrl=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SignInWithGoogle"

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->postThirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "signInResult:failed code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initData()V
    .locals 2

    .line 183
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->preferences:Landroid/content/SharedPreferences;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->etBgLists:Ljava/util/List;

    .line 186
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->emailBg:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->etBgLists:Ljava/util/List;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->pwdBg:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initPolicyTip()V
    .locals 10

    const v0, 0x7f0a0457

    .line 139
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v2, 0x7f120391

    .line 142
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 144
    new-instance v2, Lcom/kugoo/kugookirin/user/EmailLoginActivity$1;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity$1;-><init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)V

    .line 152
    new-instance v3, Lcom/kugoo/kugookirin/user/EmailLoginActivity$2;

    invoke-direct {v3, p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity$2;-><init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)V

    .line 160
    iget-object v4, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->languageType:Ljava/lang/String;

    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "#A5A6A7"

    const/16 v6, 0x21

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    const/16 v7, 0x9

    .line 161
    invoke-virtual {v1, v2, v4, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v2, 0xa

    const/16 v8, 0xe

    .line 162
    invoke-virtual {v1, v3, v2, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 164
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 165
    invoke-virtual {v1, v3, v4, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 166
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 167
    invoke-virtual {v1, v3, v2, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x12

    const/16 v7, 0x23

    .line 169
    invoke-virtual {v1, v2, v4, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v2, 0x28

    const/16 v8, 0x36

    .line 170
    invoke-virtual {v1, v3, v2, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 172
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 173
    invoke-virtual {v1, v3, v4, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 174
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 175
    invoke-virtual {v1, v3, v2, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 178
    :goto_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private loginLoading()V
    .locals 2

    const v0, 0x7f01000c

    .line 474
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->operatingAnim:Landroid/view/animation/Animation;

    .line 475
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 476
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->operatingAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private postLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 348
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "email"

    .line 349
    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "password"

    .line 350
    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "Elogin"

    .line 351
    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance p1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$5;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity$3;-><init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/user/EmailLoginActivity$4;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity$4;-><init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/user/EmailLoginActivity$5;-><init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    .line 460
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private postThirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 517
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    .line 518
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SignInWithGoogle"

    .line 520
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "  email=="

    if-eqz v0, :cond_0

    const-string v0, "googleId"

    .line 521
    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "loginWithFB"

    .line 522
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "nickName="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  method="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " facebookId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "facebooksign"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "facebookId"

    .line 525
    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "loginWitter"

    .line 528
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "twitter"

    .line 529
    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const-string v0, "nickName"

    .line 531
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "email"

    .line 532
    invoke-virtual {v6, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    .line 533
    invoke-virtual {v6, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    .line 534
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "nickName=="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  thirdId=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  method=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "thirdLogin"

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance p1, Lcom/kugoo/kugookirin/user/EmailLoginActivity$8;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;

    invoke-direct {v4, p0, p3, p2}, Lcom/kugoo/kugookirin/user/EmailLoginActivity$6;-><init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/kugoo/kugookirin/user/EmailLoginActivity$7;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity$7;-><init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/user/EmailLoginActivity$8;-><init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 580
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 131
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 482
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 483
    iget v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->RC_SIGN_IN:I

    if-ne p1, v0, :cond_0

    .line 486
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 487
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->handleSignInResult(Lcom/google/android/gms/tasks/Task;)V

    .line 490
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fbthirdsign"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->fbCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a034a,
            0x7f0a034e,
            0x7f0a0353,
            0x7f0a0354,
            0x7f0a034c,
            0x7f0a0351,
            0x7f0a0363,
            0x7f0a034f,
            0x7f0a0355,
            0x7f0a034d,
            0x7f0a0086
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 227
    :sswitch_0
    invoke-static {p0, p1}, Lcom/kugoo/kugookirin/utils/DensityUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 268
    :sswitch_1
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->isClick:Z

    if-nez p1, :cond_5

    .line 269
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->finish()V

    goto/16 :goto_2

    .line 263
    :sswitch_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->isClick:Z

    if-nez p1, :cond_5

    .line 264
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 277
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->etBgChange(I)V

    goto/16 :goto_2

    .line 295
    :sswitch_4
    new-instance p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const-string v0, "603267565152-9dt5aqmnhispdidq3f42hhmvjebfo3b5.apps.googleusercontent.com"

    .line 296
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    .line 298
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->signInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 299
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    .line 300
    iget v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->RC_SIGN_IN:I

    invoke-virtual {p0, p1, v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 301
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 303
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->signInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_2

    .line 258
    :sswitch_5
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->isClick:Z

    if-nez p1, :cond_5

    .line 259
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/EmailForgotActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 324
    :sswitch_6
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 328
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/LoginManager;->logOut()V

    goto :goto_1

    .line 330
    :cond_1
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    const-string v0, "email"

    const-string v1, "public_profile"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    :goto_1
    const-string p1, "thirdsign"

    const-string v0, "login_face"

    .line 333
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 274
    :sswitch_7
    invoke-direct {p0, v2}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->etBgChange(I)V

    goto/16 :goto_2

    .line 230
    :sswitch_8
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->isClick:Z

    if-nez p1, :cond_5

    .line 231
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->isClick:Z

    .line 232
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->emailEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->email:Ljava/lang/String;

    .line 233
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->pwdEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->pwd:Ljava/lang/String;

    .line 234
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/DensityUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 235
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->email:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->pwd:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 236
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->email:Ljava/lang/String;

    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/DensityUtils;->isEmail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 237
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->email:Ljava/lang/String;

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->pwd:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->postLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 244
    :cond_2
    iput-boolean v2, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->isClick:Z

    const p1, 0x7f1200b8

    .line 245
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 248
    :cond_3
    iput-boolean v2, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->isClick:Z

    const p1, 0x7f12013b

    .line 249
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 252
    :cond_4
    iput-boolean v2, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->isClick:Z

    const p1, 0x7f120125

    .line 253
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 224
    :sswitch_9
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->finish()V

    :cond_5
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0086 -> :sswitch_9
        0x7f0a034a -> :sswitch_8
        0x7f0a034c -> :sswitch_7
        0x7f0a034d -> :sswitch_6
        0x7f0a034e -> :sswitch_5
        0x7f0a034f -> :sswitch_4
        0x7f0a0351 -> :sswitch_3
        0x7f0a0353 -> :sswitch_2
        0x7f0a0354 -> :sswitch_1
        0x7f0a0363 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0036

    .line 115
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->setContentView(I)V

    .line 116
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 118
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 119
    invoke-static {p1}, Lcom/mob/MobSDK;->submitPolicyGrantResult(Z)V

    .line 120
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->initData()V

    .line 121
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getResources()Landroid/content/res/Resources;

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

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->languageType:Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->fbCallbackManager:Lcom/facebook/CallbackManager;

    .line 126
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->showDefaultUi()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 193
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 195
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "showBackBtn"

    const/4 v2, 0x0

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->backImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->backImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const-string v1, "showSkipBtn"

    const/4 v4, 0x1

    .line 202
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->btnSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->btnSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->emailText:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PASSWORD:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->pwdText:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->emailText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->emailEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->emailText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->pwdEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->pwdText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_3
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->initPolicyTip()V

    return-void
.end method
