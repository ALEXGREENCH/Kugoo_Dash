.class public Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DiscoverSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchUserListener;,
        Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchPostListener;,
        Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchVehicleListener;,
        Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$searchPagerAdapter;
    }
.end annotation


# static fields
.field private static onPostListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchPostListener;

.field private static onUserListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchUserListener;

.field private static onVehicleListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchVehicleListener;


# instance fields
.field private currentPage:I

.field discoverSearchBackBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01da
    .end annotation
.end field

.field discoverSearchTab:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01de
    .end annotation
.end field

.field discoverSearchViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01dd
    .end annotation
.end field

.field private fragmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private postContent:Ljava/lang/String;

.field private searchContent:Ljava/lang/String;

.field searchEt:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01db
    .end annotation
.end field

.field private titleName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userContent:Ljava/lang/String;

.field private vehicleContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->currentPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->titleName:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->fragmentList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static setOnSearchPostListener(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchPostListener;)V
    .locals 0

    .line 212
    sput-object p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->onPostListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchPostListener;

    return-void
.end method

.method public static setOnSearchUserListener(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchUserListener;)V
    .locals 0

    .line 221
    sput-object p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->onUserListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchUserListener;

    return-void
.end method

.method public static setOnSearchVehicleListener(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchVehicleListener;)V
    .locals 0

    .line 203
    sput-object p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->onVehicleListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchVehicleListener;

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
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchContent:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 109
    iget p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->currentPage:I

    if-nez p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchContent:Ljava/lang/String;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->vehicleContent:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->onVehicleListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchVehicleListener;

    if-eqz v0, :cond_2

    .line 112
    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchVehicleListener;->searchVehicle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 116
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchContent:Ljava/lang/String;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->userContent:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->onUserListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchUserListener;

    if-eqz v0, :cond_2

    .line 118
    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchUserListener;->searchUser(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 122
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchContent:Ljava/lang/String;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->postContent:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->onPostListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchPostListener;

    if-eqz v0, :cond_2

    .line 124
    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchPostListener;->searchPost(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 93
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 94
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->finish()V

    return-void
.end method

.method public onClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01da
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002a

    .line 54
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->setContentView(I)V

    .line 55
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->fragmentList:Ljava/util/ArrayList;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->titleName:Ljava/util/ArrayList;

    .line 59
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->fragmentList:Ljava/util/ArrayList;

    new-instance v0, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/social/SearchVehicleFragment;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->fragmentList:Ljava/util/ArrayList;

    new-instance v0, Lcom/kugoo/kugookirin/social/SearchUserFragment;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/social/SearchUserFragment;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->fragmentList:Ljava/util/ArrayList;

    new-instance v0, Lcom/kugoo/kugookirin/social/SearchTopicFragment;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/social/SearchTopicFragment;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->titleName:Ljava/util/ArrayList;

    const v0, 0x7f1203ad

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->titleName:Ljava/util/ArrayList;

    const v0, 0x7f1203ab

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->titleName:Ljava/util/ArrayList;

    const v0, 0x7f120359

    invoke-virtual {p0, v0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance p1, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$searchPagerAdapter;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$searchPagerAdapter;-><init>(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 68
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->discoverSearchViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 69
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->discoverSearchTab:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->discoverSearchViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 72
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchEt:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->discoverSearchViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 75
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->showDefaultUi()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 136
    iput p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->currentPage:I

    .line 137
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->vehicleContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchContent:Ljava/lang/String;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->vehicleContent:Ljava/lang/String;

    .line 140
    iget v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->currentPage:I

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->onVehicleListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchVehicleListener;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchVehicleListener;->searchVehicle(Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->userContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchContent:Ljava/lang/String;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->userContent:Ljava/lang/String;

    .line 150
    iget v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->currentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 151
    sget-object v0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->onUserListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchUserListener;

    if-eqz v0, :cond_1

    .line 152
    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchUserListener;->searchUser(Ljava/lang/String;)V

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->postContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->searchContent:Ljava/lang/String;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->postContent:Ljava/lang/String;

    .line 160
    iget v0, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->currentPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 161
    sget-object v0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->onPostListener:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchPostListener;

    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0, p1}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity$onSearchPostListener;->searchPost(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
