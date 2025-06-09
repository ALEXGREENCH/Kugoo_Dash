.class public Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TemptureUnitActivity.java"


# instance fields
.field cbKmh:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00da
    .end annotation
.end field

.field cbMph:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00db
    .end annotation
.end field

.field lineKmh:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0323
    .end annotation
.end field

.field lineMph:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0324
    .end annotation
.end field

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private preferences:Landroid/content/SharedPreferences;

.field private tempState:Ljava/lang/String;

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
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "m"

    .line 39
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->tempState:Ljava/lang/String;

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 60
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->getWindow()Landroid/view/Window;

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

    .line 92
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 93
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a05a2,
            0x7f0a00da,
            0x7f0a00db,
            0x7f0a0323,
            0x7f0a0324
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "tempUnit"

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 71
    :sswitch_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->finish()V

    goto :goto_0

    .line 82
    :sswitch_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->cbKmh:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 83
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->cbMph:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    const-string p1, "tempState=02=i"

    .line 84
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_TEMP_UNIT:Ljava/lang/String;

    const-string v1, "i"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 75
    :sswitch_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->cbMph:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 76
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->cbKmh:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    const-string p1, "tempState=02=m"

    .line 77
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_TEMP_UNIT:Ljava/lang/String;

    const-string v1, "m"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00da -> :sswitch_2
        0x7f0a00db -> :sswitch_1
        0x7f0a0323 -> :sswitch_2
        0x7f0a0324 -> :sswitch_1
        0x7f0a05a2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d004d

    .line 44
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->setContentView(I)V

    .line 45
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 47
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->topBackTitle:Landroid/widget/TextView;

    const v0, 0x7f120344

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 48
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->preferences:Landroid/content/SharedPreferences;

    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 51
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_TEMP_UNIT:Ljava/lang/String;

    const-string v1, "m"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->tempState:Ljava/lang/String;

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "tempState=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->tempState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tempUnit"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->cbKmh:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->tempState:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 54
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->cbMph:Landroid/widget/ImageView;

    const-string v0, "i"

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->tempState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 55
    invoke-direct {p0}, Lcom/kugoo/kugookirin/vehicle/TemptureUnitActivity;->showDefaultUi()V

    return-void
.end method
