.class public Lcom/yancy/imageselector/bean/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/yancy/imageselector/bean/Image;->name:Ljava/lang/String;

    .line 16
    iput-wide p3, p0, Lcom/yancy/imageselector/bean/Image;->time:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 22
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/yancy/imageselector/bean/Image;

    .line 23
    iget-object v1, p0, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    iget-object v0, v0, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 27
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
