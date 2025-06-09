.class public Lcom/kugoo/kugookirin/user/SignLoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SignLoginActivity.java"


# instance fields
.field intent:Landroid/content/Intent;

.field languageType:Ljava/lang/String;

.field loginSignBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0352
    .end annotation
.end field

.field loginSkipBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0354
    .end annotation
.end field

.field selectLogin:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04de
    .end annotation
.end field

.field selectSign:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04df
    .end annotation
.end field

.field showSkipBtn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 53
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04de,
            0x7f0a04df,
            0x7f0a0352,
            0x7f0a0354
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "zh"

    const-string v1, "showBackBtn"

    const-string v2, "showSkipBtn"

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 101
    :sswitch_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->languageType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->intent:Landroid/content/Intent;

    .line 104
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/EmailSignUpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->intent:Landroid/content/Intent;

    .line 108
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :sswitch_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->languageType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->intent:Landroid/content/Intent;

    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->intent:Landroid/content/Intent;

    .line 96
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->finish()V

    goto :goto_0

    .line 113
    :sswitch_3
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->finish()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0352 -> :sswitch_3
        0x7f0a0354 -> :sswitch_2
        0x7f0a04de -> :sswitch_1
        0x7f0a04df -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0048

    .line 44
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->setContentView(I)V

    .line 45
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 46
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->getResources()Landroid/content/res/Resources;

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

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->languageType:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->showDefaultUi()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 62
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/SignLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    const-string v1, "showBackBtn"

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->loginSignBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->loginSignBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->intent:Landroid/content/Intent;

    const-string v3, "showSkipBtn"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->loginSkipBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/SignLoginActivity;->loginSkipBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
