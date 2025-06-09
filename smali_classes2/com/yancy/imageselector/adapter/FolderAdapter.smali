.class public Lcom/yancy/imageselector/adapter/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yancy/imageselector/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private imageConfig:Lcom/yancy/imageselector/ImageConfig;

.field private lastSelected:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yancy/imageselector/ImageConfig;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->folderList:Ljava/util/List;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->lastSelected:I

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    return-void
.end method

.method private getTotalImageSize()I
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->folderList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->folderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yancy/imageselector/bean/Folder;

    .line 143
    iget-object v2, v2, Lcom/yancy/imageselector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->folderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/yancy/imageselector/bean/Folder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->folderList:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yancy/imageselector/bean/Folder;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/yancy/imageselector/adapter/FolderAdapter;->getItem(I)Lcom/yancy/imageselector/bean/Folder;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectIndex()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->lastSelected:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 70
    iget-object p2, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/yancy/imageselector/R$layout;->imageselector_item_folder:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance p3, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;-><init>(Lcom/yancy/imageselector/adapter/FolderAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;

    :goto_0
    if-eqz p3, :cond_4

    const-string v1, ""

    if-nez p1, :cond_1

    .line 78
    iget-object v2, p3, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->folder_name_text:Landroid/widget/TextView;

    sget v3, Lcom/yancy/imageselector/R$string;->all_folder:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v2, p3, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->image_num_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yancy/imageselector/adapter/FolderAdapter;->getTotalImageSize()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yancy/imageselector/R$string;->sheet:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->folderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->folderList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yancy/imageselector/bean/Folder;

    .line 84
    iget-object v2, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v2}, Lcom/yancy/imageselector/ImageConfig;->getImageLoader()Lcom/yancy/imageselector/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->context:Landroid/content/Context;

    iget-object v1, v1, Lcom/yancy/imageselector/bean/Folder;->cover:Lcom/yancy/imageselector/bean/Image;

    iget-object v1, v1, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    iget-object v4, p3, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->folder_image:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v1, v4}, Lcom/yancy/imageselector/ImageLoader;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yancy/imageselector/adapter/FolderAdapter;->getItem(I)Lcom/yancy/imageselector/bean/Folder;

    move-result-object v2

    .line 95
    iget-object v3, p3, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->folder_name_text:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/yancy/imageselector/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v3, p3, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->image_num_text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/yancy/imageselector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yancy/imageselector/R$string;->sheet:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v1}, Lcom/yancy/imageselector/ImageConfig;->getImageLoader()Lcom/yancy/imageselector/ImageLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->context:Landroid/content/Context;

    iget-object v2, v2, Lcom/yancy/imageselector/bean/Folder;->cover:Lcom/yancy/imageselector/bean/Image;

    iget-object v2, v2, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    iget-object v4, p3, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->folder_image:Landroid/widget/ImageView;

    invoke-interface {v1, v3, v2, v4}, Lcom/yancy/imageselector/ImageLoader;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 107
    :cond_2
    :goto_1
    iget v1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->lastSelected:I

    if-ne v1, p1, :cond_3

    .line 108
    iget-object p1, p3, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 110
    :cond_3
    iget-object p1, p3, Lcom/yancy/imageselector/adapter/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yancy/imageselector/bean/Folder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->folderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->folderList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/yancy/imageselector/adapter/FolderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectIndex(I)V
    .locals 1

    .line 151
    iget v0, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->lastSelected:I

    if-ne v0, p1, :cond_0

    return-void

    .line 153
    :cond_0
    iput p1, p0, Lcom/yancy/imageselector/adapter/FolderAdapter;->lastSelected:I

    .line 154
    invoke-virtual {p0}, Lcom/yancy/imageselector/adapter/FolderAdapter;->notifyDataSetChanged()V

    return-void
.end method
