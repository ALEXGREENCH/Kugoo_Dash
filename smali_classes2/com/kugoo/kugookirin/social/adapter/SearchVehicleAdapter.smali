.class public Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchVehicleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private searchResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;",
            ">;"
        }
    .end annotation
.end field

.field private final userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->searchResultList:Ljava/util/List;

    .line 32
    sget-object p1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object p2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->userID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->searchResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;I)V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->searchResultList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;

    .line 44
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->getPortraitUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;->itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    .line 45
    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 46
    iget-object v0, p1, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;->itemUserName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p1, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;->itemVehicleModel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p1, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;->itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;)V

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;
    .locals 2

    .line 37
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b9

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;Landroid/view/View;)V

    return-object p2
.end method
