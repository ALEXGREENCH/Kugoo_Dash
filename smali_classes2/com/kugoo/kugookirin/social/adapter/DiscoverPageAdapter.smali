.class public Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DiscoverPageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final isLogin:Z

.field private mContext:Landroid/content/Context;

.field private orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

.field private pageType:Ljava/lang/String;

.field private postList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;",
            ">;"
        }
    .end annotation
.end field

.field private final preferences:Landroid/content/SharedPreferences;

.field private shareDContent1:Ljava/lang/String;

.field private shareName02:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private final userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->shareDContent1:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->shareName02:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->postList:Ljava/util/ArrayList;

    .line 83
    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->pageType:Ljava/lang/String;

    .line 84
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->preferences:Landroid/content/SharedPreferences;

    .line 85
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->userID:Ljava/lang/String;

    .line 86
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->token:Ljava/lang/String;

    .line 87
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->isLogin:Z

    return-void
.end method

.method static synthetic access$1500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->pageType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;ILjava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->startDynDetailActivity(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/SharedPreferences;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->loginDialog()V

    return-void
.end method

.method static synthetic access$2000(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->postList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->postDynamicData(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->userID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->showTipOffsDialog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->deleteDynamic(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->showBlockPostDialog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->blockPost(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->dealFabulousDynamics(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-void
.end method

.method private blockPost(Ljava/lang/String;I)V
    .locals 7

    .line 458
    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    .line 459
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "method"

    const-string v1, "shield_dynamic"

    .line 460
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "token"

    .line 461
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->token:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uid"

    .line 462
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->userID:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "shield_one"

    .line 463
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shield_id"

    .line 464
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 465
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$20;

    const/4 v2, 0x1

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;

    invoke-direct {v4, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$18;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$19;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$19;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$20;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 495
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

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

    .line 618
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;

    const-string v1, "fabulousNum"

    .line 619
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 620
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->setFabulousNum(Ljava/lang/String;)V

    const-string p1, "0"

    .line 621
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

    .line 623
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "N"

    .line 624
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->setFabulous(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Y"

    .line 622
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->setFabulous(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const p1, 0x7f0a010f

    .line 627
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private dealGridView(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;I)V
    .locals 4

    .line 677
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getPictureUrl()Ljava/util/ArrayList;

    move-result-object v0

    .line 678
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getPictureUrlThumbnail()Ljava/util/ArrayList;

    move-result-object p2

    .line 680
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 681
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 682
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    goto :goto_1

    .line 683
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

    .line 686
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    goto :goto_1

    .line 684
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    .line 688
    :goto_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 689
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    .line 703
    :cond_3
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    .line 707
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$28;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$28;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private dealLabelStr(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;)V
    .locals 5

    .line 633
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getLabelStr()Ljava/util/ArrayList;

    move-result-object p2

    .line 634
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 636
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-nez v2, :cond_0

    const-string v3, "# "

    .line 638
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "  # "

    .line 640
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 643
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 646
    :cond_2
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private dealSharePublish(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;)V
    .locals 4

    .line 653
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$1400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 654
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    .line 655
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    .line 656
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;->getDContent()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->shareDContent1:Ljava/lang/String;

    .line 657
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;->getNickName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->shareName02:Ljava/lang/String;

    .line 659
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3700(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->shareDContent1:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3800(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->shareName02:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;->getThumbUrl()Ljava/lang/String;

    move-result-object p2

    .line 663
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 665
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 666
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

    .line 667
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3900(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object v2

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 666
    invoke-virtual {v0, p2, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 668
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3900(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/view/GridImageView;->setVisibility(I)V

    goto :goto_0

    .line 670
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$3900(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/view/GridImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private deleteDynamic(Ljava/lang/String;I)V
    .locals 4

    .line 593
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 594
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->token:Ljava/lang/String;

    const-string v3, "deleteDynamic"

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/kugoo/kugookirin/utils/NetLink;->postDeleteDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 595
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$27;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$27;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private loginDialog()V
    .locals 3

    .line 760
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00c3

    .line 761
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 762
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 763
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0a0348

    .line 764
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$29;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$29;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0349

    .line 770
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$30;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$30;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private postDynamicData(Ljava/lang/String;I)V
    .locals 8

    .line 505
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

    .line 506
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 508
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->token:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "did"

    .line 509
    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string v0, "fabulousDynamics"

    .line 510
    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 511
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$23;

    const/4 v3, 0x1

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$21;

    invoke-direct {v5, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$21;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V

    new-instance v6, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$22;

    invoke-direct {v6, p0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$22;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)V

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$23;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 536
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 547
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 548
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->token:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 549
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "toid"

    .line 550
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sort"

    .line 551
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "userReport"

    .line 552
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 553
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$26;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$24;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$24;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$25;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$25;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$26;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 583
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private showBlockPostDialog(Ljava/lang/String;I)V
    .locals 3

    .line 434
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0076

    .line 435
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0a009c

    .line 437
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$16;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$16;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a009a

    .line 445
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$17;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$17;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 452
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 453
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 454
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDeleteDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 330
    new-instance v6, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f13046d

    invoke-direct {v6, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0d007d

    .line 331
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 333
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x51

    .line 335
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 336
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 337
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 338
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x7f0a01cc

    .line 347
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$8;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$8;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01cb

    .line 358
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$9;

    invoke-direct {p2, p0, v6}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$9;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 365
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 366
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showTipOffsDialog(Ljava/lang/String;I)V
    .locals 4

    .line 371
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0083

    .line 372
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 374
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 375
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x51

    .line 376
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 377
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 378
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 379
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f0a0494

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$10;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$10;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05d5

    .line 389
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$11;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05e0

    .line 397
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$12;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05d4

    .line 405
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$13;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$13;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a009b

    .line 413
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$14;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$14;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Landroid/app/Dialog;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a05c8

    .line 421
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$15;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$15;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 428
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 429
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 430
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startDynDetailActivity(ILjava/lang/String;)V
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "formerDynamic"

    .line 729
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 731
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;

    .line 732
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;->getId()Ljava/lang/String;

    move-result-object p2

    .line 733
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;->getUid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 736
    :cond_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;

    .line 737
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getId()Ljava/lang/String;

    move-result-object p2

    .line 738
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getUid()Ljava/lang/String;

    move-result-object p1

    .line 741
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dynamicID"

    .line 742
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dynamicUID"

    .line 743
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->pageType:Ljava/lang/String;

    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_PAGE_RECOGNITION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "fragmentType"

    if-eqz p1, :cond_1

    .line 745
    sget-object p1, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_PAGE_RECOGNITION:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 746
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->pageType:Ljava/lang/String;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_PAGE_POPULAR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 747
    sget-object p1, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_PAGE_POPULAR:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_2
    :goto_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "discoveryPageBundler"

    .line 751
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 753
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 755
    :cond_3
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->loginDialog()V

    :goto_2
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
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

    .line 718
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/kugoo/kugookirin/social/ImagePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "image_urls"

    .line 720
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "image_index"

    .line 721
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 65
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 101
    iget-object v3, v0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;

    .line 102
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getdContent()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getReleaseTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 105
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getLabelStr()Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getPictureUrl()Ljava/util/ArrayList;

    move-result-object v8

    .line 107
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getPictureUrlThumbnail()Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getVideoUrl()Ljava/lang/String;

    .line 109
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getSharestatus()Ljava/lang/String;

    move-result-object v9

    .line 110
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getComment()Ljava/lang/String;

    move-result-object v10

    .line 111
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getFabulous()Ljava/lang/String;

    move-result-object v11

    .line 112
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getLocation()Ljava/lang/String;

    move-result-object v12

    .line 113
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getUid()Ljava/lang/String;

    move-result-object v13

    .line 115
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v13

    sget-object v13, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getPortraitUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$000(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v15

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 115
    invoke-virtual {v14, v13, v15, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v4}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->getTimeGap(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u00b7"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_0
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getFlagUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const/16 v6, 0x8

    if-eqz v2, :cond_1

    .line 126
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/kugoo/kugookirin/utils/Constants;->FLAG_PIC_URL:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getFlagUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v14

    .line 126
    invoke-virtual {v2, v7, v13, v14}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 128
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 130
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 136
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_2
    invoke-direct {v0, v1, v3}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->dealLabelStr(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;)V

    const-string v2, "no"

    .line 140
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 141
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$700(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getIfShare()Ljava/lang/String;

    move-result-object v7

    const-string v13, "Y"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 145
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$800(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getShareTimes()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$900(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 147
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$1000(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getCommentNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$1100(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 149
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$1200(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getFabulousNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    goto :goto_3

    .line 153
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    .line 151
    :cond_6
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 157
    :goto_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 158
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$1300(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$1300(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 161
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$1300(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :goto_5
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 166
    invoke-direct {v0, v1, v3}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->dealSharePublish(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;)V

    move/from16 v2, p2

    goto :goto_6

    .line 169
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$1400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move/from16 v2, p2

    .line 170
    invoke-direct {v0, v1, v3, v2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->dealGridView(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;I)V

    .line 174
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$1700(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$1;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$2200(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$2;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$2;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$2300(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$3;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$3;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$2500(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$4;

    invoke-direct {v5, v0, v3}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$4;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$000(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$5;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$5;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V

    invoke-virtual {v4, v5}, Lcom/kugoo/kugookirin/view/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$1400(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$6;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$6;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;->access$2900(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;

    move-object/from16 v5, v16

    invoke-direct {v4, v0, v5, v3, v2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;
    .locals 2

    .line 94
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d005b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;

    invoke-direct {p2, p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
