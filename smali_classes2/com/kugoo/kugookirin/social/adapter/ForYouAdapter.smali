.class public Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ForYouAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;,
        Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final TYPE_HEAD:I

.field private final TYPE_ITEM:I

.field private carouselUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isLogin:Z

.field private mContext:Landroid/content/Context;

.field private mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

.field private orgdynamics:Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

.field private pagerItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/PagerItem;",
            ">;"
        }
    .end annotation
.end field

.field private postList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Landroid/content/SharedPreferences;

.field private shareDContent1:Ljava/lang/String;

.field private shareName02:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private final userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x3f2

    .line 75
    iput v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->TYPE_HEAD:I

    const/16 v0, 0x3f3

    .line 76
    iput v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->TYPE_ITEM:I

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->shareDContent1:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->shareName02:Ljava/lang/String;

    .line 460
    new-instance v1, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$12;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$12;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V

    iput-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    .line 92
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postList:Ljava/util/ArrayList;

    .line 94
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->preferences:Landroid/content/SharedPreferences;

    .line 95
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->userID:Ljava/lang/String;

    .line 96
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->isLogin:Z

    .line 97
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->token:Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->initLooperData()V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/List;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->pagerItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;ILjava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->startDynDetailActivity(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Landroid/content/SharedPreferences;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->loginDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postDynamicData(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->showTipOffsDialog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->carouselUrls:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->carouselUrls:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->deleteDynamic(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->showBlockPostDialog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->blockPost(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->dealFabulousDynamics(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-void
.end method

.method private blockPost(Ljava/lang/String;I)V
    .locals 7

    .line 776
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    .line 777
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "method"

    const-string v1, "shield_dynamic"

    .line 778
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "shield_one"

    .line 781
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shield_id"

    .line 782
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 783
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$27;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$25;

    invoke-direct {v4, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$25;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;I)V

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$26;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$26;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$27;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 813
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private dealFabulousDynamics(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 991
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;

    const-string v1, "fabulousNum"

    .line 992
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 993
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->setFabulousNum(Ljava/lang/String;)V

    const-string p1, "0"

    .line 994
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "6"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "4"

    .line 996
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "N"

    .line 997
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->setFabulous(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Y"

    .line 995
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->setFabulous(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    const p1, 0x7f0a010f

    .line 1000
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private dealGridView(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;I)V
    .locals 4

    .line 565
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getPictureUrl()Ljava/util/ArrayList;

    move-result-object v0

    .line 566
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getPictureUrlThumbnail()Ljava/util/ArrayList;

    move-result-object p2

    .line 568
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 569
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 570
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    goto :goto_1

    .line 571
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 574
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    goto :goto_1

    .line 572
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    .line 576
    :goto_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 577
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    goto :goto_2

    .line 591
    :cond_3
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    .line 595
    :goto_2
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$14;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$14;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private dealLabelStr(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;)V
    .locals 5

    .line 390
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getLabelStr()Ljava/util/ArrayList;

    move-result-object p2

    .line 391
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 393
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-nez v2, :cond_0

    const-string v3, "# "

    .line 395
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "  # "

    .line 397
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 403
    :cond_2
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private dealSharePublish(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;)V
    .locals 4

    .line 366
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1600(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 367
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    .line 368
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

    .line 369
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;->getDContent()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->shareDContent1:Ljava/lang/String;

    .line 370
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;->getNickName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->shareName02:Ljava/lang/String;

    .line 372
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->shareDContent1:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3200(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->shareName02:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;->getThumbUrl()Ljava/lang/String;

    move-result-object p2

    .line 376
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 378
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 379
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object p2, p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 380
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3300(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object v2

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 379
    invoke-virtual {v0, p2, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 381
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3300(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/view/GridImageView;->setVisibility(I)V

    goto :goto_0

    .line 383
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3300(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/view/GridImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private deleteDynamic(Ljava/lang/String;I)V
    .locals 5

    .line 1010
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 1011
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v4, ""

    .line 1012
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deleteDynamic"

    .line 1011
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/kugoo/kugookirin/utils/NetLink;->postDeleteDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 1014
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$34;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$34;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;I)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initLooperData()V
    .locals 5

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->pagerItems:Ljava/util/List;

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->carouselUrls:Ljava/util/ArrayList;

    .line 488
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->CAROUSEL_FOR_YOU:Ljava/lang/String;

    invoke-static {v0}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->carouselUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 491
    new-instance v2, Lcom/kugoo/kugookirin/bean/PagerItem;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7b2c"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->carouselUrls:Ljava/util/ArrayList;

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

    .line 492
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->pagerItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    :cond_0
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    const-string v1, "getCarousel"

    const-string v2, "1"

    .line 497
    invoke-interface {v0, v1, v2}, Lcom/kugoo/kugookirin/utils/NetLink;->getCarousel(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 498
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 499
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$13;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V

    .line 500
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private loginDialog()V
    .locals 3

    .line 438
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00c3

    .line 439
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 440
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 441
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0a0348

    .line 442
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$10;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$10;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0349

    .line 448
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$11;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$11;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private postDynamicData(Ljava/lang/String;I)V
    .locals 8

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dynamic/dynamic.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 956
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 958
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "did"

    .line 959
    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string v0, "fabulousDynamics"

    .line 960
    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 961
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$33;

    const/4 v3, 0x1

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$31;

    invoke-direct {v5, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$31;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;I)V

    new-instance v6, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$32;

    invoke-direct {v6, p0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$32;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$33;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 986
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 908
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 909
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 910
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "toid"

    .line 911
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sort"

    .line 912
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "userReport"

    .line 913
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 914
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$30;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$28;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$28;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$29;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$29;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$30;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 945
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private setLabelStr(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;)V
    .locals 5

    .line 530
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getLabelStr()Ljava/util/ArrayList;

    move-result-object p2

    .line 531
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 533
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-nez v2, :cond_0

    const-string v3, "# "

    .line 535
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "  # "

    .line 537
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 543
    :cond_2
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private showBlockPostDialog(Ljava/lang/String;I)V
    .locals 3

    .line 752
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0076

    .line 753
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0a009c

    .line 755
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$23;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$23;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a009a

    .line 763
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$24;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$24;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 770
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 771
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 772
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDeleteDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 648
    new-instance v6, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f13046d

    invoke-direct {v6, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0d007d

    .line 649
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 651
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x51

    .line 653
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 654
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 655
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 656
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x7f0a01cc

    .line 665
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$15;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$15;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01cb

    .line 676
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$16;

    invoke-direct {p2, p0, v6}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$16;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 683
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 684
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showTipOffsDialog(Ljava/lang/String;I)V
    .locals 4

    .line 689
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0083

    .line 690
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 692
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 693
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x51

    .line 694
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 695
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 696
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 697
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f0a0494

    .line 699
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$17;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$17;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05d5

    .line 707
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$18;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$18;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05e0

    .line 715
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$19;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$19;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05d4

    .line 723
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$20;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$20;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a009b

    .line 731
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$21;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$21;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/app/Dialog;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a05c8

    .line 739
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$22;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$22;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 746
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 747
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 748
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startDynDetailActivity(ILjava/lang/String;)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "formerDynamic"

    .line 411
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 413
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;

    .line 414
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;->getId()Ljava/lang/String;

    move-result-object p2

    .line 415
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;->getUid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 418
    :cond_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;

    .line 419
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getId()Ljava/lang/String;

    move-result-object p2

    .line 420
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getUid()Ljava/lang/String;

    move-result-object p1

    .line 423
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dynamicID"

    .line 424
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dynamicUID"

    .line 425
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fragmentType"

    .line 426
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->FOR_YOU_FRAGMENT:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "forYouBundler"

    .line 429
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 431
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 433
    :cond_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->loginDialog()V

    :goto_1
    return-void
.end method

.method private startDynDetailActivity02(ILjava/lang/String;)V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "formerDynamic"

    .line 620
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 621
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;

    .line 623
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;->getId()Ljava/lang/String;

    move-result-object p2

    .line 624
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;->getUid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 626
    :cond_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;

    .line 627
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getId()Ljava/lang/String;

    move-result-object p2

    .line 628
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getUid()Ljava/lang/String;

    move-result-object p1

    .line 631
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 632
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dynamicID"

    .line 633
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dynamicUID"

    .line 634
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fragmentType"

    const-string p2, "forYouFragment"

    .line 635
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "forYouBundler"

    .line 637
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 639
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 641
    :cond_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->loginDialog()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x3f2

    return p1

    :cond_0
    const/16 p1, 0x3f3

    return p1
.end method

.method protected imageBrowser(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 608
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/kugoo/kugookirin/social/ImagePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "image_urls"

    .line 610
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "image_index"

    .line 611
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 117
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->getItemViewType(I)I

    move-result v2

    const/16 v3, 0x3f2

    if-ne v2, v3, :cond_0

    .line 119
    move-object/from16 v1, p1

    check-cast v1, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;

    .line 120
    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;)Lcom/kugoo/kugookirin/view/SobLooperPager;

    move-result-object v2

    iget-object v3, v0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mInnerAdapter:Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$1;

    invoke-direct {v4, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V

    invoke-virtual {v2, v3, v4}, Lcom/kugoo/kugookirin/view/SobLooperPager;->setData(Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;Lcom/kugoo/kugookirin/view/SobLooperPager$BindTitleListener;)V

    .line 127
    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;)Lcom/kugoo/kugookirin/view/SobLooperPager;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 128
    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;)Lcom/kugoo/kugookirin/view/SobLooperPager;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$2;

    invoke-direct {v2, v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$2;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/SobLooperPager;->setOnItemClickListener(Lcom/kugoo/kugookirin/view/SobLooperPager$OnItemClickListener;)V

    goto/16 :goto_7

    :cond_0
    const/16 v3, 0x3f3

    if-ne v2, v3, :cond_a

    .line 136
    move-object/from16 v2, p1

    check-cast v2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;

    add-int/lit8 v3, v1, -0x1

    .line 138
    iget-object v4, v0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;

    .line 139
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getNickName()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getdContent()Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getReleaseTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 142
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getLabelStr()Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getPictureUrl()Ljava/util/ArrayList;

    move-result-object v9

    .line 144
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getPictureUrlThumbnail()Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getVideoUrl()Ljava/lang/String;

    .line 146
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getSharestatus()Ljava/lang/String;

    move-result-object v10

    .line 147
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getComment()Ljava/lang/String;

    move-result-object v11

    .line 148
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getFabulous()Ljava/lang/String;

    move-result-object v12

    .line 149
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getLocation()Ljava/lang/String;

    move-result-object v13

    .line 150
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getUid()Ljava/lang/String;

    move-result-object v14

    .line 152
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v15

    move-object/from16 p1, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getPortraitUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v14

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 152
    invoke-virtual {v15, v3, v14, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 154
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, v0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v8, v3}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->getTimeGap(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " \u00b7"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_0
    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getFlagUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    const/16 v5, 0x8

    if-eqz v1, :cond_2

    .line 162
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/kugoo/kugookirin/utils/Constants;->FLAG_PIC_URL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getFlagUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$600(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getCountryFlagImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v14

    .line 162
    invoke-virtual {v1, v7, v8, v14}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 164
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$600(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 166
    :cond_2
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$600(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$700(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 171
    :cond_3
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$700(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$700(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_2
    invoke-direct {v0, v2, v4}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->dealLabelStr(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;)V

    const-string v1, "no"

    .line 175
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 176
    :cond_4
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$800(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 179
    :cond_5
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$900(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getIfShare()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Y"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 180
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getShareTimes()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1100(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 182
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1200(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getCommentNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1300(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 184
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1400(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getFabulousNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    goto :goto_3

    .line 188
    :cond_6
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$800(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    .line 186
    :cond_7
    :goto_3
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$800(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 192
    :goto_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 193
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 196
    :cond_8
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :goto_5
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 201
    invoke-direct {v0, v2, v4}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->dealSharePublish(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;)V

    goto :goto_6

    .line 204
    :cond_9
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1600(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move/from16 v1, p2

    .line 205
    invoke-direct {v0, v2, v4, v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->dealGridView(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;I)V

    .line 209
    :goto_6
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1800(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v3, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$3;

    move/from16 v5, v16

    invoke-direct {v3, v0, v5}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$3;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$2300(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$4;

    invoke-direct {v3, v0, v5}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$4;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$2400(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$5;

    invoke-direct {v3, v0, v5}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$5;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$2600(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$6;

    invoke-direct {v3, v0, v4}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$6;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v1

    new-instance v3, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$7;

    invoke-direct {v3, v0, v5}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$7;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;I)V

    invoke-virtual {v1, v3}, Lcom/kugoo/kugookirin/view/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$1600(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v3, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$8;

    invoke-direct {v3, v0, v5}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$8;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;->access$2900(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$9;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$9;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Ljava/lang/String;Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/16 v0, 0x3f2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 107
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00bf

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 108
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$HeaderHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/view/View;)V

    return-object p2

    .line 110
    :cond_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0099

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$ForYouViewHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;Landroid/view/View;)V

    return-object p2
.end method
