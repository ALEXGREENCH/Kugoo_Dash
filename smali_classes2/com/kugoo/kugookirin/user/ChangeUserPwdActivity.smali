.class public Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChangeUserPwdActivity.java"


# instance fields
.field confirmPwdEt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0144
    .end annotation
.end field

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field newPwdEt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ed
    .end annotation
.end field

.field oldPwdEt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a041b
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;

.field topBackTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a05a3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->resetAccountData()V

    return-void
.end method

.method private changUserPwd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 90
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v3, ""

    .line 92
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resetPassword"

    .line 91
    invoke-interface {v0, v2, v1, p1, p2}, Lcom/kugoo/kugookirin/utils/NetLink;->changeUserPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    .line 94
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 95
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity$1;-><init>(Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;)V

    .line 96
    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private resetAccountData()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USERNAME:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PHONE_NUMBER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_EMAIL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_SEX:Ljava/lang/String;

    const-string v3, "--"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PASSWORD:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PORTRAIT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_PROFILE:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_BIRTHDAY:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_WEIGHT:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_HEIGHT:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_COUNTRY_FLAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_LEVEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 151
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 55
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 156
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 157
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a05a2,
            0x7f0a0550
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0550

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a05a2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->finish()V

    goto/16 :goto_1

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PASSWORD:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->oldPwdEt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->newPwdEt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->confirmPwdEt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->changUserPwd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const p1, 0x7f1201a8

    .line 79
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    const p1, 0x7f1201bc

    .line 82
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    :goto_0
    const p1, 0x7f120130

    .line 73
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004f

    .line 44
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->setContentView(I)V

    .line 45
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 47
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->topBackTitle:Landroid/widget/TextView;

    const v0, 0x7f120051

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 48
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->preferences:Landroid/content/SharedPreferences;

    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/ChangeUserPwdActivity;->showDefaultUi()V

    return-void
.end method
