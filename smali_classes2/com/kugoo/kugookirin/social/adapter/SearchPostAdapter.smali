.class public Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchPostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickPos:I

.field private mContext:Landroid/content/Context;

.field private orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

.field private postList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;",
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    .line 73
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->shareDContent1:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->shareName02:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->postList:Ljava/util/List;

    .line 80
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->preferences:Landroid/content/SharedPreferences;

    .line 81
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->userID:Ljava/lang/String;

    .line 82
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->token:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1500(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;ILjava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->startDynDetailActivity(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;)Landroid/content/SharedPreferences;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->loginDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->postList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->postDynamicData(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->userID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->showTipOffsDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->deleteDynamic(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->dealFabulousDynamics(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-void
.end method

.method private dealFabulousDynamics(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->postList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;

    const-string v1, "fabulousNum"

    .line 758
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 759
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->setFabulousNum(Ljava/lang/String;)V

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fabulousNum=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "serchPost"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "0"

    .line 761
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

    .line 763
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "N"

    .line 764
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->setFabulous(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Y"

    .line 762
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->setFabulous(Ljava/lang/String;)V

    .line 766
    :cond_2
    :goto_1
    invoke-virtual {p0, p3}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method private dealGridView(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;I)V
    .locals 4

    .line 417
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getPictureUrl()Ljava/util/ArrayList;

    move-result-object v0

    .line 418
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getPictureUrlThumbnail()Ljava/util/ArrayList;

    move-result-object p2

    .line 420
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 421
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 422
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    goto :goto_0

    .line 424
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    .line 426
    :goto_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 427
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    goto :goto_1

    .line 439
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    .line 443
    :goto_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$12;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$12;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private dealLabelStr(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;)V
    .locals 5

    .line 373
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getLabelStr()Ljava/util/ArrayList;

    move-result-object p2

    .line 374
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 376
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-nez v2, :cond_0

    const-string v3, "# "

    .line 378
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "  # "

    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 386
    :cond_2
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private dealSharePublish(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;)V
    .locals 4

    .line 393
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$1400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 394
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    .line 395
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    .line 396
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;->getDContent()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->shareDContent1:Ljava/lang/String;

    .line 397
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;->getNickName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->shareName02:Ljava/lang/String;

    .line 399
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3200(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->shareDContent1:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3300(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->shareName02:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;->getThumbUrl()Ljava/lang/String;

    move-result-object p2

    .line 403
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 405
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 406
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

    .line 407
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object v2

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 406
    invoke-virtual {v0, p2, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 408
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/view/GridImageView;->setVisibility(I)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/view/GridImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private deleteDynamic(Ljava/lang/String;I)V
    .locals 4

    .line 692
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 693
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->token:Ljava/lang/String;

    const-string v3, "deleteDynamic"

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/kugoo/kugookirin/utils/NetLink;->postDeleteDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 694
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$20;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$20;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;I)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private loginDialog()V
    .locals 3

    .line 537
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00c3

    .line 538
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 539
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 540
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0a0348

    .line 541
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$15;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$15;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0349

    .line 547
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$16;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$16;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private postDynamicData(Ljava/lang/String;I)V
    .locals 8

    .line 722
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

    .line 723
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 725
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->token:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "did"

    .line 726
    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string v0, "fabulousDynamics"

    .line 727
    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 728
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$23;

    const/4 v3, 0x1

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$21;

    invoke-direct {v5, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$21;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;I)V

    new-instance v6, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$22;

    invoke-direct {v6, p0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$22;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;)V

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$23;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 753
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 647
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 648
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->token:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 649
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "toid"

    .line 650
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sort"

    .line 651
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "userReport"

    .line 652
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 653
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$19;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$17;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$17;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$18;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$18;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$19;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 682
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private showDeleteDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 463
    new-instance v6, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f13046d

    invoke-direct {v6, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0d007d

    .line 464
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 466
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x51

    .line 468
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 469
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 470
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 471
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x7f0a01cc

    .line 480
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$13;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01cb

    .line 491
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$14;

    invoke-direct {p2, p0, v6}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$14;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 498
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 499
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showTipOffsDialog(Ljava/lang/String;)V
    .locals 4

    .line 324
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d007e

    .line 325
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 327
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x51

    .line 329
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 330
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 331
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 332
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f0a05d5

    .line 334
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$8;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05e0

    .line 342
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$9;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05d4

    .line 350
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$10;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a05c8

    .line 358
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$11;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$11;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 365
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 367
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startDynDetailActivity(ILjava/lang/String;)V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "formerDynamic"

    .line 506
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 508
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->postList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;

    .line 509
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;->getId()Ljava/lang/String;

    move-result-object p2

    .line 510
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;->getUid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 513
    :cond_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->postList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;

    .line 514
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getId()Ljava/lang/String;

    move-result-object p2

    .line 515
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getUid()Ljava/lang/String;

    move-result-object p1

    .line 518
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dynamicID"

    .line 519
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dynamicUID"

    .line 520
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "infoBundler"

    .line 528
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 530
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 532
    :cond_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->loginDialog()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->postList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    .line 454
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/kugoo/kugookirin/social/ImagePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "image_urls"

    .line 456
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "image_index"

    .line 457
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 64
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 94
    iget-object v3, v0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->postList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;

    .line 95
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getdContent()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getReleaseTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 98
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getLabelStr()Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getPictureUrl()Ljava/util/ArrayList;

    move-result-object v8

    .line 100
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getPictureUrlThumbnail()Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getVideoUrl()Ljava/lang/String;

    .line 102
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getSharestatus()Ljava/lang/String;

    move-result-object v9

    .line 103
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getComment()Ljava/lang/String;

    move-result-object v10

    .line 104
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getFabulous()Ljava/lang/String;

    move-result-object v11

    .line 105
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getLocation()Ljava/lang/String;

    move-result-object v12

    .line 106
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getUid()Ljava/lang/String;

    move-result-object v13

    .line 108
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v13

    sget-object v13, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getPortraitUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 109
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$000(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v15

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 108
    invoke-virtual {v14, v13, v15, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v4}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->getTimeGap(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getCountry()Ljava/lang/String;

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

    .line 116
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getFlagUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const/16 v6, 0x8

    if-eqz v2, :cond_1

    .line 120
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/kugoo/kugookirin/utils/Constants;->FLAG_PIC_URL:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getFlagUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 121
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v14

    .line 120
    invoke-virtual {v2, v7, v13, v14}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 122
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 124
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$500(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 130
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$500(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$500(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_2
    invoke-direct {v0, v1, v3}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->dealLabelStr(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;)V

    const-string v2, "no"

    .line 134
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 135
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$600(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 138
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$700(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getIfShare()Ljava/lang/String;

    move-result-object v7

    const-string v13, "Y"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$800(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getShareTimes()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$900(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 141
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$1000(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getCommentNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$1100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 143
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$1200(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getFabulousNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    goto :goto_3

    .line 147
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$600(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    .line 145
    :cond_6
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$600(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 151
    :goto_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 152
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$1300(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$1300(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 155
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$1300(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :goto_5
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 160
    invoke-direct {v0, v1, v3}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->dealSharePublish(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;)V

    move/from16 v2, p2

    goto :goto_6

    .line 163
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$1400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move/from16 v2, p2

    .line 164
    invoke-direct {v0, v1, v3, v2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->dealGridView(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;I)V

    .line 168
    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$1600(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$1;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$2100(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$2;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$2;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$2200(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$3;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$3;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$2400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$4;

    invoke-direct {v5, v0, v3}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$4;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$000(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$5;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$5;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;I)V

    invoke-virtual {v4, v5}, Lcom/kugoo/kugookirin/view/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$1400(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$6;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$6;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;->access$2800(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$7;

    move-object/from16 v5, v16

    invoke-direct {v4, v0, v5, v3, v2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$7;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;
    .locals 2

    .line 87
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d005b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Landroid/view/View;)V

    return-object p2
.end method
