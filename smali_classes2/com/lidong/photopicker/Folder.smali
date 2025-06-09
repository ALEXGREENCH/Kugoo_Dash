.class public Lcom/lidong/photopicker/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# instance fields
.field public cover:Lcom/lidong/photopicker/Image;

.field public images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lidong/photopicker/Image;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 17
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/lidong/photopicker/Folder;

    .line 18
    iget-object v1, p0, Lcom/lidong/photopicker/Folder;->path:Ljava/lang/String;

    iget-object v0, v0, Lcom/lidong/photopicker/Folder;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 22
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
