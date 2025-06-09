.class public Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;
.super Landroidx/fragment/app/Fragment;
.source "MediaSelectionFragment.java"

# interfaces
.implements Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;
.implements Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;
.implements Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;
    }
.end annotation


# static fields
.field public static final EXTRA_ALBUM:Ljava/lang/String; = "extra_album"


# instance fields
.field private mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;

.field private final mAlbumMediaCollection:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

.field private mCheckStateListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

.field private mOnMediaClickListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectionProvider:Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 45
    new-instance v0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

    invoke-direct {v0}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mAlbumMediaCollection:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

    return-void
.end method

.method public static newInstance(Lcom/zhihu/matisse/internal/entity/Album;)Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;
    .locals 3

    .line 53
    new-instance v0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;

    invoke-direct {v0}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_album"

    .line 55
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .line 91
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_album"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/entity/Album;

    .line 94
    new-instance v0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mSelectionProvider:Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;

    .line 95
    invoke-interface {v2}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;->provideSelectedItemCollection()Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    move-result-object v2

    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1, v2, v3}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;-><init>(Landroid/content/Context;Lcom/zhihu/matisse/internal/model/SelectedItemCollection;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;

    .line 96
    invoke-virtual {v0, p0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->registerCheckStateListener(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;)V

    .line 97
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {v0, p0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->registerOnMediaClickListener(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 101
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    .line 102
    iget v1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->gridExpectedSize:I

    if-lez v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->gridExpectedSize:I

    invoke-static {v1, v2}, Lcom/zhihu/matisse/internal/utils/UIUtils;->spanCount(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 105
    :cond_0
    iget v1, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->spanCount:I

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zhihu/matisse/R$dimen;->media_grid_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 110
    iget-object v3, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Lcom/zhihu/matisse/internal/ui/widget/MediaGridInset;-><init>(IIZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 111
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 112
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mAlbumMediaCollection:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->onCreate(Landroidx/fragment/app/FragmentActivity;Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;)V

    .line 113
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mAlbumMediaCollection:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->capture:Z

    invoke-virtual {v1, p1, v0}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->load(Lcom/zhihu/matisse/internal/entity/Album;Z)V

    return-void
.end method

.method public onAlbumMediaLoad(Landroid/database/Cursor;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->swapCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public onAlbumMediaReset()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->swapCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 63
    instance-of v0, p1, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;

    if-eqz v0, :cond_2

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mSelectionProvider:Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment$SelectionProvider;

    .line 68
    instance-of v0, p1, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    if-eqz v0, :cond_0

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mCheckStateListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    .line 71
    :cond_0
    instance-of v0, p1, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    if-eqz v0, :cond_1

    .line 72
    check-cast p1, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mOnMediaClickListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    :cond_1
    return-void

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context must implement SelectionProvider."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 80
    sget p3, Lcom/zhihu/matisse/R$layout;->fragment_media_selection:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 119
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mAlbumMediaCollection:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->onDestroy()V

    return-void
.end method

.method public onMediaClick(Lcom/zhihu/matisse/internal/entity/Album;Lcom/zhihu/matisse/internal/entity/Item;I)V
    .locals 2

    .line 150
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mOnMediaClickListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_album"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zhihu/matisse/internal/entity/Album;

    invoke-interface {p1, v0, p2, p3}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnMediaClickListener;->onMediaClick(Lcom/zhihu/matisse/internal/entity/Album;Lcom/zhihu/matisse/internal/entity/Item;I)V

    :cond_0
    return-void
.end method

.method public onUpdate()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mCheckStateListener:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$CheckStateListener;->onUpdate()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    sget p2, Lcom/zhihu/matisse/R$id;->recyclerview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public refreshMediaGrid()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public refreshSelection()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/MediaSelectionFragment;->mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->refreshSelection()V

    return-void
.end method
