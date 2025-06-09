.class public Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomePageInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;->mDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;I)V
    .locals 7

    .line 41
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;

    .line 43
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getModel()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getBluetooth()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getMileage()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getTimelog()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;->getTime()Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->access$000(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_0

    move-object v0, v6

    :cond_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v6

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, v6

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0xe10

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 56
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1203a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120346

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    :goto_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;->access$500(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lcom/kugoo/kugookirin/utils/ChangeToHour;->changeTimeToDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;
    .locals 2

    .line 35
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b5

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter$InfoHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/HomePageInfoAdapter;Landroid/view/View;)V

    return-object p2
.end method
