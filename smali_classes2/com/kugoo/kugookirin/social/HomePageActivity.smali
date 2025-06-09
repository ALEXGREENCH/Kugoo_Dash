.class public Lcom/kugoo/kugookirin/social/HomePageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# static fields
.field public static isDeleteItem:Z = false


# instance fields
.field avatarPhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0080
    .end annotation
.end field

.field badgesRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0087
    .end annotation
.end field

.field detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a01b6
    .end annotation
.end field

.field followBtn:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0259
    .end annotation
.end field

.field followerTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a025a
    .end annotation
.end field

.field followingTv:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a025b
    .end annotation
.end field

.field homePageBadges:Landroid/widget/FrameLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02ba
    .end annotation
.end field

.field homePageCountry:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02bc
    .end annotation
.end field

.field homePageFlag:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02bd
    .end annotation
.end field

.field private homePageId:Ljava/lang/String;

.field homePageInfo:Landroid/widget/FrameLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02be
    .end annotation
.end field

.field private homePageInfoAdapter:Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;

.field homePagePost:Landroid/widget/FrameLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02bf
    .end annotation
.end field

.field private homePagePostsAdapter:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

.field homePageTab:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02c0
    .end annotation
.end field

.field imgRight:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02d2
    .end annotation
.end field

.field private infoDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;",
            ">;"
        }
    .end annotation
.end field

.field infoRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a02dd
    .end annotation
.end field

.field intent:Landroid/content/Intent;

.field private mHandler:Landroid/os/Handler;

.field messageBtn:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0395
    .end annotation
.end field

.field noInfoDataView:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0401
    .end annotation
.end field

.field noPostDataView:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0403
    .end annotation
.end field

.field private postData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;",
            ">;"
        }
    .end annotation
.end field

.field postsRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a045a
    .end annotation
.end field

.field private titleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field txtTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a05e8
    .end annotation
.end field

.field private userID:Ljava/lang/String;

.field private userPageInfoBean:Lcom/kugoo/kugookirin/bean/UserPageInfo;

.field private userToken:Ljava/lang/String;

.field vehicleTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a0602
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 405
    new-instance v0, Lcom/kugoo/kugookirin/social/HomePageActivity$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/HomePageActivity$3;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/HomePageActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->infoDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageInfoAdapter:Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/HomePageActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->postData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePagePostsAdapter:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/HomePageActivity;)Lcom/kugoo/kugookirin/bean/UserPageInfo;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userPageInfoBean:Lcom/kugoo/kugookirin/bean/UserPageInfo;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kugoo/kugookirin/social/HomePageActivity;Lcom/kugoo/kugookirin/bean/UserPageInfo;)Lcom/kugoo/kugookirin/bean/UserPageInfo;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userPageInfoBean:Lcom/kugoo/kugookirin/bean/UserPageInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/HomePageActivity;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/HomePageActivity;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kugoo/kugookirin/social/HomePageActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/HomePageActivity;->postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/kugoo/kugookirin/social/HomePageActivity;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->showBlockUserDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/kugoo/kugookirin/social/HomePageActivity;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->blockUser(Ljava/lang/String;)V

    return-void
.end method

.method private blockUser(Ljava/lang/String;)V
    .locals 7

    .line 607
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    .line 608
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "method"

    const-string v1, "shield_dynamic"

    .line 609
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 610
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userToken:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uid"

    .line 611
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userID:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "shield_user"

    .line 612
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shield_id"

    .line 613
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 614
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    new-instance p1, Lcom/kugoo/kugookirin/social/HomePageActivity$16;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/HomePageActivity$14;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/HomePageActivity$14;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/HomePageActivity$15;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/HomePageActivity$15;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/HomePageActivity$16;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 641
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private followUser()V
    .locals 4

    .line 460
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userID:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageId:Ljava/lang/String;

    const-string v3, "followUser"

    invoke-interface {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/utils/NetLink;->postFollowUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 462
    new-instance v1, Lcom/kugoo/kugookirin/social/HomePageActivity$4;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/HomePageActivity$4;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getHomepagePosts()V
    .locals 4

    .line 372
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userToken:Ljava/lang/String;

    const-string v3, "homepageDynamic"

    invoke-interface {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/utils/NetLink;->getHomepagePosts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 374
    new-instance v1, Lcom/kugoo/kugookirin/social/HomePageActivity$2;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/HomePageActivity$2;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getPageInfo()V
    .locals 4

    .line 329
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageId:Ljava/lang/String;

    const-string v3, "getinfo"

    invoke-interface {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/utils/NetLink;->getPageInfoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/kugoo/kugookirin/social/HomePageActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/HomePageActivity$1;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private getPersonalData()V
    .locals 4

    .line 495
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userToken:Ljava/lang/String;

    const-string v3, "homepageSummarize"

    invoke-interface {v0, v1, v2, v3}, Lcom/kugoo/kugookirin/utils/NetLink;->getUserPagerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 497
    new-instance v1, Lcom/kugoo/kugookirin/social/HomePageActivity$5;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/HomePageActivity$5;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initEvent()V
    .locals 3

    .line 178
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 179
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userToken:Ljava/lang/String;

    .line 180
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userID:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->HOME_PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageId:Ljava/lang/String;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->avatarPhotoIv:Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 193
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->setInfoAdapter()V

    .line 194
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->setPostAdapter()V

    .line 197
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getPersonalData()V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getPageInfo()V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getHomepagePosts()V

    :cond_3
    return-void
.end method

.method private initTabLayout()V
    .locals 4

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->titleList:Ljava/util/ArrayList;

    const v1, 0x7f12012c

    .line 164
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->titleList:Ljava/util/ArrayList;

    const v1, 0x7f1201dd

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageTab:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageTab:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->imgRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->followBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->imgRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private makeFakeData01()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 269
    new-instance v1, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    invoke-direct {v1}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;-><init>()V

    .line 270
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setId(Ljava/lang/String;)V

    .line 271
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setUid(Ljava/lang/String;)V

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8f66\u578b"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setModel(Ljava/lang/String;)V

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\u540d"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setBluetooth(Ljava/lang/String;)V

    mul-int/lit8 v2, v0, 0x14

    .line 274
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setMileage(Ljava/lang/String;)V

    mul-int/lit16 v2, v0, 0x654

    .line 275
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->setTimelog(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->infoDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 652
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    .line 653
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 654
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->userToken:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 655
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "toid"

    .line 656
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sort"

    .line 657
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "userReport"

    .line 658
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 659
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    new-instance p1, Lcom/kugoo/kugookirin/social/HomePageActivity$19;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/HomePageActivity$17;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/HomePageActivity$17;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/HomePageActivity$18;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/HomePageActivity$18;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/HomePageActivity$19;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 688
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private setInfoAdapter()V
    .locals 2

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->infoDataList:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 252
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 253
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->infoRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 255
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->infoDataList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageInfoAdapter:Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;

    .line 256
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->infoRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setPostAdapter()V
    .locals 4

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->postData:Ljava/util/ArrayList;

    .line 261
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->postsRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 263
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->postData:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePagePostsAdapter:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    .line 264
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->postsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private showBlockUserDialog(Ljava/lang/String;)V
    .locals 3

    .line 583
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0077

    .line 584
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0a009c

    .line 586
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/HomePageActivity$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/HomePageActivity$12;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a009a

    .line 594
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/kugoo/kugookirin/social/HomePageActivity$13;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/social/HomePageActivity$13;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 601
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 602
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 603
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 141
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private showTipOffsDialog()V
    .locals 4

    .line 520
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f13046d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0081

    .line 521
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 523
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 524
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x51

    .line 525
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 526
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 527
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 528
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f0a0494

    .line 530
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/HomePageActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/HomePageActivity$6;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05d5

    .line 538
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/HomePageActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/HomePageActivity$7;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05e0

    .line 546
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/HomePageActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/HomePageActivity$8;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05d4

    .line 554
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/HomePageActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/HomePageActivity$9;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a009b

    .line 562
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/HomePageActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/HomePageActivity$10;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05c8

    .line 570
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/HomePageActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/HomePageActivity$11;-><init>(Lcom/kugoo/kugookirin/social/HomePageActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 577
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 578
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 579
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a02d3,
            0x7f0a0259,
            0x7f0a0395,
            0x7f0a02d2,
            0x7f0a02d2,
            0x7f0a02b8,
            0x7f0a02b9
        }
    .end annotation

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "uid"

    const-string v1, "friendOrFollow"

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 308
    :sswitch_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->finish()V

    goto :goto_0

    .line 317
    :sswitch_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->showTipOffsDialog()V

    goto :goto_0

    .line 302
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/social/FriendListActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->intent:Landroid/content/Intent;

    const-string v2, "1"

    .line 303
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 296
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/kugoo/kugookirin/social/FriendListActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->intent:Landroid/content/Intent;

    const-string v2, "2"

    .line 297
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 311
    :sswitch_4
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->followUser()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0259 -> :sswitch_4
        0x7f0a02b8 -> :sswitch_3
        0x7f0a02b9 -> :sswitch_2
        0x7f0a02d2 -> :sswitch_1
        0x7f0a02d3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0031

    .line 129
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/HomePageActivity;->setContentView(I)V

    .line 130
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 133
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->initEvent()V

    .line 134
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->initView()V

    .line 135
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->initTabLayout()V

    .line 136
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->showDefaultUi()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 449
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 450
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 283
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 284
    sget-boolean v0, Lcom/kugoo/kugookirin/social/HomePageActivity;->isDeleteItem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 285
    sput-boolean v0, Lcom/kugoo/kugookirin/social/HomePageActivity;->isDeleteItem:Z

    .line 286
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->postData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/HomePageActivity;->getHomepagePosts()V

    :cond_0
    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 215
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageInfo:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePagePost:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageBadges:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 222
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 224
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageInfo:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePagePost:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageBadges:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 228
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 230
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePageInfo:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePagePost:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->homePagePost:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 234
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/HomePageActivity;->detailSmartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :cond_2
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
