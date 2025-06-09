.class Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;
.super Ljava/lang/Object;
.source "ImageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidong/photopicker/ImageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolde"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field indicator:Landroid/widget/ImageView;

.field mask:Landroid/view/View;

.field final synthetic this$0:Lcom/lidong/photopicker/ImageGridAdapter;


# direct methods
.method constructor <init>(Lcom/lidong/photopicker/ImageGridAdapter;Landroid/view/View;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->this$0:Lcom/lidong/photopicker/ImageGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget p1, Lcom/lidong/photopicker/R$id;->image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->image:Landroid/widget/ImageView;

    .line 210
    sget p1, Lcom/lidong/photopicker/R$id;->checkmark:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->indicator:Landroid/widget/ImageView;

    .line 211
    sget p1, Lcom/lidong/photopicker/R$id;->mask:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->mask:Landroid/view/View;

    .line 212
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bindData(Lcom/lidong/photopicker/Image;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->this$0:Lcom/lidong/photopicker/ImageGridAdapter;

    invoke-static {v0}, Lcom/lidong/photopicker/ImageGridAdapter;->access$000(Lcom/lidong/photopicker/ImageGridAdapter;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->indicator:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->this$0:Lcom/lidong/photopicker/ImageGridAdapter;

    invoke-static {v0}, Lcom/lidong/photopicker/ImageGridAdapter;->access$100(Lcom/lidong/photopicker/ImageGridAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->indicator:Landroid/widget/ImageView;

    sget v1, Lcom/lidong/photopicker/R$mipmap;->btn_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->mask:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->indicator:Landroid/widget/ImageView;

    sget v2, Lcom/lidong/photopicker/R$mipmap;->btn_unselected:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->mask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->indicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->this$0:Lcom/lidong/photopicker/ImageGridAdapter;

    invoke-static {p1}, Lcom/lidong/photopicker/ImageGridAdapter;->access$200(Lcom/lidong/photopicker/ImageGridAdapter;)I

    move-result p1

    if-lez p1, :cond_3

    .line 236
    iget-object p1, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->this$0:Lcom/lidong/photopicker/ImageGridAdapter;

    invoke-static {p1}, Lcom/lidong/photopicker/ImageGridAdapter;->access$300(Lcom/lidong/photopicker/ImageGridAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 237
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    sget v0, Lcom/lidong/photopicker/R$mipmap;->default_error:I

    .line 238
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    sget v0, Lcom/lidong/photopicker/R$mipmap;->default_error:I

    .line 239
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->this$0:Lcom/lidong/photopicker/ImageGridAdapter;

    .line 240
    invoke-static {v0}, Lcom/lidong/photopicker/ImageGridAdapter;->access$200(Lcom/lidong/photopicker/ImageGridAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->this$0:Lcom/lidong/photopicker/ImageGridAdapter;

    invoke-static {v1}, Lcom/lidong/photopicker/ImageGridAdapter;->access$200(Lcom/lidong/photopicker/ImageGridAdapter;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/lidong/photopicker/ImageGridAdapter$ViewHolde;->image:Landroid/widget/ImageView;

    .line 242
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_3
    return-void
.end method
