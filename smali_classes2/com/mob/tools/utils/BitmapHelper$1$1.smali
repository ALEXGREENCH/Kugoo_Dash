.class Lcom/mob/tools/utils/BitmapHelper$1$1;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/BitmapHelper$1;->onResponse(Lcom/mob/tools/network/HttpConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/BitmapHelper$1;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/BitmapHelper$1;Ljava/io/InputStream;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/mob/tools/utils/BitmapHelper$1$1;->a:Lcom/mob/tools/utils/BitmapHelper$1;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    .line 249
    iget-object v4, p0, Lcom/mob/tools/utils/BitmapHelper$1$1;->in:Ljava/io/InputStream;

    sub-long v5, p1, v2

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v2
.end method
