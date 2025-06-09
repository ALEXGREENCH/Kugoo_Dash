.class Lcom/mob/mgs/impl/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mgs/impl/a;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/a;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/mob/mgs/impl/a$4;->a:Lcom/mob/mgs/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "[GdCon] p cli sct: "

    .line 343
    :try_start_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mob/mgs/impl/a$4;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v0}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/mob/mgs/impl/a$4;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v0}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/mgs/impl/a$4;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v0}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/mob/mgs/impl/a$4;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v0}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "p"

    .line 347
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 348
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 351
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
