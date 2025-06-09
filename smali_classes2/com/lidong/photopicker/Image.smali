.class public Lcom/lidong/photopicker/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/lidong/photopicker/Image;->name:Ljava/lang/String;

    .line 14
    iput-wide p3, p0, Lcom/lidong/photopicker/Image;->time:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 20
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/lidong/photopicker/Image;

    .line 21
    iget-object v1, p0, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    iget-object v0, v0, Lcom/lidong/photopicker/Image;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 25
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
