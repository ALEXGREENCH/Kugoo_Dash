.class public Lcom/kugoo/kugookirin/more/RankListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RankListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/more/RankListActivity$rankViewPager;
    }
.end annotation


# instance fields
.field imgRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d2
    .end annotation
.end field

.field imgTopBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02d3
    .end annotation
.end field

.field rankTab:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0474
    .end annotation
.end field

.field rankViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0475
    .end annotation
.end field

.field private tabArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tabFragment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
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
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/more/RankListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->tabArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/more/RankListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->tabFragment:Ljava/util/ArrayList;

    return-object p0
.end method

.method private initEvent()V
    .locals 2

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->tabArray:Ljava/util/ArrayList;

    const v1, 0x7f1201eb

    .line 74
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/RankListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->tabArray:Ljava/util/ArrayList;

    const v1, 0x7f1201ec

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/RankListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->tabArray:Ljava/util/ArrayList;

    const v1, 0x7f1201ed

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/RankListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->tabArray:Ljava/util/ArrayList;

    const v1, 0x7f1201ee

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/RankListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->tabFragment:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Lcom/kugoo/kugookirin/more/RankDayFragment;

    invoke-direct {v1}, Lcom/kugoo/kugookirin/more/RankDayFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->tabFragment:Ljava/util/ArrayList;

    new-instance v1, Lcom/kugoo/kugookirin/more/RankWeekFragment;

    invoke-direct {v1}, Lcom/kugoo/kugookirin/more/RankWeekFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->tabFragment:Ljava/util/ArrayList;

    new-instance v1, Lcom/kugoo/kugookirin/more/RankMonthFragment;

    invoke-direct {v1}, Lcom/kugoo/kugookirin/more/RankMonthFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->tabFragment:Ljava/util/ArrayList;

    new-instance v1, Lcom/kugoo/kugookirin/more/RankTotalFragment;

    invoke-direct {v1}, Lcom/kugoo/kugookirin/more/RankTotalFragment;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lcom/kugoo/kugookirin/more/RankListActivity$rankViewPager;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/RankListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/more/RankListActivity$rankViewPager;-><init>(Lcom/kugoo/kugookirin/more/RankListActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 86
    iget-object v1, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->rankViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->rankTab:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->rankViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->txtTitle:Landroid/widget/TextView;

    const v1, 0x7f120394

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->tvRight:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/RankListActivity;->imgRight:Landroid/widget/ImageView;

    const v1, 0x7f0f00d9

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/more/RankListActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 65
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/RankListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/RankListActivity;->getWindow()Landroid/view/Window;

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

    .line 131
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 132
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/RankListActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a02d3,
            0x7f0a02d2
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02d3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/more/RankListActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0043

    .line 54
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/more/RankListActivity;->setContentView(I)V

    .line 55
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 57
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/RankListActivity;->initView()V

    .line 59
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/RankListActivity;->initEvent()V

    .line 60
    invoke-direct {p0}, Lcom/kugoo/kugookirin/more/RankListActivity;->showDefaultUi()V

    return-void
.end method
