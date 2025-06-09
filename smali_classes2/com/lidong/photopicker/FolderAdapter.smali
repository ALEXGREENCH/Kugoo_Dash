.class public Lcom/lidong/photopicker/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidong/photopicker/FolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field lastSelected:I

.field private mContext:Landroid/content/Context;

.field private mFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lidong/photopicker/Folder;",
            ">;"
        }
    .end annotation
.end field

.field mImageSize:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidong/photopicker/FolderAdapter;->mFolders:Ljava/util/List;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/lidong/photopicker/FolderAdapter;->lastSelected:I

    .line 32
    iput-object p1, p0, Lcom/lidong/photopicker/FolderAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/lidong/photopicker/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    iget-object p1, p0, Lcom/lidong/photopicker/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/lidong/photopicker/R$dimen;->folder_cover_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/lidong/photopicker/FolderAdapter;->mImageSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/lidong/photopicker/FolderAdapter;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/lidong/photopicker/FolderAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getTotalImageSize()I
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/lidong/photopicker/FolderAdapter;->mFolders:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lidong/photopicker/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidong/photopicker/Folder;

    .line 105
    iget-object v2, v2, Lcom/lidong/photopicker/Folder;->images:Ljava/util/List;

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

    .line 52
    iget-object v0, p0, Lcom/lidong/photopicker/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/lidong/photopicker/Folder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/lidong/photopicker/FolderAdapter;->mFolders:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lidong/photopicker/Folder;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/lidong/photopicker/FolderAdapter;->getItem(I)Lcom/lidong/photopicker/Folder;

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

    .line 119
    iget v0, p0, Lcom/lidong/photopicker/FolderAdapter;->lastSelected:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 70
    iget-object p2, p0, Lcom/lidong/photopicker/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/lidong/photopicker/R$layout;->item_folder:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance p3, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;-><init>(Lcom/lidong/photopicker/FolderAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;

    :goto_0
    if-eqz p3, :cond_4

    if-nez p1, :cond_1

    .line 77
    iget-object v1, p3, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lidong/photopicker/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lidong/photopicker/R$string;->all_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p3, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lidong/photopicker/FolderAdapter;->getTotalImageSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5f20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/lidong/photopicker/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/lidong/photopicker/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidong/photopicker/Folder;

    .line 82
    iget-object v2, p0, Lcom/lidong/photopicker/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Lcom/lidong/photopicker/Folder;->cover:Lcom/lidong/photopicker/Image;

    iget-object v1, v1, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget v2, Lcom/lidong/photopicker/R$mipmap;->default_error:I

    .line 84
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lidong/photopicker/FolderAdapter;->mImageSize:I

    .line 85
    invoke-virtual {v1, v2, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lidong/photopicker/FolderAdapter;->getItem(I)Lcom/lidong/photopicker/Folder;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->bindData(Lcom/lidong/photopicker/Folder;)V

    .line 92
    :cond_2
    :goto_1
    iget v1, p0, Lcom/lidong/photopicker/FolderAdapter;->lastSelected:I

    if-ne v1, p1, :cond_3

    .line 93
    iget-object p1, p3, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 95
    :cond_3
    iget-object p1, p3, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

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
            "Lcom/lidong/photopicker/Folder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    iput-object p1, p0, Lcom/lidong/photopicker/FolderAdapter;->mFolders:Ljava/util/List;

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/lidong/photopicker/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/lidong/photopicker/FolderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectIndex(I)V
    .locals 1

    .line 112
    iget v0, p0, Lcom/lidong/photopicker/FolderAdapter;->lastSelected:I

    if-ne v0, p1, :cond_0

    return-void

    .line 114
    :cond_0
    iput p1, p0, Lcom/lidong/photopicker/FolderAdapter;->lastSelected:I

    .line 115
    invoke-virtual {p0}, Lcom/lidong/photopicker/FolderAdapter;->notifyDataSetChanged()V

    return-void
.end method
