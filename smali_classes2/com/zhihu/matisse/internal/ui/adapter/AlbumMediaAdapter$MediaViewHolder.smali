.class Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AlbumMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaViewHolder"
.end annotation


# instance fields
.field private mMediaGrid:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 284
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 285
    check-cast p1, Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;->mMediaGrid:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    return-void
.end method

.method static synthetic access$100(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;)Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$MediaViewHolder;->mMediaGrid:Lcom/zhihu/matisse/internal/ui/widget/MediaGrid;

    return-object p0
.end method
