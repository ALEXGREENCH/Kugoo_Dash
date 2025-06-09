.class public Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AreaCodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;,
        Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private areaCodeItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;",
            ">;"
        }
    .end annotation
.end field

.field private areaItemClickListener:Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;",
            ">;",
            "Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->areaCodeItemList:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->areaItemClickListener:Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;)Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->areaItemClickListener:Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$OnAreaItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->areaCodeItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 42
    check-cast p1, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;

    .line 45
    iget-object v0, p1, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;->areaFlag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->areaCodeItemList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->getFlagImgId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    iget-object v0, p1, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;->areaName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->areaCodeItemList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->getAreaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p1, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;->areaCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->areaCodeItemList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/user/bean/AreaCodeItem;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p1, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;->areaItem:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$1;-><init>(Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 36
    iget-object p2, p0, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0055

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    new-instance p2, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter$AreaCodeViewHolder;-><init>(Lcom/kugoo/kugookirin/user/adapter/AreaCodeAdapter;Landroid/view/View;)V

    return-object p2
.end method
