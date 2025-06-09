.class public Lcom/kugoo/kugookirin/user/ChangeNameActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChangeNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field imgMore:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d2
    .end annotation
.end field

.field imgTopBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d3
    .end annotation
.end field

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field nameEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03d9
    .end annotation
.end field

.field private newName:Ljava/lang/String;

.field private oldName:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private token:Ljava/lang/String;

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
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/user/ChangeNameActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method private initEvent()V
    .locals 3

    .line 79
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->preferences:Landroid/content/SharedPreferences;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 81
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->token:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->oldName:Ljava/lang/String;

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->nameEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->oldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->nameEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->txtTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->imgMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->tvRight:Landroid/widget/TextView;

    const v1, 0x7f1201fe

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->tvRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private postName(Ljava/lang/String;)V
    .locals 8

    .line 148
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 149
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->token:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "nickName"

    .line 150
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "data"

    .line 151
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    const-string v1, "updateUserInfor"

    .line 152
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    .line 153
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v7, Lcom/kugoo/kugookirin/user/ChangeNameActivity$3;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/user/ChangeNameActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/kugoo/kugookirin/user/ChangeNameActivity$1;-><init>(Lcom/kugoo/kugookirin/user/ChangeNameActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/kugoo/kugookirin/user/ChangeNameActivity$2;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/user/ChangeNameActivity$2;-><init>(Lcom/kugoo/kugookirin/user/ChangeNameActivity;)V

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/user/ChangeNameActivity$3;-><init>(Lcom/kugoo/kugookirin/user/ChangeNameActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 182
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 72
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->nameEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->newName:Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 102
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02d3,
            0x7f0a05df
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02d3

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a05df

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->newName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->postName(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0022

    .line 61
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->setContentView(I)V

    .line 62
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 64
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->initView()V

    .line 66
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->initEvent()V

    .line 67
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->showDefaultUi()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->tvRight:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->tvRight:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
