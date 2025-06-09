.class public abstract Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerViewCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mRowIDColumn:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->setHasStableIds(Z)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->swapCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private isDataValid(Landroid/database/Cursor;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->isDataValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->isDataValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mRowIDColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not move cursor to position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " when trying to get an item id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot lookup item id when cursor is in invalid state."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1, v0}, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->getItemViewType(ILandroid/database/Cursor;)I

    move-result p1

    return p1

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not move cursor to position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " when trying to get item view type."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getItemViewType(ILandroid/database/Cursor;)I
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->isDataValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object p2, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not move cursor to position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " when trying to bind view holder"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot bind view holder when cursor is in invalid state."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 87
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    const-string v0, "_id"

    .line 88
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mRowIDColumn:I

    .line 90
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->notifyItemRangeRemoved(II)V

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 p1, -0x1

    .line 94
    iput p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/RecyclerViewCursorAdapter;->mRowIDColumn:I

    :goto_0
    return-void
.end method
