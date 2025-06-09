.class Lcom/mob/mgs/impl/a$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mgs/impl/a$2;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/a$2;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "chk_cb_"

    const-string v1, "utf-8"

    const-string v2, "lg_"

    .line 229
    :try_start_0
    iget-object v3, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object v3, v3, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v3}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object v3, v3, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v3}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 231
    iget-object v3, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object v3, v3, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;Ljava/net/Socket;)Ljava/net/Socket;

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object v3, v3, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    new-instance v4, Ljava/net/Socket;

    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getIPAddress()Ljava/lang/String;

    move-result-object p1

    const v5, 0xe9fa

    invoke-direct {v4, p1, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v3, v4}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;Ljava/net/Socket;)Ljava/net/Socket;

    .line 234
    iget-object p1, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object p1, p1, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {p1}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 236
    iget-object p1, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object p1, p1, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    const/4 v3, 0x5

    invoke-static {p1, v3}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;I)I

    .line 237
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object p1

    const-string v3, "[GdCon] clientSocket connected"

    invoke-virtual {p1, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 241
    iget-object v3, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object v3, v3, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v3}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 243
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 245
    :try_start_2
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object p1, p1, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {p1}, Lcom/mob/mgs/impl/a;->e(Lcom/mob/mgs/impl/a;)V

    .line 250
    iget-object p1, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object p1, p1, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {p1}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 251
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object v2, v2, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v2}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object v2, v2, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v2}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 254
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    .line 256
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    const-string v3, "[GdCon] client received server disconnect"

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object v2, v2, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v2, v5}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;Z)V

    goto :goto_1

    .line 259
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 260
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GdCon] client received server msg: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    const-string v2, "chk"

    .line 261
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_1

    .line 264
    :try_start_3
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 265
    iget-object v3, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object v3, v3, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    invoke-static {v3}, Lcom/mob/mgs/impl/a;->d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 267
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 268
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GdCon] client send alive check msg callback to server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    .line 271
    :try_start_4
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 280
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[GdCon] client received socket exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    .line 282
    iget-object p1, p0, Lcom/mob/mgs/impl/a$2$1;->a:Lcom/mob/mgs/impl/a$2;

    iget-object p1, p1, Lcom/mob/mgs/impl/a$2;->a:Lcom/mob/mgs/impl/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mob/mgs/impl/a;->a(Lcom/mob/mgs/impl/a;Z)V

    :cond_3
    return-void
.end method
