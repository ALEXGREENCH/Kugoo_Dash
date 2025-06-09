.class Lcom/kugoo/kugookirin/social/ImageDetailFragment$1;
.super Ljava/lang/Object;
.source "ImageDetailFragment.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/ImageDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/ImageDetailFragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$1;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
