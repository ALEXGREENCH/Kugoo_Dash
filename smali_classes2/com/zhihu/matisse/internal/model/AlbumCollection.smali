.class public Lcom/zhihu/matisse/internal/model/AlbumCollection;
.super Ljava/lang/Object;
.source "AlbumCollection.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/model/AlbumCollection$AlbumCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOADER_ID:I = 0x1

.field private static final STATE_CURRENT_SELECTION:Ljava/lang/String; = "state_current_selection"


# instance fields
.field private mCallbacks:Lcom/zhihu/matisse/internal/model/AlbumCollection$AlbumCallbacks;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSelection:I

.field private mLoadFinished:Z

.field private mLoaderManager:Landroidx/loader/app/LoaderManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentSelection()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mCurrentSelection:I

    return v0
.end method

.method public loadAlbums()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreate(Landroidx/fragment/app/FragmentActivity;Lcom/zhihu/matisse/internal/model/AlbumCollection$AlbumCallbacks;)V
    .locals 1

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mContext:Ljava/lang/ref/WeakReference;

    .line 74
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    .line 75
    iput-object p2, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mCallbacks:Lcom/zhihu/matisse/internal/model/AlbumCollection$AlbumCallbacks;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mLoadFinished:Z

    .line 46
    invoke-static {p1}, Lcom/zhihu/matisse/internal/loader/AlbumLoader;->newInstance(Landroid/content/Context;)Landroidx/loader/content/CursorLoader;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    :cond_0
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mCallbacks:Lcom/zhihu/matisse/internal/model/AlbumCollection$AlbumCallbacks;

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-boolean p1, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mLoadFinished:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mLoadFinished:Z

    .line 58
    iget-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mCallbacks:Lcom/zhihu/matisse/internal/model/AlbumCollection$AlbumCallbacks;

    invoke-interface {p1, p2}, Lcom/zhihu/matisse/internal/model/AlbumCollection$AlbumCallbacks;->onAlbumLoad(Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/zhihu/matisse/internal/model/AlbumCollection;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mCallbacks:Lcom/zhihu/matisse/internal/model/AlbumCollection$AlbumCallbacks;

    invoke-interface {p1}, Lcom/zhihu/matisse/internal/model/AlbumCollection$AlbumCallbacks;->onAlbumReset()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "state_current_selection"

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mCurrentSelection:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "state_current_selection"

    .line 87
    iget v1, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mCurrentSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setStateCurrentSelection(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/zhihu/matisse/internal/model/AlbumCollection;->mCurrentSelection:I

    return-void
.end method
