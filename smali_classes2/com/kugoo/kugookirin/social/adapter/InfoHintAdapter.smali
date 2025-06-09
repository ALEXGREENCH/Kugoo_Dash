.class public Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "InfoHintAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;,
        Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;",
            ">;"
        }
    .end annotation
.end field

.field private mDealListener:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->mDataList:Ljava/util/ArrayList;

    .line 33
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;)Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->mDealListener:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->mDataList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;I)V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;

    .line 48
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;->getPortraitUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->access$000(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v3

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 48
    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 50
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "comment"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120179

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const-string v1, "fabulous"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12017b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const-string v1, "share"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12017d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const-string v1, "follow"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12017a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const-string v1, "all"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120178

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    const-string v1, "remind"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12017c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->access$500(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$2;-><init>(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;->access$700(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;)Lcom/kugoo/kugookirin/view/NotificationMenuView;

    move-result-object p1

    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$3;-><init>(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;I)V

    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/view/NotificationMenuView;->setOnEditClickListener(Lcom/kugoo/kugookirin/view/NotificationMenuView$OnEditClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;
    .locals 2

    .line 38
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00ab

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$hintHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnDealItemListener(Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter;->mDealListener:Lcom/kugoo/kugookirin/social/adapter/InfoHintAdapter$onDealItemListener;

    return-void
.end method
