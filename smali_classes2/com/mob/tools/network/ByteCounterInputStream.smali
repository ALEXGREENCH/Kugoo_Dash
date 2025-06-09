.class public Lcom/mob/tools/network/ByteCounterInputStream;
.super Ljava/io/InputStream;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:J

.field private c:Lcom/mob/tools/network/OnReadListener;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    .line 20
    iget-wide v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->b:J

    .line 21
    iget-object v3, p0, Lcom/mob/tools/network/ByteCounterInputStream;->c:Lcom/mob/tools/network/OnReadListener;

    if-eqz v3, :cond_0

    .line 22
    invoke-interface {v3, v1, v2}, Lcom/mob/tools/network/OnReadListener;->onRead(J)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    .line 32
    iget-wide p2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mob/tools/network/ByteCounterInputStream;->b:J

    .line 33
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->c:Lcom/mob/tools/network/OnReadListener;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p2, p3}, Lcom/mob/tools/network/OnReadListener;->onRead(J)V

    :cond_0
    return p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnInputStreamReadListener(Lcom/mob/tools/network/OnReadListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/mob/tools/network/ByteCounterInputStream;->c:Lcom/mob/tools/network/OnReadListener;

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mob/tools/network/ByteCounterInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
