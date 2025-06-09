.class Lcom/kugoo/kugookirin/social/ImageDetailFragment$3$1;
.super Ljava/lang/Object;
.source "ImageDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3$1;->this$1:Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 196
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 197
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3$1;->this$1:Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;

    iget-object v1, v1, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->access$200(Lcom/kugoo/kugookirin/social/ImageDetailFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
