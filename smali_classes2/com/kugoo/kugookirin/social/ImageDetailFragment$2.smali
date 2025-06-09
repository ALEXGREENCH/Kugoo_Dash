.class Lcom/kugoo/kugookirin/social/ImageDetailFragment$2;
.super Ljava/lang/Object;
.source "ImageDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 85
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$2;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$2;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    iget-object p1, p1, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->saveImageLiner:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return v0
.end method
