.class Lcom/yancy/imageselector/ImageSelectorFragment$7;
.super Ljava/lang/Object;
.source "ImageSelectorFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yancy/imageselector/ImageSelectorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final IMAGE_PROJECTION:[Ljava/lang/String;

.field final synthetic this$0:Lcom/yancy/imageselector/ImageSelectorFragment;


# direct methods
.method constructor <init>(Lcom/yancy/imageselector/ImageSelectorFragment;)V
    .locals 3

    .line 378
    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "date_added"

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "_display_name"

    .line 380
    filled-new-array {v1, v2, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 10
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

    const-string v0, " DESC"

    const/4 v1, 0x2

    if-nez p1, :cond_0

    .line 389
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-virtual {p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 395
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-virtual {v2}, Lcom/yancy/imageselector/ImageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " like \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "%\'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 6
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

    if-eqz p2, :cond_4

    .line 407
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 409
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 414
    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 415
    new-instance v5, Lcom/yancy/imageselector/bean/Image;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/yancy/imageselector/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 416
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1500(Lcom/yancy/imageselector/ImageSelectorFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 418
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 420
    new-instance v1, Lcom/yancy/imageselector/bean/Folder;

    invoke-direct {v1}, Lcom/yancy/imageselector/bean/Folder;-><init>()V

    .line 421
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/yancy/imageselector/bean/Folder;->name:Ljava/lang/String;

    .line 422
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/yancy/imageselector/bean/Folder;->path:Ljava/lang/String;

    .line 423
    iput-object v5, v1, Lcom/yancy/imageselector/bean/Folder;->cover:Lcom/yancy/imageselector/bean/Image;

    .line 424
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1600(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iput-object v0, v1, Lcom/yancy/imageselector/bean/Folder;->images:Ljava/util/List;

    .line 428
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1600(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1600(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v3}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1600(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yancy/imageselector/bean/Folder;

    .line 431
    iget-object v0, v0, Lcom/yancy/imageselector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_2
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1300(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 438
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1300(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 439
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$700(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/ImageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yancy/imageselector/adapter/ImageAdapter;->notifyDataSetChanged()V

    .line 441
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1400(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1400(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 442
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$700(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/ImageAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1400(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yancy/imageselector/adapter/ImageAdapter;->setDefaultSelected(Ljava/util/ArrayList;)V

    .line 445
    :cond_3
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$400(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/FolderAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1600(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yancy/imageselector/adapter/FolderAdapter;->setData(Ljava/util/List;)V

    .line 447
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$7;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1, v2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1502(Lcom/yancy/imageselector/ImageSelectorFragment;Z)Z

    :cond_4
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/yancy/imageselector/ImageSelectorFragment$7;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

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

    return-void
.end method
