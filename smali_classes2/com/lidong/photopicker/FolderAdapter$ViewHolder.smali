.class Lcom/lidong/photopicker/FolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidong/photopicker/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cover:Landroid/widget/ImageView;

.field indicator:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field size:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lidong/photopicker/FolderAdapter;


# direct methods
.method constructor <init>(Lcom/lidong/photopicker/FolderAdapter;Landroid/view/View;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->this$0:Lcom/lidong/photopicker/FolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget p1, Lcom/lidong/photopicker/R$id;->cover:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 129
    sget p1, Lcom/lidong/photopicker/R$id;->name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 130
    sget p1, Lcom/lidong/photopicker/R$id;->size:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 131
    sget p1, Lcom/lidong/photopicker/R$id;->indicator:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    .line 132
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bindData(Lcom/lidong/photopicker/Folder;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/lidong/photopicker/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/lidong/photopicker/Folder;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->this$0:Lcom/lidong/photopicker/FolderAdapter;

    invoke-static {v0}, Lcom/lidong/photopicker/FolderAdapter;->access$000(Lcom/lidong/photopicker/FolderAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lcom/lidong/photopicker/Folder;->cover:Lcom/lidong/photopicker/Image;

    iget-object p1, p1, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    sget v0, Lcom/lidong/photopicker/R$mipmap;->default_error:I

    .line 141
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    sget v0, Lcom/lidong/photopicker/R$mipmap;->default_error:I

    .line 142
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->this$0:Lcom/lidong/photopicker/FolderAdapter;

    iget v0, v0, Lcom/lidong/photopicker/FolderAdapter;->mImageSize:I

    iget-object v1, p0, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->this$0:Lcom/lidong/photopicker/FolderAdapter;

    iget v1, v1, Lcom/lidong/photopicker/FolderAdapter;->mImageSize:I

    .line 143
    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/lidong/photopicker/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 145
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
