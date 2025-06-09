.class public Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;,
        Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mOnItemClickListener:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$OnItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private swipeMenuBuilder:Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->mData:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->mContext:Landroid/content/Context;

    .line 45
    check-cast p2, Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->swipeMenuBuilder:Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 61
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;

    .line 62
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;

    .line 65
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

    iget-object v3, p1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->msgItemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    .line 66
    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 65
    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 68
    iget-object v1, p1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->msgItemName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "comment"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v0, p1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->msgItemInfo:Landroid/widget/TextView;

    const v1, 0x7f120179

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const-string v1, "fabulous"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v0, p1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->msgItemInfo:Landroid/widget/TextView;

    const v1, 0x7f12017b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const-string v1, "share"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v0, p1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->msgItemInfo:Landroid/widget/TextView;

    const v1, 0x7f12017d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const-string v1, "follow"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    iget-object v0, p1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->msgItemInfo:Landroid/widget/TextView;

    const v1, 0x7f12017a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const-string v1, "all"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget-object v0, p1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->msgItemInfo:Landroid/widget/TextView;

    const v1, 0x7f120178

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    const-string v1, "remind"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->msgItemInfo:Landroid/widget/TextView;

    const v1, 0x7f12017c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    :cond_5
    :goto_0
    iget-object p1, p1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->messageItem:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->swipeMenuBuilder:Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;

    invoke-interface {v0}, Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;->create()Lcom/kugoo/kugookirin/view/SwipeMenuView;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const v3, 0x7f0d00e5

    invoke-static {p1, v3, v0, v1, v2}, Lcom/kugoo/kugookirin/utils/SwapWrapperUtils;->wrap(Landroid/view/ViewGroup;ILcom/kugoo/kugookirin/view/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;Landroid/view/View;)V

    .line 55
    invoke-virtual {p0, p1, v1, p2}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->setListener(Landroid/view/ViewGroup;Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;I)V

    return-object v1
.end method

.method public remove(I)V
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method protected setListener(Landroid/view/ViewGroup;Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/kugoo/kugookirin/social/adapter/MessageAdapter<",
            "TT;>.MsgViewHolder;I)V"
        }
    .end annotation

    .line 125
    iget-object p1, p2, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$2;

    invoke-direct {p3, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$2;-><init>(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object p1, p2, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$3;

    invoke-direct {p3, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$3;-><init>(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$MsgViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$OnItemClickListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/MessageAdapter;->mOnItemClickListener:Lcom/kugoo/kugookirin/social/adapter/MessageAdapter$OnItemClickListener;

    return-void
.end method
