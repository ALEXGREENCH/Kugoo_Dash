.class public Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MonthRankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMonthInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;->mMonthInfoList:Ljava/util/ArrayList;

    .line 27
    iput-object p2, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;->mMonthInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;I)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;->mMonthInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;

    .line 39
    invoke-static {p1}, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->access$000(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    if-le p2, v1, :cond_0

    .line 43
    invoke-static {p1}, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->access$000(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0600b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->access$100(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {p1}, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->access$200(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;->getTol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/RankInfo$ResultList;->getPortraitUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {p1}, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;->access$300(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object p1

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 49
    invoke-virtual {p2, v0, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;
    .locals 2

    .line 32
    iget-object p2, p0, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00c1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter$monthViewHolder;-><init>(Lcom/kugoo/kugookirin/more/adapter/MonthRankAdapter;Landroid/view/View;)V

    return-object p2
.end method
