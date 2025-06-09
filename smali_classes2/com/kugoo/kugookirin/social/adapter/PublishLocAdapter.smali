.class public Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PublishLocAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$onSelectLocTxtListener;,
        Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;",
        ">;"
    }
.end annotation


# instance fields
.field private locationData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/PublishLocBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$onSelectLocTxtListener;

.field private mPos:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/PublishLocBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->mPos:I

    .line 28
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->locationData:Ljava/util/ArrayList;

    .line 29
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->mPos:I

    return p0
.end method

.method static synthetic access$302(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->mPos:I

    return p1
.end method

.method static synthetic access$400(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->locationData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;)Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$onSelectLocTxtListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->mListener:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$onSelectLocTxtListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->locationData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;I)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->locationData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/bean/PublishLocBean;

    .line 44
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->access$000(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->access$000(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 50
    :goto_0
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->access$100(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->getDetailLoc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->access$200(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/bean/PublishLocBean;->getRougeLoc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;->access$600(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;
    .locals 2

    .line 36
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$holder;-><init>(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnSelectLocTxtListener(Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$onSelectLocTxtListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter;->mListener:Lcom/kugoo/kugookirin/social/adapter/PublishLocAdapter$onSelectLocTxtListener;

    return-void
.end method
