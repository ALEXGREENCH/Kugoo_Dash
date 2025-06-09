.class public Lcom/kugoo/kugookirin/more/DarkModeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DarkModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DarkModeActivity"


# instance fields
.field cbDark:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00d8
    .end annotation
.end field

.field cbNormal:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00dc
    .end annotation
.end field

.field private isNormal:Z

.field lineDark:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0322
    .end annotation
.end field

.field lineNormal:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0325
    .end annotation
.end field

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private preferences:Landroid/content/SharedPreferences;

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

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private changeModeView(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->cbNormal:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 85
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->cbDark:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 87
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->cbNormal:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->cbDark:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    const/4 v0, 0x2

    .line 91
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->isNormal:Z

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "changeModeView: mode = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->isNormal:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DarkModeActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/DarkModeActivity;->setAppTheme()V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->isNormal:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->cbNormal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/DarkModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->cbDark:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/DarkModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAppTheme()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->isNormal:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0325,
            0x7f0a0322,
            0x7f0a05a2,
            0x7f0a00dc,
            0x7f0a00d8
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 115
    :sswitch_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/DarkModeActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x1

    .line 106
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/more/DarkModeActivity;->changeModeView(Z)V

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x0

    .line 111
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/more/DarkModeActivity;->changeModeView(Z)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00d8 -> :sswitch_2
        0x7f0a00dc -> :sswitch_1
        0x7f0a0322 -> :sswitch_2
        0x7f0a0325 -> :sswitch_1
        0x7f0a05a2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0028

    .line 57
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/DarkModeActivity;->setContentView(I)V

    .line 58
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 59
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->unbinder:Lbutterknife/Unbinder;

    .line 60
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->topBackTitle:Landroid/widget/TextView;

    const v0, 0x7f12016d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 61
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->preferences:Landroid/content/SharedPreferences;

    .line 62
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/DarkModeActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/DarkModeActivity;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public setAppTheme()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/DarkModeActivity;->recreate()V

    return-void
.end method
