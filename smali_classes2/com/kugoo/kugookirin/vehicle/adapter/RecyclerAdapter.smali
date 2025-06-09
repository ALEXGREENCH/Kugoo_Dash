.class public Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;,
        Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$OnItemClickListener;
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

.field public mOnItemClickListener:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$OnItemClickListener<",
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

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->mData:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->mContext:Landroid/content/Context;

    .line 35
    check-cast p2, Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->swipeMenuBuilder:Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->mData:Ljava/util/List;

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

    .line 74
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 51
    check-cast p1, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;

    .line 52
    iget-object v0, p1, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;->nfcCardId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;->getProof()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p1, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;->nfcCardId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    iget-object p1, p1, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;->nfcCardId:Landroid/widget/TextView;

    new-instance p2, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$1;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$1;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->swipeMenuBuilder:Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;

    invoke-interface {v0}, Lcom/kugoo/kugookirin/utils/SwipeMenuBuilder;->create()Lcom/kugoo/kugookirin/view/SwipeMenuView;

    move-result-object v0

    .line 43
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const v3, 0x7f0d010a

    invoke-static {p1, v3, v0, v1, v2}, Lcom/kugoo/kugookirin/utils/SwapWrapperUtils;->wrap(Landroid/view/ViewGroup;ILcom/kugoo/kugookirin/view/SwipeMenuView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)Lcom/kugoo/kugookirin/view/SwipeMenuLayout;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;Landroid/view/View;)V

    .line 45
    invoke-virtual {p0, p1, v1, p2}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->setListener(Landroid/view/ViewGroup;Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;I)V

    return-object v1
.end method

.method public remove(I)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method protected setListener(Landroid/view/ViewGroup;Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter<",
            "TT;>.MyViewHolder;I)V"
        }
    .end annotation

    .line 78
    iget-object p1, p2, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$2;

    invoke-direct {p3, p0, p2}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$2;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p2, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$3;

    invoke-direct {p3, p0, p2}, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$3;-><init>(Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$MyViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$OnItemClickListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter;->mOnItemClickListener:Lcom/kugoo/kugookirin/vehicle/adapter/RecyclerAdapter$OnItemClickListener;

    return-void
.end method
