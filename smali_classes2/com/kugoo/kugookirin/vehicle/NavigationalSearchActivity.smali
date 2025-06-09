.class public Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NavigationalSearchActivity.java"


# instance fields
.field private isClick:Z

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private preferences:Landroid/content/SharedPreferences;

.field searchInputEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04c9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->isClick:Z

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 42
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->getWindow()Landroid/view/Window;

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
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a00d1,
            0x7f0a00d2
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->finish()V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->searchInputEt:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a00d1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003a

    .line 32
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->setContentView(I)V

    .line 33
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 35
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->preferences:Landroid/content/SharedPreferences;

    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/NavigationalSearchActivity;->showDefaultUi()V

    return-void
.end method
