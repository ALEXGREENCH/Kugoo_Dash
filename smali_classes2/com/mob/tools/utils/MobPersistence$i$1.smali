.class Lcom/mob/tools/utils/MobPersistence$i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/MobPersistence$i;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/MobPersistence$i;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/MobPersistence$i;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 6

    const-string p1, "ava sz "

    const-string v0, ", min: 43008"

    const-string v1, "Del dirty, size: "

    .line 466
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->b(Lcom/mob/tools/utils/MobPersistence$i;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 467
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->b(Lcom/mob/tools/utils/MobPersistence$i;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 468
    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v5}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;Ljava/io/File;)Ljava/io/File;

    .line 469
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xa800

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v1}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v1}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 478
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 479
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v1}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/File;

    move-result-object v1

    const-string v2, "002?ekgh"

    invoke-static {v2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    .line 480
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    const/16 v0, 0x400

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;I)V

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/File;

    move-result-object v2

    const-string v3, "002\'ekgh"

    invoke-static {v3}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    .line 483
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->d(Lcom/mob/tools/utils/MobPersistence$i;)Z

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i;->e(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " useds "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->f(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 489
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$1;->a:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
