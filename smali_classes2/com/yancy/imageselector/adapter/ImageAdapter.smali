.class public Lcom/yancy/imageselector/adapter/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageAdapter"

.field private static final TYPE_CAMERA:I = 0x0

.field private static final TYPE_NORMAL:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private imageConfig:Lcom/yancy/imageselector/ImageConfig;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yancy/imageselector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

.field private mItemSize:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private selectedImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yancy/imageselector/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private showCamera:Z

.field private showSelectIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/yancy/imageselector/ImageConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yancy/imageselector/bean/Image;",
            ">;",
            "Lcom/yancy/imageselector/ImageConfig;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->showCamera:Z

    .line 33
    iput-boolean v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->showSelectIndicator:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->selectedImageList:Ljava/util/List;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->imageList:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    .line 48
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    return-void
.end method

.method private getImageByPath(Ljava/lang/String;)Lcom/yancy/imageselector/bean/Image;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->imageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yancy/imageselector/bean/Image;

    .line 67
    iget-object v2, v1, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

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

    .line 86
    iget-boolean v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->showCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/yancy/imageselector/bean/Image;
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->showCamera:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->imageList:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yancy/imageselector/bean/Image;

    return-object p1

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->imageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yancy/imageselector/bean/Image;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/yancy/imageselector/adapter/ImageAdapter;->getItem(I)Lcom/yancy/imageselector/bean/Image;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->showCamera:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 109
    invoke-virtual {p0, p1}, Lcom/yancy/imageselector/adapter/ImageAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    iget-object p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/yancy/imageselector/R$layout;->imageselector_item_camera:I

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p1, 0x0

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    if-nez p2, :cond_1

    .line 117
    iget-object p2, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/yancy/imageselector/R$layout;->imageselector_item_image:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 118
    new-instance p3, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;-><init>(Lcom/yancy/imageselector/adapter/ImageAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;

    if-nez v0, :cond_2

    .line 122
    iget-object p2, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/yancy/imageselector/R$layout;->imageselector_item_image:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 123
    new-instance p3, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;-><init>(Lcom/yancy/imageselector/adapter/ImageAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    move-object p3, v0

    .line 127
    :goto_0
    iget-boolean v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->showSelectIndicator:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p3, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;->photo_check:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->selectedImageList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yancy/imageselector/adapter/ImageAdapter;->getItem(I)Lcom/yancy/imageselector/bean/Image;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p3, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;->photo_check:Landroid/widget/ImageView;

    sget v2, Lcom/yancy/imageselector/R$mipmap;->imageselector_select_checked:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p3, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;->photo_mask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 133
    :cond_3
    iget-object v0, p3, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;->photo_check:Landroid/widget/ImageView;

    sget v1, Lcom/yancy/imageselector/R$mipmap;->imageselector_select_uncheck:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v0, p3, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;->photo_mask:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 137
    :cond_4
    iget-object v0, p3, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;->photo_check:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :goto_1
    iget v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mItemSize:I

    if-lez v0, :cond_5

    .line 142
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageConfig;->getImageLoader()Lcom/yancy/imageselector/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/yancy/imageselector/adapter/ImageAdapter;->getItem(I)Lcom/yancy/imageselector/bean/Image;

    move-result-object p1

    iget-object p1, p1, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    iget-object p3, p3, Lcom/yancy/imageselector/adapter/ImageAdapter$ViewHolder;->photo_image:Landroid/widget/ImageView;

    invoke-interface {v0, v1, p1, p3}, Lcom/yancy/imageselector/ImageLoader;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 147
    :cond_5
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    .line 148
    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->height:I

    iget p3, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mItemSize:I

    if-eq p1, p3, :cond_6

    .line 149
    iget-object p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-object p2
.end method

.method public isShowCamera()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->showCamera:Z

    return v0
.end method

.method public select(Lcom/yancy/imageselector/bean/Image;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->selectedImageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->selectedImageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->selectedImageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcom/yancy/imageselector/adapter/ImageAdapter;->notifyDataSetChanged()V

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

    .line 53
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

    .line 54
    invoke-direct {p0, v0}, Lcom/yancy/imageselector/adapter/ImageAdapter;->getImageByPath(Ljava/lang/String;)Lcom/yancy/imageselector/bean/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->selectedImageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->selectedImageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/yancy/imageselector/adapter/ImageAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public setItemSize(I)V
    .locals 1

    .line 76
    iget v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mItemSize:I

    if-ne v0, p1, :cond_0

    return-void

    .line 79
    :cond_0
    iput p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mItemSize:I

    .line 80
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mItemSize:I

    invoke-direct {p1, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->mItemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    .line 81
    invoke-virtual {p0}, Lcom/yancy/imageselector/adapter/ImageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setShowCamera(Z)V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->showCamera:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 185
    :cond_0
    iput-boolean p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->showCamera:Z

    .line 186
    invoke-virtual {p0}, Lcom/yancy/imageselector/adapter/ImageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setShowSelectIndicator(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/yancy/imageselector/adapter/ImageAdapter;->showSelectIndicator:Z

    return-void
.end method
