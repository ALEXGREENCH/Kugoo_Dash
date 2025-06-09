.class public Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;
.super Landroidx/fragment/app/Fragment;
.source "PreviewItemFragment.java"


# static fields
.field private static final ARGS_ITEM:Ljava/lang/String; = "args_item"


# instance fields
.field private mListener:Lcom/zhihu/matisse/listener/OnFragmentInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;)Lcom/zhihu/matisse/listener/OnFragmentInteractionListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->mListener:Lcom/zhihu/matisse/listener/OnFragmentInteractionListener;

    return-object p0
.end method

.method public static newInstance(Lcom/zhihu/matisse/internal/entity/Item;)Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;
    .locals 3

    .line 45
    new-instance v0, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;

    invoke-direct {v0}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "args_item"

    .line 47
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 116
    instance-of v0, p1, Lcom/zhihu/matisse/listener/OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Lcom/zhihu/matisse/listener/OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->mListener:Lcom/zhihu/matisse/listener/OnFragmentInteractionListener;

    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " must implement OnFragmentInteractionListener"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 54
    sget p3, Lcom/zhihu/matisse/R$layout;->fragment_preview_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->mListener:Lcom/zhihu/matisse/listener/OnFragmentInteractionListener;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 59
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "args_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/zhihu/matisse/internal/entity/Item;

    if-nez p2, :cond_0

    return-void

    .line 65
    :cond_0
    sget v0, Lcom/zhihu/matisse/R$id;->video_play_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-virtual {p2}, Lcom/zhihu/matisse/internal/entity/Item;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    new-instance v1, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment$1;-><init>(Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;Lcom/zhihu/matisse/internal/entity/Item;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :goto_0
    sget v0, Lcom/zhihu/matisse/R$id;->image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 85
    sget-object p1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_TO_SCREEN:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v4, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 87
    new-instance p1, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment$2;

    invoke-direct {p1, p0}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment$2;-><init>(Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;)V

    invoke-virtual {v4, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setSingleTapListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchSingleTapListener;)V

    .line 96
    invoke-virtual {p2}, Lcom/zhihu/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zhihu/matisse/internal/utils/PhotoMetadataUtils;->getBitmapSize(Landroid/net/Uri;Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p1

    .line 97
    invoke-virtual {p2}, Lcom/zhihu/matisse/internal/entity/Item;->isGif()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/zhihu/matisse/engine/ImageEngine;

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    .line 99
    invoke-virtual {p2}, Lcom/zhihu/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    .line 98
    invoke-interface/range {v0 .. v5}, Lcom/zhihu/matisse/engine/ImageEngine;->loadGifImage(Landroid/content/Context;IILandroid/widget/ImageView;Landroid/net/Uri;)V

    goto :goto_1

    .line 101
    :cond_2
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->imageEngine:Lcom/zhihu/matisse/engine/ImageEngine;

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    .line 102
    invoke-virtual {p2}, Lcom/zhihu/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    .line 101
    invoke-interface/range {v0 .. v5}, Lcom/zhihu/matisse/engine/ImageEngine;->loadImage(Landroid/content/Context;IILandroid/widget/ImageView;Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method public resetView()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/zhihu/matisse/R$id;->image_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->resetMatrix()V

    :cond_0
    return-void
.end method
