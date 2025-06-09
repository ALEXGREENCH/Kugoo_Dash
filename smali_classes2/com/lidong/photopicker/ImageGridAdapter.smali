.class public Lcom/lidong/photopicker/ImageGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;
    }
.end annotation


# static fields
.field private static final TYPE_CAMERA:I = 0x0

.field private static final TYPE_NORMAL:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lidong/photopicker/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

.field private mItemSize:I

.field private mSelectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lidong/photopicker/Image;",
            ">;"
        }
    .end annotation
.end field

.field private showCamera:Z

.field private showSelectIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->showCamera:Z

    .line 29
    iput-boolean v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->showSelectIndicator:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mImages:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-boolean p2, p0, Lcom/lidong/photopicker/ImageGridAdapter;->showCamera:Z

    .line 41
    iput p3, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mItemSize:I

    .line 42
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget p2, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mItemSize:I

    invoke-direct {p1, p2, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcom/lidong/photopicker/ImageGridAdapter;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->showSelectIndicator:Z

    return p0
.end method

.method static synthetic access$100(Lcom/lidong/photopicker/ImageGridAdapter;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lidong/photopicker/ImageGridAdapter;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mItemSize:I

    return p0
.end method

.method static synthetic access$300(Lcom/lidong/photopicker/ImageGridAdapter;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getImageByPath(Ljava/lang/String;)Lcom/lidong/photopicker/Image;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mImages:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidong/photopicker/Image;

    .line 95
    iget-object v2, v1, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->showCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/lidong/photopicker/Image;
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->showCamera:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mImages:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lidong/photopicker/Image;

    return-object p1

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lidong/photopicker/Image;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/lidong/photopicker/ImageGridAdapter;->getItem(I)Lcom/lidong/photopicker/Image;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->showCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 173
    invoke-virtual {p0, p1}, Lcom/lidong/photopicker/ImageGridAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    iget-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/lidong/photopicker/R$layout;->item_camera:I

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    if-nez p2, :cond_1

    .line 180
    iget-object p2, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/lidong/photopicker/R$layout;->item_select_image:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 181
    new-instance p3, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;

    invoke-direct {p3, p0, p2}, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;-><init>(Lcom/lidong/photopicker/ImageGridAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;

    if-nez v0, :cond_2

    .line 185
    iget-object p2, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/lidong/photopicker/R$layout;->item_select_image:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 186
    new-instance p3, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;

    invoke-direct {p3, p0, p2}, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;-><init>(Lcom/lidong/photopicker/ImageGridAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_3

    .line 190
    invoke-virtual {p0, p1}, Lcom/lidong/photopicker/ImageGridAdapter;->getItem(I)Lcom/lidong/photopicker/Image;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->bindData(Lcom/lidong/photopicker/Image;)V

    .line 195
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    .line 196
    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->height:I

    iget p3, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mItemSize:I

    if-eq p1, p3, :cond_4

    .line 197
    iget-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isShowCamera()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->showCamera:Z

    return v0
.end method

.method public select(Lcom/lidong/photopicker/Image;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/lidong/photopicker/ImageGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lidong/photopicker/Image;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iput-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mImages:Ljava/util/List;

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/lidong/photopicker/ImageGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDefaultSelected(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-direct {p0, v0}, Lcom/lidong/photopicker/ImageGridAdapter;->getImageByPath(Ljava/lang/String;)Lcom/lidong/photopicker/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mSelectedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/lidong/photopicker/ImageGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemSize(I)V
    .locals 1

    .line 124
    iget v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mItemSize:I

    if-ne v0, p1, :cond_0

    return-void

    .line 128
    :cond_0
    iput p1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mItemSize:I

    .line 130
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mItemSize:I

    invoke-direct {p1, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 132
    invoke-virtual {p0}, Lcom/lidong/photopicker/ImageGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setShowCamera(Z)V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/lidong/photopicker/ImageGridAdapter;->showCamera:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 56
    :cond_0
    iput-boolean p1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->showCamera:Z

    .line 57
    invoke-virtual {p0}, Lcom/lidong/photopicker/ImageGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showSelectIndicator(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/lidong/photopicker/ImageGridAdapter;->showSelectIndicator:Z

    return-void
.end method
