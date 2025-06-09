.class public Lcom/kugoo/kugookirin/social/DiscoverFragment;
.super Landroidx/fragment/app/Fragment;
.source "DiscoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/DiscoverFragment$MyViewPager;
    }
.end annotation


# instance fields
.field private SIZE:I

.field private carouselUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private discoverRankingAdapter:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

.field discoverRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d9
    .end annotation
.end field

.field discoverSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01df
    .end annotation
.end field

.field discoverTabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01e0
    .end annotation
.end field

.field discoverViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01e1
    .end annotation
.end field

.field private fragmentList:[Landroidx/fragment/app/Fragment;

.field private hasMsg:Z

.field private isLogin:Z

.field private limit:I

.field private loginUserId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

.field messageBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0395
    .end annotation
.end field

.field private odoRankingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;",
            ">;"
        }
    .end annotation
.end field

.field odoRankingRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0413
    .end annotation
.end field

.field odoRankingTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0414
    .end annotation
.end field

.field private pagerItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/PagerItem;",
            ">;"
        }
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private preferences:Landroid/content/SharedPreferences;

.field private socialRankingAdapter:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

.field private socialRankingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;",
            ">;"
        }
    .end annotation
.end field

.field socialRankingRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0522
    .end annotation
.end field

.field socialRankingTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0523
    .end annotation
.end field

.field private tabName:[Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 118
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->limit:I

    const/16 v1, 0xc

    .line 103
    iput v1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->SIZE:I

    .line 113
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->isLogin:Z

    .line 388
    new-instance v0, Lcom/kugoo/kugookirin/social/DiscoverFragment$9;

    .line 389
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/DiscoverFragment$9;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->mHandler:Landroid/os/Handler;

    .line 404
    new-instance v0, Lcom/kugoo/kugookirin/social/DiscoverFragment$10;

    invoke-direct {v0, p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$10;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->carouselUrls:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/social/DiscoverFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->carouselUrls:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingAdapter:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->hasMsg:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/kugoo/kugookirin/social/DiscoverFragment;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->hasMsg:Z

    return p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->pagerItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getNewMsg()V

    return-void
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/DiscoverFragment;)[Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->tabName:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/social/DiscoverFragment;)[Landroidx/fragment/app/Fragment;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->fragmentList:[Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->odoRankingList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/social/DiscoverFragment;)Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverRankingAdapter:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    return-object p0
.end method

.method private getDiscoverData()V
    .locals 8

    .line 474
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tokenTest1"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->USER_URL:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dynamicDetail"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v0 .. v7}, Lcom/kugoo/kugookirin/utils/NetLink;->getDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lretrofit2/Call;

    move-result-object v0

    .line 478
    new-instance v1, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$11;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getNewMsg()V
    .locals 8

    .line 525
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 527
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    const-string v1, "selectMessages"

    .line 529
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    .line 530
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    new-instance v7, Lcom/kugoo/kugookirin/social/DiscoverFragment$14;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/DiscoverFragment$12;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$12;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/DiscoverFragment$13;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$13;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/DiscoverFragment$14;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 555
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private initEvent()V
    .locals 1

    .line 142
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->preferences:Landroid/content/SharedPreferences;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->odoRankingList:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingList:Ljava/util/ArrayList;

    .line 146
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->setSlideshow()V

    .line 147
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->initTabLayout()V

    .line 148
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->initViewPager()V

    return-void
.end method

.method private initLooperImg()V
    .locals 5

    .line 240
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->CAROUSEL_DISCOVER:Ljava/lang/String;

    invoke-static {v0}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->carouselUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 243
    new-instance v2, Lcom/kugoo/kugookirin/bean/PagerItem;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7b2c"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->carouselUrls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e2a\u56fe\u7247"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/kugoo/kugookirin/bean/PagerItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->pagerItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    const-string v1, "getCarousel"

    const-string v2, "1"

    .line 249
    invoke-interface {v0, v1, v2}, Lcom/kugoo/kugookirin/utils/NetLink;->getCarousel(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 250
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 251
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$2;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    .line 252
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private initTabLayout()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1201dc

    .line 298
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1201e1

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->tabName:[Ljava/lang/String;

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->tabName:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->tabName:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/kugoo/kugookirin/social/DiscoverFragment$5;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$5;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private initViewPager()V
    .locals 2

    .line 326
    new-instance v0, Lcom/kugoo/kugookirin/social/DiscoverFragment$MyViewPager;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/DiscoverFragment$MyViewPager;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;Landroidx/fragment/app/FragmentManager;)V

    .line 327
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 328
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 329
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/kugoo/kugookirin/social/DiscoverFragment$6;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$6;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private loginDialog()V
    .locals 3

    .line 366
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00c3

    .line 367
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 368
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 369
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0a0348

    .line 370
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/DiscoverFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$7;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0349

    .line 376
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/DiscoverFragment$8;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$8;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/kugoo/kugookirin/social/DiscoverFragment;
    .locals 1

    .line 123
    new-instance v0, Lcom/kugoo/kugookirin/social/DiscoverFragment;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;-><init>()V

    return-object v0
.end method

.method private setAdapter()V
    .locals 4

    .line 210
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->odoRankingList:Ljava/util/ArrayList;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_RAKING_ODO:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverRankingAdapter:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    .line 211
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingList:Ljava/util/ArrayList;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_RAKING_SOCIAL:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingAdapter:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    .line 213
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->odoRankingRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverRankingAdapter:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 214
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingAdapter:Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 216
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->odoRankingRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 217
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->socialRankingRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 219
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getDiscoverData()V

    .line 221
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 222
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/kugoo/kugookirin/social/DiscoverFragment$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$1;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method private setSlideshow()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    new-instance v2, Lcom/kugoo/kugookirin/social/DiscoverFragment$3;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$3;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/kugoo/kugookirin/view/SobLooperPager;->setData(Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;)V

    .line 289
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->discoverSlPager:Lcom/kugoo/kugookirin/view/SobLooperPager;

    new-instance v1, Lcom/kugoo/kugookirin/social/DiscoverFragment$4;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment$4;-><init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;)V

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/SobLooperPager;->setOnItemClickListener(Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->initEvent()V

    .line 138
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->setAdapter()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0395,
            0x7f0a04c3
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0395

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a04c3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->isLogin:Z

    if-eqz p1, :cond_1

    .line 350
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->loginDialog()V

    goto :goto_0

    .line 356
    :cond_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->isLogin:Z

    if-eqz p1, :cond_3

    .line 357
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/social/InfoHintActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 359
    :cond_3
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->loginDialog()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->pagerItems:Ljava/util/List;

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->carouselUrls:Ljava/util/ArrayList;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009a

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 156
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 p2, 0x2

    new-array p2, p2, [Landroidx/fragment/app/Fragment;

    .line 157
    new-instance p3, Lcom/kugoo/kugookirin/social/PopularFragment;

    invoke-direct {p3}, Lcom/kugoo/kugookirin/social/PopularFragment;-><init>()V

    aput-object p3, p2, v0

    new-instance p3, Lcom/kugoo/kugookirin/social/RecognitionFragment;

    invoke-direct {p3}, Lcom/kugoo/kugookirin/social/RecognitionFragment;-><init>()V

    const/4 v0, 0x1

    aput-object p3, p2, v0

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->fragmentList:[Landroidx/fragment/app/Fragment;

    .line 158
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->parentActivity:Landroid/app/Activity;

    .line 159
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->initLooperImg()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 193
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 194
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 458
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    const/16 v0, 0x65

    if-eqz p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 188
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 171
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->loginUserId:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->token:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->isLogin:Z

    if-nez v0, :cond_0

    .line 176
    iput-boolean v2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->hasMsg:Z

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 198
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/DiscoverFragment;->getDiscoverData()V

    .line 199
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->fragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/kugoo/kugookirin/social/PopularFragment;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/PopularFragment;->refreshData()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment;->fragmentList:[Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/kugoo/kugookirin/social/RecognitionFragment;

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/RecognitionFragment;->refreshData()V

    :cond_1
    return-void
.end method
