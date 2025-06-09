.class public Lcom/lidong/photopicker/PhotoPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PhotoPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidong/photopicker/PhotoPagerAdapter$PhotoViewClickListener;
    }
.end annotation


# instance fields
.field public listener:Lcom/lidong/photopicker/PhotoPagerAdapter$PhotoViewClickListener;

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPagerAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/lidong/photopicker/PhotoPagerAdapter;->paths:Ljava/util/List;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPagerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPagerAdapter;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPagerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/lidong/photopicker/R$layout;->item_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    sget v1, Lcom/lidong/photopicker/R$id;->iv_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Luk/co/senab/photoview/PhotoView;

    .line 48
    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPagerAdapter;->paths:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v2, "http"

    .line 50
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 53
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 56
    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p2

    sget v2, Lcom/lidong/photopicker/R$mipmap;->default_error:I

    .line 58
    invoke-virtual {p2, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p2

    .line 59
    invoke-virtual {p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p2

    .line 60
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 62
    new-instance p2, Lcom/lidong/photopicker/PhotoPagerAdapter$1;

    invoke-direct {p2, p0}, Lcom/lidong/photopicker/PhotoPagerAdapter$1;-><init>(Lcom/lidong/photopicker/PhotoPagerAdapter;)V

    invoke-virtual {v1, p2}, Luk/co/senab/photoview/PhotoView;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPhotoViewClickListener(Lcom/lidong/photopicker/PhotoPagerAdapter$PhotoViewClickListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPagerAdapter;->listener:Lcom/lidong/photopicker/PhotoPagerAdapter$PhotoViewClickListener;

    return-void
.end method
