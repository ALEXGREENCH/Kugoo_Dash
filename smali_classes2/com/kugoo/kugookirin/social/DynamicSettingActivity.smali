.class public Lcom/kugoo/kugookirin/social/DynamicSettingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DynamicSettingActivity.java"


# static fields
.field private static final RESULTCODE:I = 0x66


# instance fields
.field cbFriend:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00d9
    .end annotation
.end field

.field cbOpen:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00dd
    .end annotation
.end field

.field cbPrivate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00de
    .end annotation
.end field

.field private checkBoxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private dynamicScope:Ljava/lang/String;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field imgRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d2
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;

.field relaFriend:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0487
    .end annotation
.end field

.field relaOpen:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0489
    .end annotation
.end field

.field relaPrivate:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a048a
    .end annotation
.end field

.field topBackBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d3
    .end annotation
.end field

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
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "1"

    .line 55
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->dynamicScope:Ljava/lang/String;

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 83
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->preferences:Landroid/content/SharedPreferences;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->checkBoxList:Ljava/util/ArrayList;

    .line 86
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->cbOpen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->checkBoxList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->cbPrivate:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->checkBoxList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->cbFriend:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_SCOPE_TYPE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 92
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->setCbSelected(I)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->txtTitle:Landroid/widget/TextView;

    const v1, 0x7f120353

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->imgRight:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->tvRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->tvRight:Landroid/widget/TextView;

    const v1, 0x7f1201ba

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCbSelected(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->checkBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scopeType=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scopeType"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->checkBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->checkBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_SCOPE_TYPE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setPostIntent()V
    .locals 3

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "scopeType"

    .line 131
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->dynamicScope:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x66

    .line 132
    invoke-virtual {p0, v1, v0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->finish()V

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
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->getWindow()Landroid/view/Window;

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

    .line 151
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 152
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->setPostIntent()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02d3,
            0x7f0a05df,
            0x7f0a0489,
            0x7f0a0487,
            0x7f0a048a
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 110
    :sswitch_0
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->setPostIntent()V

    .line 111
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string p1, "2"

    .line 123
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->dynamicScope:Ljava/lang/String;

    const/4 p1, 0x1

    .line 124
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->setCbSelected(I)V

    goto :goto_0

    :sswitch_2
    const-string p1, "1"

    .line 114
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->dynamicScope:Ljava/lang/String;

    const/4 p1, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->setCbSelected(I)V

    goto :goto_0

    :sswitch_3
    const-string p1, "3"

    .line 118
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->dynamicScope:Ljava/lang/String;

    const/4 p1, 0x2

    .line 119
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->setCbSelected(I)V

    goto :goto_0

    .line 107
    :sswitch_4
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->setPostIntent()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a02d3 -> :sswitch_4
        0x7f0a0487 -> :sswitch_3
        0x7f0a0489 -> :sswitch_2
        0x7f0a048a -> :sswitch_1
        0x7f0a05df -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002c

    .line 64
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 67
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->initEvent()V

    .line 70
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;->showDefaultUi()V

    return-void
.end method
