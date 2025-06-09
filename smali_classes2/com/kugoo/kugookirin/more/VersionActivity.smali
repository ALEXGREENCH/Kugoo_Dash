.class public Lcom/kugoo/kugookirin/more/VersionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VersionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field appVerTimeTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a006b
    .end annotation
.end field

.field appVerTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a006c
    .end annotation
.end field

.field appVersionTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a006d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initDate()V
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/VersionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/VersionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 61
    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/VersionActivity;->appVerTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " V"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/VersionActivity;->appVerTimeTv:Landroid/widget/TextView;

    const-string v1, "2025-03-20"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 46
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/VersionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/VersionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a05a2
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/VersionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 36
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/VersionActivity;->setContentView(I)V

    .line 37
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 38
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    const p1, 0x7f0a05a3

    .line 39
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/VersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f12002a

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/more/VersionActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/VersionActivity;->initDate()V

    .line 41
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/VersionActivity;->showDefaultUi()V

    return-void
.end method
