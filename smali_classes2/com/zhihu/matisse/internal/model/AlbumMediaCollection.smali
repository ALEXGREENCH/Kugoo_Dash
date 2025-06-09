.class public Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;
.super Ljava/lang/Object;
.source "AlbumMediaCollection.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;
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
.field private static final ARGS_ALBUM:Ljava/lang/String; = "args_album"

.field private static final ARGS_ENABLE_CAPTURE:Ljava/lang/String; = "args_enable_capture"

.field private static final LOADER_ID:I = 0x2


# instance fields
.field private mCallbacks:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderManager:Landroidx/loader/app/LoaderManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lcom/zhihu/matisse/internal/entity/Album;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->load(Lcom/zhihu/matisse/internal/entity/Album;Z)V

    return-void
.end method

.method public load(Lcom/zhihu/matisse/internal/entity/Album;Z)V
    .locals 2

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args_album"

    .line 96
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "args_enable_capture"

    .line 97
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    iget-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreate(Landroidx/fragment/app/FragmentActivity;Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;)V
    .locals 1

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->mContext:Ljava/lang/ref/WeakReference;

    .line 79
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    .line 80
    iput-object p2, p0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->mCallbacks:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 3
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

    .line 43
    iget-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "args_album"

    .line 48
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/zhihu/matisse/internal/entity/Album;

    if-nez v1, :cond_1

    return-object v0

    .line 54
    :cond_1
    invoke-virtual {v1}, Lcom/zhihu/matisse/internal/entity/Album;->isAll()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v0, "args_enable_capture"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    .line 53
    :cond_2
    invoke-static {p1, v1, v2}, Lcom/zhihu/matisse/internal/loader/AlbumMediaLoader;->newInstance(Landroid/content/Context;Lcom/zhihu/matisse/internal/entity/Album;Z)Landroidx/loader/content/CursorLoader;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->mLoaderManager:Landroidx/loader/app/LoaderManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 85
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    :cond_0
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->mCallbacks:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;

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

    .line 59
    iget-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->mCallbacks:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;

    invoke-interface {p1, p2}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;->onAlbumMediaLoad(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

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

    .line 69
    iget-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->mCallbacks:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;

    invoke-interface {p1}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;->onAlbumMediaReset()V

    return-void
.end method
