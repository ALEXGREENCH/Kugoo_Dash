.class public Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChangeMottoActivity.java"

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

.field private oldBiography:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field tip_tv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0591
    .end annotation
.end field

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

.method static synthetic access$000(Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method private initEvent()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->nameEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->preferences:Landroid/content/SharedPreferences;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 93
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->token:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PROFILE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->oldBiography:Ljava/lang/String;

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->nameEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->oldBiography:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->txtTitle:Landroid/widget/TextView;

    const v1, 0x7f120363

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->imgMore:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->tvRight:Landroid/widget/TextView;

    const v1, 0x7f1201fe

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->tvRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private postMotto(Ljava/lang/String;)V
    .locals 8

    .line 142
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 143
    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->token:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "profile"

    .line 144
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "data"

    .line 145
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    const-string v1, "updateUserInfor"

    .line 146
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    .line 147
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v7, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity$3;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity$1;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity$2;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity$2;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;)V

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity$3;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 176
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 75
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 130
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->tip_tv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->nameEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/150"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 115
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 116
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->finish()V

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

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02d3

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a05df

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->nameEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->postMotto(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0021

    .line 64
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 67
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->initEvent()V

    .line 70
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/ChangeMottoActivity;->showDefaultUi()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
