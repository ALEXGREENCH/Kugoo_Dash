.class Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "ImageDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/ImageDetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
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

    .line 152
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->access$000(Lcom/kugoo/kugookirin/social/ImageDetailFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-static {p1, p3}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->access$102(Lcom/kugoo/kugookirin/social/ImageDetailFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 192
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->access$200(Lcom/kugoo/kugookirin/social/ImageDetailFragment;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3$1;

    invoke-direct {p2, p0}, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3$1;-><init>(Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    .line 162
    sget-object p1, Lcom/kugoo/kugookirin/social/ImageDetailFragment$4;->$SwitchMap$com$nostra13$universalimageloader$core$assist$FailReason$FailType:[I

    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/assist/FailReason;->getType()Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f120062

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f120061

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f120060

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 167
    :cond_3
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f12005f

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f12005e

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 179
    :goto_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 181
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->access$000(Lcom/kugoo/kugookirin/social/ImageDetailFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;->this$0:Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->access$000(Lcom/kugoo/kugookirin/social/ImageDetailFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
