.class Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$1;
.super Ljava/lang/Object;
.source "AlbumMediaAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$1;->this$0:Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnPhotoCapture;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnPhotoCapture;

    invoke-interface {p1}, Lcom/zhihu/matisse/internal/ui/adapter/AlbumMediaAdapter$OnPhotoCapture;->capture()V

    :cond_0
    return-void
.end method
