.class public Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomePagePostsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final isLogin:Z

.field private mContext:Landroid/content/Context;

.field private orgdynamics:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;

.field private postList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;",
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->shareDContent1:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->shareName02:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->postList:Ljava/util/ArrayList;

    .line 78
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->preferences:Landroid/content/SharedPreferences;

    .line 79
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->userID:Ljava/lang/String;

    .line 80
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->token:Ljava/lang/String;

    .line 81
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->isLogin:Z

    return-void
.end method

.method static synthetic access$1300(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;ILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->startDynDetailActivity(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Landroid/content/SharedPreferences;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->loginDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->postList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->postDynamicData(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->userID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->showTipOffsDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->deleteDynamic(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->dealFabulousDynamics(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-void
.end method

.method private dealFabulousDynamics(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;

    const-string v1, "fabulousNum"

    .line 526
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 527
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->setFabulousNum(Ljava/lang/String;)V

    const-string p1, "0"

    .line 528
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

    .line 530
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "N"

    .line 531
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->setFabulous(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Y"

    .line 529
    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->setFabulous(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const p1, 0x7f0a010f

    .line 534
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private dealGridView(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;I)V
    .locals 5

    .line 584
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getPictureUrl()Ljava/util/ArrayList;

    move-result-object v0

    .line 585
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getPictureUrlThumbnail()Ljava/util/ArrayList;

    move-result-object p2

    .line 587
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    if-lez v1, :cond_1

    .line 588
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    .line 589
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    goto :goto_0

    .line 591
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setNumColumns(I)V

    .line 593
    :goto_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v1

    new-instance v3, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;

    iget-object v4, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2, p3}, Lcom/kugoo/kugookirin/social/adapter/NoScrollGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, v3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 594
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    goto :goto_1

    .line 606
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    .line 609
    :goto_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3500(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$20;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$20;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private dealLabelStr(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;)V
    .locals 5

    .line 540
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getLabelStr()Ljava/util/ArrayList;

    move-result-object p2

    .line 541
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 543
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-nez v2, :cond_0

    const-string v3, "# "

    .line 545
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "  # "

    .line 547
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :cond_1
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 553
    :cond_2
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3000(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private dealSharePublish(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;)V
    .locals 4

    .line 560
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$1200(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 561
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/NoScrollGridView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/view/NoScrollGridView;->setVisibility(I)V

    .line 562
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;

    .line 563
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;->getDContent()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->shareDContent1:Ljava/lang/String;

    .line 564
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;->getNickName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->shareName02:Ljava/lang/String;

    .line 566
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3200(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->shareDContent1:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3300(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->shareName02:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;->getThumbUrl()Ljava/lang/String;

    move-result-object p2

    .line 570
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 572
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 573
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

    .line 574
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object v2

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 573
    invoke-virtual {v0, p2, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 575
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/view/GridImageView;->setVisibility(I)V

    goto :goto_0

    .line 577
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$3400(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/GridImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/kugoo/kugookirin/view/GridImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private deleteDynamic(Ljava/lang/String;I)V
    .locals 4

    .line 500
    invoke-static {}, Lcom/kugoo/kugookirin/utils/MyApplication;->getNetLink()Lcom/kugoo/kugookirin/utils/NetLink;

    move-result-object v0

    .line 501
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->token:Ljava/lang/String;

    const-string v3, "deleteDynamic"

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/kugoo/kugookirin/utils/NetLink;->postDeleteDynamic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 502
    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$19;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$19;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;I)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private loginDialog()V
    .locals 3

    .line 661
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00c3

    .line 662
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 663
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 664
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0a0348

    .line 665
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$21;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$21;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0349

    .line 671
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$22;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$22;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private postDynamicData(Ljava/lang/String;I)V
    .locals 8

    .line 412
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

    .line 413
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 415
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->token:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "did"

    .line 416
    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string v0, "fabulousDynamics"

    .line 417
    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 418
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$15;

    const/4 v3, 0x1

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$13;

    invoke-direct {v5, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$13;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;I)V

    new-instance v6, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$14;

    invoke-direct {v6, p0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$14;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)V

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$15;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 443
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private postTipOff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 454
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "token"

    .line 455
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->token:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 456
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "toid"

    .line 457
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sort"

    .line 458
    invoke-virtual {v6, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string p2, "userReport"

    .line 459
    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 460
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$18;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$16;

    invoke-direct {v4, p0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$16;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)V

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$17;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$17;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$18;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 490
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private showDeleteDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 318
    new-instance v6, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f13046d

    invoke-direct {v6, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0d007d

    .line 319
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 321
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x51

    .line 323
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 324
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 325
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v0, 0x7f0a01cc

    .line 335
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$7;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01cb

    .line 346
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$8;

    invoke-direct {p2, p0, v6}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$8;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 353
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 354
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showTipOffsDialog(Ljava/lang/String;)V
    .locals 4

    .line 359
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d007e

    .line 360
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 362
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x51

    .line 364
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 365
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 366
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 367
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f0a05d5

    .line 369
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$9;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05e0

    .line 377
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$10;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05d4

    .line 385
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$11;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a05c8

    .line 393
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$12;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$12;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 400
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 401
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 402
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startDynDetailActivity(ILjava/lang/String;)V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "formerDynamic"

    .line 633
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 635
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;

    .line 636
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;->getId()Ljava/lang/String;

    move-result-object p2

    .line 637
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;->getUid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 640
    :cond_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;

    .line 641
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getId()Ljava/lang/String;

    move-result-object p2

    .line 642
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getUid()Ljava/lang/String;

    move-result-object p1

    .line 645
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dynamicID"

    .line 646
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dynamicUID"

    .line 647
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fragmentType"

    .line 649
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->HOMEPAGE_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "homePageBundler"

    .line 652
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 654
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 656
    :cond_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->loginDialog()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->postList:Ljava/util/ArrayList;

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

    .line 622
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/kugoo/kugookirin/social/ImagePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "image_urls"

    .line 624
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "image_index"

    .line 625
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 61
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 95
    iget-object v3, v0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->postList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;

    .line 96
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getDContent()Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getReleaseTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 99
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getLabelStr()Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getPictureUrl()Ljava/util/ArrayList;

    move-result-object v8

    .line 101
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getPictureUrlThumbnail()Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getVideoUrl()Ljava/lang/String;

    .line 103
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getSharestatus()Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getComment()Ljava/lang/String;

    move-result-object v10

    .line 105
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getFabulous()Ljava/lang/String;

    move-result-object v11

    .line 106
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getLocation()Ljava/lang/String;

    move-result-object v12

    .line 107
    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getUid()Ljava/lang/String;

    move-result-object v13

    .line 109
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v13

    sget-object v13, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getPortraitUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$000(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v15

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 109
    invoke-virtual {v14, v13, v15, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 111
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, v0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v4}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->getTimeGap(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v4, 0x8

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 114
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    invoke-direct {v0, v1, v3}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->dealLabelStr(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;)V

    const-string v2, "no"

    .line 120
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 121
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 124
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$500(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getIfShare()Ljava/lang/String;

    move-result-object v7

    const-string v13, "Y"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 125
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$600(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getShareTimes()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$700(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 127
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$800(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getCommentNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$900(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 129
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$1000(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getFabulousNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_1

    .line 133
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 131
    :cond_4
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 137
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$1100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$1100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 141
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$1100(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_3
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 146
    invoke-direct {v0, v1, v3}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->dealSharePublish(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;)V

    move/from16 v2, p2

    goto :goto_4

    .line 149
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$1200(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move/from16 v2, p2

    .line 150
    invoke-direct {v0, v1, v3, v2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->dealGridView(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;I)V

    .line 154
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$1400(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$1;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$1900(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$2;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$2;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$2000(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$3;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$3;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$2200(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$4;

    invoke-direct {v5, v0, v3}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$4;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$1200(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$5;

    invoke-direct {v5, v0, v2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$5;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-static/range {p1 .. p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;->access$2600(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;

    move-object/from16 v5, v16

    invoke-direct {v4, v0, v5, v3, v2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;
    .locals 2

    .line 88
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0099

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 89
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;

    invoke-direct {p2, p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
