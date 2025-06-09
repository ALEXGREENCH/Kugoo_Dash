.class public Lcom/kugoo/kugookirin/more/ServiceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field feedBackDescribe:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0243
    .end annotation
.end field

.field feedBackEmaiaddress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0244
    .end annotation
.end field

.field feedBackSubject:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0245
    .end annotation
.end field

.field feedbackSubmit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0246
    .end annotation
.end field

.field private isLogin:Z

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field mainView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0363
    .end annotation
.end field

.field private oldContentTxt:Ljava/lang/String;

.field private oldSubjectTxt:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field senderEmail:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e4
    .end annotation
.end field

.field topBackBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a2
    .end annotation
.end field

.field topBackTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/more/ServiceActivity;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/more/ServiceActivity;->saveDataAndFinish(Z)V

    return-void
.end method

.method private initEvent()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->topBackTitle:Landroid/widget/TextView;

    const v1, 0x7f120029

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/ServiceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackEmaiaddress:Landroid/widget/TextView;

    const v1, 0x7f1201fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->preferences:Landroid/content/SharedPreferences;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 93
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->senderEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->isLogin:Z

    .line 97
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_OLD_SUBJECT_TXT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->oldSubjectTxt:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_OLD_CONTENT_TXT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->oldContentTxt:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->oldSubjectTxt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->oldContentTxt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackSubject:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->oldSubjectTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackDescribe:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->oldContentTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private postServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 171
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "email"

    .line 172
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string v0, "userOpinion"

    .line 173
    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "subject"

    .line 174
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "opinion"

    .line 175
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 176
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance p1, Lcom/kugoo/kugookirin/more/ServiceActivity$4;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/more/ServiceActivity$2;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/more/ServiceActivity$2;-><init>(Lcom/kugoo/kugookirin/more/ServiceActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/more/ServiceActivity$3;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/more/ServiceActivity$3;-><init>(Lcom/kugoo/kugookirin/more/ServiceActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/more/ServiceActivity$4;-><init>(Lcom/kugoo/kugookirin/more/ServiceActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 207
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private saveDataAndFinish(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackSubject:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackDescribe:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string p1, ""

    move-object v0, p1

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_OLD_SUBJECT_TXT:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_OLD_CONTENT_TXT:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ServiceActivity;->finish()V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 80
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/ServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 157
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/more/ServiceActivity;->saveDataAndFinish(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a05a2,
            0x7f0a0246
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0246

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a05a2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 111
    :cond_0
    invoke-direct {p0, v1}, Lcom/kugoo/kugookirin/more/ServiceActivity;->saveDataAndFinish(Z)V

    goto/16 :goto_0

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackEmaiaddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackSubject:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->feedBackDescribe:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->senderEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f120370

    .line 119
    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/more/ServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 121
    :cond_2
    iget-boolean v3, p0, Lcom/kugoo/kugookirin/more/ServiceActivity;->isLogin:Z

    if-eqz v3, :cond_4

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 123
    invoke-direct {p0, v2, p1, v0}, Lcom/kugoo/kugookirin/more/ServiceActivity;->postServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const p1, 0x7f12033f

    .line 125
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/ServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const p1, 0x7f120137

    .line 128
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/ServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 129
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/kugoo/kugookirin/more/ServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/more/ServiceActivity$1;-><init>(Lcom/kugoo/kugookirin/more/ServiceActivity;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0045

    .line 70
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/ServiceActivity;->setContentView(I)V

    .line 71
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 72
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 74
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ServiceActivity;->initEvent()V

    .line 75
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/ServiceActivity;->showDefaultUi()V

    return-void
.end method
