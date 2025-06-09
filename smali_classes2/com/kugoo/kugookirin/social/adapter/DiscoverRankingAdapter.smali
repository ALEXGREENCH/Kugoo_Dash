.class public Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DiscoverRankingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;",
        ">;"
    }
.end annotation


# instance fields
.field private final isLogin:Z

.field private mContext:Landroid/content/Context;

.field private mListData:Ljava/util/ArrayList;

.field private final preferences:Landroid/content/SharedPreferences;

.field private final rankingType:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private final typeface:Landroid/graphics/Typeface;

.field private final userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mListData:Ljava/util/ArrayList;

    .line 59
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->rankingType:Ljava/lang/String;

    .line 61
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->preferences:Landroid/content/SharedPreferences;

    .line 62
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->userID:Ljava/lang/String;

    .line 63
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->token:Ljava/lang/String;

    .line 64
    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->isLogin:Z

    .line 65
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "fonts/Antonio-Bold-unhinted.ttf"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Landroid/content/SharedPreferences;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;Ljava/lang/String;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->followUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->loginDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->rankingType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mListData:Ljava/util/ArrayList;

    return-object p0
.end method

.method private followUser(Ljava/lang/String;I)V
    .locals 7

    .line 244
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 245
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fid"

    .line 246
    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "method"

    const-string v0, "followUser"

    .line 247
    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key"

    .line 248
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$9;

    const/4 v2, 0x1

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->DYNAMIC_URL:Ljava/lang/String;

    new-instance v4, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;

    invoke-direct {v4, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$7;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;I)V

    new-instance v5, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$8;

    invoke-direct {v5, p0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$8;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$9;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 289
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->getVolleySingleton(Landroid/content/Context;)Lcom/kugoo/kugookirin/utils/VolleySingleton;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kugoo/kugookirin/utils/VolleySingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method private loginDialog()V
    .locals 3

    .line 77
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f13046d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d00c3

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 80
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const v1, 0x7f0a0348

    .line 81
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0349

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$2;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 45
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;I)V
    .locals 11

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->rankingType:Ljava/lang/String;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_RAKING_ODO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f06020f

    const v2, 0x7f12010a

    const v3, 0x7f0602f2

    const v4, 0x7f1203a3

    const-string v5, "N"

    const v6, 0x7f12009c

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;

    .line 105
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;->getPortraitUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemPortrait:Lcom/kugoo/kugookirin/view/CircleImageView;

    .line 106
    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v10

    .line 105
    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 107
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/kugoo/kugookirin/utils/Constants;->FLAG_PIC_URL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;->getFlagUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemCountryFlag:Landroid/widget/ImageView;

    .line 108
    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getCountryFlagImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v10

    .line 107
    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 109
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemTop:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemRank:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemData:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemUnit:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;->getNickName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    iget-object v6, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemCountry:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemCountry:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 119
    :goto_0
    iget-object v6, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemRank:Landroid/widget/TextView;

    add-int/lit8 v7, p2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v6, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemData:Landroid/widget/TextView;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;->getTol()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "%.2f"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v6, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemUnit:Landroid/widget/TextView;

    const v7, 0x7f1203a5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 122
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;->getFollow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    iget-object v3, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemFollowBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v2, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemFollowBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object v1, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemFollowBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object v1, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemFollowBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    :goto_1
    iget-object v1, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemFollowBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$3;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p1, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItem:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$4;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$4;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$OdoRankingBean;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->rankingType:Ljava/lang/String;

    sget-object v7, Lcom/kugoo/kugookirin/utils/Constants;->DISCOVER_RAKING_SOCIAL:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;

    .line 158
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->getPortraitUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemPortrait:Lcom/kugoo/kugookirin/view/CircleImageView;

    .line 159
    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v10

    .line 158
    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 160
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/kugoo/kugookirin/utils/Constants;->FLAG_PIC_URL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->getFlagUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemCountryFlag:Landroid/widget/ImageView;

    .line 161
    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getCountryFlagImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v10

    .line 160
    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 162
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemTop:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemRank:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemData:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemUnit:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 166
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->getNickName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/kugoo/kugookirin/utils/toolUtil;->strIsNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 168
    iget-object v6, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemCountry:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 170
    :cond_3
    iget-object v7, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemCountry:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 172
    :goto_2
    iget-object v6, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemRank:Landroid/widget/TextView;

    add-int/lit8 v7, p2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v6, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemData:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->getFollowers()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v6, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemUnit:Landroid/widget/TextView;

    const v7, 0x7f12010b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 175
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;->getFollow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    iget-object v3, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemFollowBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v2, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemFollowBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 179
    :cond_4
    iget-object v1, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemFollowBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 180
    iget-object v1, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemFollowBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    :goto_3
    iget-object v1, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItemFollowBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$5;

    invoke-direct {v2, p0, v0, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$5;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p1, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;->rankingItem:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$6;

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$6;-><init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$SocialRankingBean;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;
    .locals 2

    .line 72
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d008d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;

    invoke-direct {p2, p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverRankingAdapter$DiscoverRankingViewHodler;-><init>(Landroid/view/View;)V

    return-object p2
.end method
