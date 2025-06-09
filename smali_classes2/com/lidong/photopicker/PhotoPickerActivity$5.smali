.class Lcom/lidong/photopicker/PhotoPickerActivity$5;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidong/photopicker/PhotoPickerActivity;
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

.field final synthetic this$0:Lcom/lidong/photopicker/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lcom/lidong/photopicker/PhotoPickerActivity;)V
    .locals 3

    .line 400
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "date_added"

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "_display_name"

    .line 402
    filled-new-array {v1, v2, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 12
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

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1300(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageConfig;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_7

    .line 415
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1300(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageConfig;

    move-result-object v1

    iget v1, v1, Lcom/lidong/photopicker/ImageConfig;->minWidth:I

    if-eqz v1, :cond_0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "width >= "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v4}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1300(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageConfig;

    move-result-object v4

    iget v4, v4, Lcom/lidong/photopicker/ImageConfig;->minWidth:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1300(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageConfig;

    move-result-object v1

    iget v1, v1, Lcom/lidong/photopicker/ImageConfig;->minHeight:I

    const-string v4, " and "

    if-eqz v1, :cond_2

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "height >= "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v5}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1300(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageConfig;

    move-result-object v5

    iget v5, v5, Lcom/lidong/photopicker/ImageConfig;->minHeight:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1300(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageConfig;

    move-result-object v1

    iget-wide v5, v1, Lcom/lidong/photopicker/ImageConfig;->minSize:J

    long-to-float v1, v5

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_4

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v4, v3

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "_size >= "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v4}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1300(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageConfig;

    move-result-object v4

    iget-wide v4, v4, Lcom/lidong/photopicker/ImageConfig;->minSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_4
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1300(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/lidong/photopicker/ImageConfig;->mimeType:[Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, " and ("

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1300(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/lidong/photopicker/ImageConfig;->mimeType:[Ljava/lang/String;

    array-length v1, v1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_6

    if-eqz v4, :cond_5

    const-string v5, " or "

    .line 433
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mime_type = \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v6}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1300(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/lidong/photopicker/ImageConfig;->mimeType:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const-string v1, ")"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, " DESC"

    const/4 v4, 0x2

    if-nez p1, :cond_8

    .line 442
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$300(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_8
    const/4 v5, 0x1

    if-ne p1, v5, :cond_a

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 448
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 451
    :cond_9
    new-instance v0, Landroidx/loader/content/CursorLoader;

    iget-object v3, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v3}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$300(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " like \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "path"

    .line 453
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "%\'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object p2, p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a
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

    .line 464
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 467
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 471
    iget-object v3, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 473
    new-instance v5, Lcom/lidong/photopicker/Image;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/lidong/photopicker/Image;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 474
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1400(Lcom/lidong/photopicker/PhotoPickerActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 477
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 479
    new-instance v1, Lcom/lidong/photopicker/Folder;

    invoke-direct {v1}, Lcom/lidong/photopicker/Folder;-><init>()V

    .line 480
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/lidong/photopicker/Folder;->name:Ljava/lang/String;

    .line 481
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/lidong/photopicker/Folder;->path:Ljava/lang/String;

    .line 482
    iput-object v5, v1, Lcom/lidong/photopicker/Folder;->cover:Lcom/lidong/photopicker/Image;

    .line 483
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1500(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    iput-object v0, v1, Lcom/lidong/photopicker/Folder;->images:Ljava/util/List;

    .line 487
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1500(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1500(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v3}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1500(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidong/photopicker/Folder;

    .line 491
    iget-object v0, v0, Lcom/lidong/photopicker/Folder;->images:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_2
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$000(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageGridAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lidong/photopicker/ImageGridAdapter;->setData(Ljava/util/List;)V

    .line 500
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$200(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$200(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 501
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$000(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageGridAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$200(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lidong/photopicker/ImageGridAdapter;->setDefaultSelected(Ljava/util/ArrayList;)V

    .line 504
    :cond_3
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$800(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/FolderAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1500(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lidong/photopicker/FolderAdapter;->setData(Ljava/util/List;)V

    .line 505
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$5;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1, v2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1402(Lcom/lidong/photopicker/PhotoPickerActivity;Z)Z

    :cond_4
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 400
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/lidong/photopicker/PhotoPickerActivity$5;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

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
