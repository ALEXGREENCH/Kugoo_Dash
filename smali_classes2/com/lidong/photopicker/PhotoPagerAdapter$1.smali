.class Lcom/lidong/photopicker/PhotoPagerAdapter$1;
.super Ljava/lang/Object;
.source "PhotoPagerAdapter.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidong/photopicker/PhotoPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidong/photopicker/PhotoPagerAdapter;


# direct methods
.method constructor <init>(Lcom/lidong/photopicker/PhotoPagerAdapter;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPagerAdapter$1;->this$0:Lcom/lidong/photopicker/PhotoPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPagerAdapter$1;->this$0:Lcom/lidong/photopicker/PhotoPagerAdapter;

    iget-object v0, v0, Lcom/lidong/photopicker/PhotoPagerAdapter;->listener:Lcom/lidong/photopicker/PhotoPagerAdapter$PhotoViewClickListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPagerAdapter$1;->this$0:Lcom/lidong/photopicker/PhotoPagerAdapter;

    iget-object v0, v0, Lcom/lidong/photopicker/PhotoPagerAdapter;->listener:Lcom/lidong/photopicker/PhotoPagerAdapter$PhotoViewClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/lidong/photopicker/PhotoPagerAdapter$PhotoViewClickListener;->OnPhotoTapListener(Landroid/view/View;FF)V

    :cond_0
    return-void
.end method
