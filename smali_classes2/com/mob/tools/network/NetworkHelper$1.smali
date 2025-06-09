.class Lcom/mob/tools/network/NetworkHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/network/RawNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Lcom/mob/tools/network/NetworkHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/network/NetworkHelper;[BLjava/io/OutputStream;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/mob/tools/network/NetworkHelper$1;->c:Lcom/mob/tools/network/NetworkHelper;

    iput-object p2, p0, Lcom/mob/tools/network/NetworkHelper$1;->a:[B

    iput-object p3, p0, Lcom/mob/tools/network/NetworkHelper$1;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/mob/tools/network/NetworkHelper$1;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/mob/tools/network/NetworkHelper$1;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/mob/tools/network/NetworkHelper$1;->a:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 337
    iget-object v0, p0, Lcom/mob/tools/network/NetworkHelper$1;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method
