.class public Lcom/kugoo/kugookirin/user/CheckEmailActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CheckEmailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 2

    const v0, 0x7f0a05a3

    .line 40
    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/user/CheckEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120059

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/user/CheckEmailActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 33
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/CheckEmailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/CheckEmailActivity;->getWindow()Landroid/view/Window;

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
            0x7f0a05a2,
            0x7f0a00f1
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00f1

    if-eq p1, v0, :cond_0

    const v0, 0x7f0a05a2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/CheckEmailActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0024

    .line 23
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/CheckEmailActivity;->setContentView(I)V

    .line 24
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 26
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 27
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/CheckEmailActivity;->initData()V

    .line 28
    invoke-direct {p0}, Lcom/kugoo/kugookirin/user/CheckEmailActivity;->showDefaultUi()V

    return-void
.end method
