.class Lcom/mob/commons/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/c;->b(Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 599
    iput-boolean p1, p0, Lcom/mob/commons/c$2;->a:Z

    iput-object p2, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/mob/commons/c$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/mob/commons/c$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/mob/commons/c$2;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/mob/commons/c$2;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x5

    const/16 v1, 0xd

    .line 604
    :try_start_0
    iget-boolean v2, p0, Lcom/mob/commons/c$2;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/16 v3, 0x3a98

    const v4, 0xea60

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_7

    .line 607
    :try_start_1
    iget-object v1, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mob/commons/c$2;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/mob/commons/c$2;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/commons/c$2;->f:Ljava/lang/String;

    invoke-static {v1, v0, v2, v7, v3}, Lcom/mob/commons/c;->a(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 638
    iget-object v1, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto/16 :goto_5

    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 609
    :try_start_2
    iget-object v2, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    iget-object v2, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :cond_2
    const/4 v2, 0x7

    const-wide/16 v8, 0x0

    .line 615
    :try_start_3
    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 617
    :try_start_4
    new-instance v11, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v11}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 618
    iput v4, v11, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 619
    iput v3, v11, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 620
    new-instance v3, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v3}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iget-object v4, p0, Lcom/mob/commons/c$2;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v10, v11}, Lcom/mob/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v10, v3, v5

    .line 622
    invoke-static {v3}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 624
    iget-object v3, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/mob/commons/c$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-static {v4}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v3, :cond_3

    .line 626
    :try_start_6
    iget-object v1, p0, Lcom/mob/commons/c$2;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mob/commons/c$2;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3, v7, v4}, Lcom/mob/commons/c;->a(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 627
    iget-object v1, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_5

    .line 630
    :cond_3
    :try_start_7
    iget-object v2, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 631
    iget-object v2, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_5

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v10, v7

    :goto_1
    new-array v4, v6, [Ljava/io/Closeable;

    aput-object v10, v4, v5

    .line 622
    invoke-static {v4}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 624
    iget-object v4, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/mob/commons/c$2;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-static {v5}, Lcom/mob/tools/utils/Data;->MD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v4, :cond_5

    .line 626
    :try_start_8
    iget-object v1, p0, Lcom/mob/commons/c$2;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mob/commons/c$2;->f:Ljava/lang/String;

    invoke-static {v1, v2, v4, v7, v5}, Lcom/mob/commons/c;->a(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 627
    iget-object v1, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_4
    move v1, v2

    goto :goto_2

    :catchall_2
    move-exception v1

    goto/16 :goto_4

    .line 630
    :cond_5
    :try_start_9
    iget-object v2, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 631
    iget-object v2, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 634
    :cond_6
    :goto_2
    throw v3

    :catchall_3
    move-exception v1

    move v2, v0

    goto :goto_4

    .line 643
    :cond_7
    iget-object v2, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 644
    iget-object v2, p0, Lcom/mob/commons/c$2;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :cond_8
    const/16 v1, 0x8

    .line 649
    :try_start_a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 650
    :try_start_b
    new-instance v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v8}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 651
    iput v4, v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 652
    iput v3, v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 653
    new-instance v3, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v3}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iget-object v4, p0, Lcom/mob/commons/c$2;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v8}, Lcom/mob/tools/network/NetworkHelper;->download(Ljava/lang/String;Ljava/io/OutputStream;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v2, v3, v5

    .line 655
    invoke-static {v3}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 657
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 658
    array-length v3, v2

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/mob/commons/c$2;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 660
    iget-object v3, p0, Lcom/mob/commons/c$2;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/mob/commons/c$2;->f:Ljava/lang/String;

    invoke-static {v3, v1, v7, v2, v4}, Lcom/mob/commons/c;->a(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Z

    goto :goto_5

    :catchall_4
    move-exception v3

    move-object v7, v2

    goto :goto_3

    :catchall_5
    move-exception v3

    :goto_3
    new-array v2, v6, [Ljava/io/Closeable;

    aput-object v7, v2, v5

    .line 655
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 656
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v2

    move-object v12, v2

    move v2, v1

    move-object v1, v12

    .line 664
    :goto_4
    invoke-static {}, Lcom/mob/commons/g;->a()Lcom/mob/commons/g;

    move-result-object v3

    iget-object v4, p0, Lcom/mob/commons/c$2;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/mob/commons/g;->a(IILjava/lang/Throwable;Ljava/lang/String;)V

    .line 665
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_9
    :goto_5
    return-void
.end method
