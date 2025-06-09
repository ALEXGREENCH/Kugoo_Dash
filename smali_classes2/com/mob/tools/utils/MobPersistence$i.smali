.class Lcom/mob/tools/utils/MobPersistence$i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/MobPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/MobPersistence$i$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private d:Ljava/io/File;

.field private volatile e:Ljava/io/RandomAccessFile;

.field private volatile f:J

.field private volatile g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/mob/tools/utils/MobPersistence$i$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/mob/tools/utils/MobPersistence$g;",
            "Lcom/mob/tools/utils/MobPersistence$i$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/Context;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/io/File;

.field private final l:Lcom/mob/tools/utils/MobPersistence$f;

.field private final m:Lcom/mob/tools/utils/MobPersistence$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mob/tools/utils/MobPersistence$f;)V
    .locals 2

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 423
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 424
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 439
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->i:Landroid/content/Context;

    .line 440
    iput-object p2, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/mob/commons/p;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/commons/p;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->k:Ljava/io/File;

    .line 442
    iput-object p3, p0, Lcom/mob/tools/utils/MobPersistence$i;->l:Lcom/mob/tools/utils/MobPersistence$f;

    .line 443
    new-instance p1, Lcom/mob/tools/utils/MobPersistence$h;

    const/16 p2, 0x3c

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/mob/tools/utils/MobPersistence$h;-><init>(ILcom/mob/tools/utils/MobPersistence$1;)V

    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->m:Lcom/mob/tools/utils/MobPersistence$h;

    .line 444
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$i;->f()V

    return-void
.end method

.method private a(Lcom/mob/tools/utils/MobPersistence$g;)Lcom/mob/tools/utils/MobPersistence$i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/MobPersistence$i$a;

    if-nez v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$i;->j()V

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/MobPersistence$i$a;

    const/4 v1, 0x0

    .line 803
    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence$i$a;->a(Lcom/mob/tools/utils/MobPersistence$i$a;B)V

    .line 804
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$g;)Lcom/mob/tools/utils/MobPersistence$i$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 411
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$g;)Lcom/mob/tools/utils/MobPersistence$i$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$i;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->d:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$i;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$i;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mob/tools/utils/MobPersistence$j;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mob/tools/utils/MobPersistence$j;",
            ">;"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x7d0

    const-wide/16 v6, 0x32

    new-instance v8, Lcom/mob/tools/utils/MobPersistence$i$2;

    invoke-direct {v8, p0, p1, v0}, Lcom/mob/tools/utils/MobPersistence$i$2;-><init>(Lcom/mob/tools/utils/MobPersistence$i;Ljava/util/List;Ljava/util/List;)V

    invoke-static/range {v2 .. v8}, Lcom/mob/commons/p;->a(Ljava/lang/String;ZJJLcom/mob/commons/o;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 907
    throw p1
.end method

.method private a(II)V
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_0

    .line 675
    new-instance v0, Lcom/mob/tools/utils/MobPersistence$i$a;

    invoke-direct {v0, p1}, Lcom/mob/tools/utils/MobPersistence$i$a;-><init>(I)V

    .line 676
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i$a;->c(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mob/tools/utils/MobPersistence$i;->a(JB)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(J[BI)V
    .locals 3

    add-int/lit8 v0, p4, 0x7

    :goto_0
    if-lt v0, p4, :cond_0

    const-wide/16 v1, 0xff

    and-long/2addr v1, p1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 933
    aput-byte v1, p3, v0

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/mob/tools/utils/MobPersistence$i$a;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 622
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->d(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 623
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->e(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 624
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 625
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 626
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 628
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->c(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v1

    const-wide/16 v3, 0x11

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 629
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 630
    invoke-static {p1, p2, p3}, Lcom/mob/tools/utils/MobPersistence$i$a;->a(Lcom/mob/tools/utils/MobPersistence$i$a;J)V

    .line 632
    new-instance p2, Lcom/mob/tools/utils/MobPersistence$g;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->f(Lcom/mob/tools/utils/MobPersistence$i$a;)[B

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/mob/tools/utils/MobPersistence$g;-><init>([B)V

    .line 633
    iget-object p3, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/mob/tools/utils/MobPersistence$i$a;Lcom/mob/tools/utils/MobPersistence$j;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 747
    new-instance v0, Lcom/mob/tools/utils/MobPersistence$a;

    invoke-virtual/range {p2 .. p2}, Lcom/mob/tools/utils/MobPersistence$j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/mob/tools/utils/MobPersistence$j;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/mob/tools/utils/MobPersistence$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    iget-object v2, v1, Lcom/mob/tools/utils/MobPersistence$i;->l:Lcom/mob/tools/utils/MobPersistence$f;

    invoke-virtual {v0}, Lcom/mob/tools/utils/MobPersistence$a;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mob/tools/utils/MobPersistence$f;->a(Lcom/mob/tools/utils/MobPersistence$f;Ljava/lang/Object;)[B

    move-result-object v0

    .line 749
    iget-object v2, v1, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 753
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, v1, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 754
    :try_start_1
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 755
    :try_start_2
    iget-object v7, v1, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 756
    invoke-virtual {v9, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 757
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-array v6, v6, [Ljava/io/Closeable;

    aput-object v9, v6, v5

    aput-object v8, v6, v4

    .line 759
    invoke-static {v6}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    const/4 v11, 0x0

    .line 762
    invoke-static/range {p2 .. p2}, Lcom/mob/tools/utils/MobPersistence$j;->b(Lcom/mob/tools/utils/MobPersistence$j;)[B

    move-result-object v12

    array-length v0, v0

    int-to-long v13, v0

    invoke-static/range {p2 .. p2}, Lcom/mob/tools/utils/MobPersistence$j;->c(Lcom/mob/tools/utils/MobPersistence$j;)J

    move-result-wide v15

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v16}, Lcom/mob/tools/utils/MobPersistence$i$a;->a(B[BJJ)V

    move-object/from16 v0, p1

    .line 763
    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/MobPersistence$i$a;->d(Lcom/mob/tools/utils/MobPersistence$i$a;J)J

    .line 764
    invoke-direct/range {p0 .. p1}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i$a;)Z

    return-void

    :catchall_0
    move-exception v0

    move-object v7, v9

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v8, v7

    :goto_0
    new-array v2, v6, [Ljava/io/Closeable;

    aput-object v7, v2, v5

    aput-object v8, v2, v4

    .line 759
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 760
    throw v0
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 411
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 411
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->d(Lcom/mob/tools/utils/MobPersistence$i$a;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;Lcom/mob/tools/utils/MobPersistence$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i$a;Lcom/mob/tools/utils/MobPersistence$j;)V

    return-void
.end method

.method private a(J)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 539
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 540
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    return-object v1
.end method

.method private b(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x11

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 548
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 550
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$i;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method static synthetic b(Lcom/mob/tools/utils/MobPersistence$i;)Landroid/content/Context;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$i;->i:Landroid/content/Context;

    return-object p0
.end method

.method private b(II)Ljava/lang/String;
    .locals 2

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 663
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 665
    invoke-direct {p0, v0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->a(II)V

    .line 666
    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->a(I)V

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->f:J

    .line 668
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 669
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->f:J

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 670
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "new a "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " u "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/mob/tools/utils/MobPersistence$g;)Z
    .locals 1

    .line 1133
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$i;->i()Z

    .line 1134
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/MobPersistence$i$a;

    if-eqz v0, :cond_0

    .line 1136
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/MobPersistence$i;->d(Lcom/mob/tools/utils/MobPersistence$i$a;)V

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->m:Lcom/mob/tools/utils/MobPersistence$h;

    invoke-static {v0, p1}, Lcom/mob/tools/utils/MobPersistence$h;->b(Lcom/mob/tools/utils/MobPersistence$h;Lcom/mob/tools/utils/MobPersistence$g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 1141
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$g;)Z
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->b(Lcom/mob/tools/utils/MobPersistence$g;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;)Z
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i$a;)Z

    move-result p0

    return p0
.end method

.method private c(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x19

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 559
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 561
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$i;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method static synthetic c(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/File;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$i;->d:Ljava/io/File;

    return-object p0
.end method

.method private c(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 734
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$i;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 736
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/utils/MobPersistence$i;->b(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 732
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Lcom/mob/tools/utils/MobPersistence$i$a;)Z
    .locals 7

    const/16 v0, 0x29

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    aput-byte v1, v0, v1

    .line 915
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->f(Lcom/mob/tools/utils/MobPersistence$i$a;)[B

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 917
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->e(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v2

    const/16 v5, 0x11

    invoke-direct {p0, v2, v3, v0, v5}, Lcom/mob/tools/utils/MobPersistence$i;->a(J[BI)V

    .line 918
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->d(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v2

    const/16 v5, 0x19

    invoke-direct {p0, v2, v3, v0, v5}, Lcom/mob/tools/utils/MobPersistence$i;->a(J[BI)V

    .line 919
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->h(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v2

    const/16 v5, 0x21

    invoke-direct {p0, v2, v3, v0, v5}, Lcom/mob/tools/utils/MobPersistence$i;->a(J[BI)V

    .line 920
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->c(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 921
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    move-exception p1

    .line 924
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic c(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 411
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->f(Lcom/mob/tools/utils/MobPersistence$i$a;)[B

    move-result-object p0

    return-object p0
.end method

.method private d(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x21

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 570
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 572
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$i;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private d(Lcom/mob/tools/utils/MobPersistence$i$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1148
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->e(Lcom/mob/tools/utils/MobPersistence$i$a;)V

    .line 1151
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$i;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1154
    throw p1
.end method

.method static synthetic d(Lcom/mob/tools/utils/MobPersistence$i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 411
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$i;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/util/LinkedList;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    return-object p0
.end method

.method private e(Lcom/mob/tools/utils/MobPersistence$i$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/mob/tools/utils/MobPersistence$g;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->f(Lcom/mob/tools/utils/MobPersistence$i$a;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mob/tools/utils/MobPersistence$g;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1177
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 1178
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1179
    invoke-virtual {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->f()V

    return-void
.end method

.method static synthetic f(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/util/HashMap;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    return-object p0
.end method

.method private f()V
    .locals 8

    .line 460
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x5dc

    const-wide/16 v5, 0x32

    new-instance v7, Lcom/mob/tools/utils/MobPersistence$i$1;

    invoke-direct {v7, p0}, Lcom/mob/tools/utils/MobPersistence$i$1;-><init>(Lcom/mob/tools/utils/MobPersistence$i;)V

    invoke-static/range {v1 .. v7}, Lcom/mob/commons/p;->a(Ljava/lang/String;ZJJLcom/mob/commons/o;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 496
    throw v0
.end method

.method private f(Lcom/mob/tools/utils/MobPersistence$i$a;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1185
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1186
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->d(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v0

    long-to-int p1, v0

    new-array p1, p1, [B

    .line 1187
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-object p1
.end method

.method private g()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, " [trim] try "

    .line 585
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x29

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    add-long/2addr v0, v2

    .line 587
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 589
    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/utils/MobPersistence$i$a;

    .line 590
    invoke-virtual {v7}, Lcom/mob/tools/utils/MobPersistence$i$a;->c()J

    move-result-wide v7

    long-to-double v7, v7

    add-double/2addr v5, v7

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v0

    long-to-double v7, v2

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v5, v7

    if-gtz v4, :cond_5

    .line 595
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$i;->h()Ljava/util/ArrayList;

    move-result-object v4

    .line 597
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v5, v0

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mob/tools/utils/MobPersistence$i$a;

    .line 598
    invoke-virtual {v7}, Lcom/mob/tools/utils/MobPersistence$i$a;->e()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 599
    invoke-direct {p0, v7}, Lcom/mob/tools/utils/MobPersistence$i;->e(Lcom/mob/tools/utils/MobPersistence$i$a;)V

    goto :goto_1

    .line 600
    :cond_2
    invoke-virtual {v7}, Lcom/mob/tools/utils/MobPersistence$i$a;->b()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-nez v8, :cond_3

    .line 601
    invoke-virtual {v7}, Lcom/mob/tools/utils/MobPersistence$i$a;->c()J

    move-result-wide v7

    :goto_2
    add-long/2addr v5, v7

    goto :goto_1

    .line 602
    :cond_3
    invoke-virtual {v7}, Lcom/mob/tools/utils/MobPersistence$i$a;->b()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-lez v8, :cond_1

    .line 603
    invoke-direct {p0, v7, v5, v6}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i$a;J)V

    .line 604
    invoke-virtual {v7}, Lcom/mob/tools/utils/MobPersistence$i$a;->c()J

    move-result-wide v7

    goto :goto_2

    .line 607
    :cond_4
    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " [trim] real over  before dataBlockSize "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cur "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic g(Lcom/mob/tools/utils/MobPersistence$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 411
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$i;->k()V

    return-void
.end method

.method static synthetic h(Lcom/mob/tools/utils/MobPersistence$i;)Lcom/mob/tools/utils/MobPersistence$f;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$i;->l:Lcom/mob/tools/utils/MobPersistence$f;

    return-object p0
.end method

.method private h()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/utils/MobPersistence$i$a;",
            ">;"
        }
    .end annotation

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 615
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic i(Lcom/mob/tools/utils/MobPersistence$i;)Lcom/mob/tools/utils/MobPersistence$h;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$i;->m:Lcom/mob/tools/utils/MobPersistence$h;

    return-object p0
.end method

.method private i()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 684
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$i;->l()J

    move-result-wide v3

    .line 685
    iget-wide v5, p0, Lcom/mob/tools/utils/MobPersistence$i;->f:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    .line 686
    iget-object v5, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 688
    :try_start_0
    iget-object v5, p0, Lcom/mob/tools/utils/MobPersistence$i;->m:Lcom/mob/tools/utils/MobPersistence$h;

    invoke-static {v5}, Lcom/mob/tools/utils/MobPersistence$h;->a(Lcom/mob/tools/utils/MobPersistence$h;)V

    .line 689
    iput-wide v3, p0, Lcom/mob/tools/utils/MobPersistence$i;->f:J

    .line 690
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    .line 691
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    .line 692
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$i;->c()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    .line 694
    new-instance v5, Lcom/mob/tools/utils/MobPersistence$i$a;

    invoke-direct {v5, v4}, Lcom/mob/tools/utils/MobPersistence$i$a;-><init>(I)V

    .line 695
    invoke-virtual {p0, v5}, Lcom/mob/tools/utils/MobPersistence$i;->b(Lcom/mob/tools/utils/MobPersistence$i$a;)B

    move-result v6

    if-ne v6, v0, :cond_0

    .line 696
    iget-object v6, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 698
    :cond_0
    invoke-virtual {p0, v5}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i$a;)V

    .line 699
    iget-object v6, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    new-instance v7, Lcom/mob/tools/utils/MobPersistence$g;

    invoke-static {v5}, Lcom/mob/tools/utils/MobPersistence$i$a;->f(Lcom/mob/tools/utils/MobPersistence$i$a;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mob/tools/utils/MobPersistence$g;-><init>([B)V

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 702
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update lstt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mob/tools/utils/MobPersistence$i;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " u "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    aput-boolean v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 706
    throw v0

    :cond_2
    :goto_2
    aget-boolean v0, v1, v2

    return v0
.end method

.method static synthetic j(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method private j()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 974
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$i;->c()I

    move-result v0

    add-int/lit16 v1, v0, 0x400

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[exp] old "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, v1

    const-wide/16 v4, 0x29

    mul-long/2addr v2, v4

    const-wide/16 v6, 0x400

    add-long/2addr v2, v6

    .line 978
    iget-object v8, p0, Lcom/mob/tools/utils/MobPersistence$i;->h:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    iget-object v9, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v8, v8

    mul-long/2addr v8, v4

    add-long/2addr v8, v6

    cmp-long v4, v8, v2

    if-gez v4, :cond_3

    .line 980
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$i;->h()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mob/tools/utils/MobPersistence$i$a;

    .line 981
    invoke-virtual {v5}, Lcom/mob/tools/utils/MobPersistence$i$a;->b()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-ltz v6, :cond_1

    goto :goto_1

    .line 984
    :cond_1
    invoke-virtual {v5}, Lcom/mob/tools/utils/MobPersistence$i$a;->b()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/mob/tools/utils/MobPersistence$i$a;->c()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 985
    invoke-virtual {v5}, Lcom/mob/tools/utils/MobPersistence$i$a;->e()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 986
    invoke-direct {p0, v5}, Lcom/mob/tools/utils/MobPersistence$i;->e(Lcom/mob/tools/utils/MobPersistence$i$a;)V

    goto :goto_0

    .line 988
    :cond_2
    iget-object v8, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-direct {p0, v5, v8, v9}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i$a;J)V

    :goto_0
    cmp-long v5, v6, v2

    if-ltz v5, :cond_0

    .line 996
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_2
    if-ge v0, v1, :cond_4

    .line 998
    new-instance v3, Lcom/mob/tools/utils/MobPersistence$i$a;

    invoke-direct {v3, v0}, Lcom/mob/tools/utils/MobPersistence$i$a;-><init>(I)V

    .line 999
    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$i;->g:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence$i$a;->c(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Lcom/mob/tools/utils/MobPersistence$i;->a(JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "[exp] ovr"

    .line 1002
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0, v1}, Lcom/mob/tools/utils/MobPersistence$i;->a(I)V

    return-void
.end method

.method private k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1160
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1161
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$i;->g()V

    .line 1163
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->f:J

    .line 1164
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1165
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    return-void
.end method

.method private l()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1170
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/MobPersistence$g;Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mob/tools/utils/MobPersistence$g;",
            "Lcom/mob/tools/utils/MobPersistence$e<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v8, p0

    const/4 v0, 0x1

    new-array v9, v0, [[B

    new-array v10, v0, [J

    new-array v11, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    .line 1012
    iget-object v1, v8, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1014
    :try_start_0
    iget-object v1, v8, Lcom/mob/tools/utils/MobPersistence$i;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const-wide/16 v14, 0x5dc

    const-wide/16 v16, 0x32

    new-instance v18, Lcom/mob/tools/utils/MobPersistence$i$4;

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v11

    move-object v5, v0

    move-object v6, v10

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/mob/tools/utils/MobPersistence$i$4;-><init>(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$g;[I[Ljava/lang/Object;[J[[B)V

    invoke-static/range {v12 .. v18}, Lcom/mob/commons/p;->a(Ljava/lang/String;ZJJLcom/mob/commons/o;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    iget-object v1, v8, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v1, 0x0

    aget v2, v11, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne v2, v0, :cond_3

    .line 1060
    iget-object v0, v8, Lcom/mob/tools/utils/MobPersistence$i;->l:Lcom/mob/tools/utils/MobPersistence$f;

    aget-object v2, v9, v1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/mob/tools/utils/MobPersistence$f;->a(Lcom/mob/tools/utils/MobPersistence$f;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1061
    instance-of v2, v0, Lcom/mob/tools/utils/MobPersistence$KVEntry;

    if-eqz v2, :cond_1

    .line 1062
    check-cast v0, Lcom/mob/tools/utils/MobPersistence$KVEntry;

    .line 1063
    new-instance v2, Lcom/mob/tools/utils/MobPersistence$a;

    invoke-virtual {v0}, Lcom/mob/tools/utils/MobPersistence$KVEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mob/tools/utils/MobPersistence$KVEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/mob/tools/utils/MobPersistence$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1065
    :cond_1
    check-cast v0, Ljava/util/HashMap;

    .line 1066
    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$a;->a(Ljava/util/HashMap;)Lcom/mob/tools/utils/MobPersistence$a;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 1069
    invoke-virtual {v2}, Lcom/mob/tools/utils/MobPersistence$a;->a()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/MobPersistence$e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1070
    new-instance v2, Lcom/mob/tools/utils/MobPersistence$c;

    aget-wide v4, v10, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v0, v3}, Lcom/mob/tools/utils/MobPersistence$c;-><init>(JLjava/lang/Object;Lcom/mob/tools/utils/MobPersistence$1;)V

    .line 1071
    iget-object v1, v8, Lcom/mob/tools/utils/MobPersistence$i;->m:Lcom/mob/tools/utils/MobPersistence$h;

    move-object/from16 v3, p1

    invoke-static {v1, v3, v2}, Lcom/mob/tools/utils/MobPersistence$h;->a(Lcom/mob/tools/utils/MobPersistence$h;Lcom/mob/tools/utils/MobPersistence$g;Lcom/mob/tools/utils/MobPersistence$c;)V

    return-object v0

    .line 1074
    :cond_2
    new-instance v0, Lcom/mob/tools/utils/MobPersistence$NoValidDataException;

    invoke-direct {v0}, Lcom/mob/tools/utils/MobPersistence$NoValidDataException;-><init>()V

    throw v0

    .line 1077
    :cond_3
    new-instance v0, Lcom/mob/tools/utils/MobPersistence$NoValidDataException;

    invoke-direct {v0}, Lcom/mob/tools/utils/MobPersistence$NoValidDataException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    .line 1054
    iget-object v1, v8, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1055
    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 653
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 655
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 658
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 648
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "indexNum : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(JB)V
    .locals 1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 725
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Lcom/mob/tools/utils/MobPersistence$i$a;)V
    .locals 3

    .line 502
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->b(Lcom/mob/tools/utils/MobPersistence$i$a;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/MobPersistence$i;->c(I)V

    .line 503
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 505
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence$i$a;->a(Lcom/mob/tools/utils/MobPersistence$i$a;B)V

    .line 506
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->c(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/utils/MobPersistence$i;->a(J)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence$i$a;->a(Lcom/mob/tools/utils/MobPersistence$i$a;[B)V

    .line 507
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->c(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/utils/MobPersistence$i;->b(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/mob/tools/utils/MobPersistence$i$a;->a(Lcom/mob/tools/utils/MobPersistence$i$a;J)V

    .line 508
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->c(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/utils/MobPersistence$i;->c(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/mob/tools/utils/MobPersistence$i$a;->b(Lcom/mob/tools/utils/MobPersistence$i$a;J)V

    .line 509
    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->c(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/utils/MobPersistence$i;->d(J)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/mob/tools/utils/MobPersistence$i$a;->c(Lcom/mob/tools/utils/MobPersistence$i$a;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 511
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mob/tools/utils/MobPersistence$g;Z)Z
    .locals 9

    .line 1111
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1115
    :try_start_0
    iget-object p2, p0, Lcom/mob/tools/utils/MobPersistence$i;->k:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x5dc

    const-wide/16 v6, 0x32

    new-instance v8, Lcom/mob/tools/utils/MobPersistence$i$6;

    invoke-direct {v8, p0, v0, p1}, Lcom/mob/tools/utils/MobPersistence$i$6;-><init>(Lcom/mob/tools/utils/MobPersistence$i;[ZLcom/mob/tools/utils/MobPersistence$g;)V

    invoke-static/range {v2 .. v8}, Lcom/mob/commons/p;->a(Ljava/lang/String;ZJJLcom/mob/commons/o;)Z

    goto :goto_0

    .line 1123
    :cond_0
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$i;->b(Lcom/mob/tools/utils/MobPersistence$g;)Z

    move-result p1

    aput-boolean p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    :goto_0
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    aget-boolean p1, v0, v1

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1127
    throw p1
.end method

.method public b(Lcom/mob/tools/utils/MobPersistence$i$a;)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i$a;->c(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 714
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 716
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-object v0
.end method

.method public c()I
    .locals 3

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 639
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 641
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 9

    .line 942
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 945
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x5dc

    const-wide/16 v6, 0x32

    new-instance v8, Lcom/mob/tools/utils/MobPersistence$i$3;

    invoke-direct {v8, p0, v0}, Lcom/mob/tools/utils/MobPersistence$i$3;-><init>(Lcom/mob/tools/utils/MobPersistence$i;[Z)V

    invoke-static/range {v2 .. v8}, Lcom/mob/commons/p;->a(Ljava/lang/String;ZJJLcom/mob/commons/o;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 969
    throw v0
.end method

.method public e()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1083
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x5dc

    const-wide/16 v6, 0x32

    new-instance v8, Lcom/mob/tools/utils/MobPersistence$i$5;

    invoke-direct {v8, p0, v0}, Lcom/mob/tools/utils/MobPersistence$i$5;-><init>(Lcom/mob/tools/utils/MobPersistence$i;Ljava/util/List;)V

    invoke-static/range {v2 .. v8}, Lcom/mob/commons/p;->a(Ljava/lang/String;ZJJLcom/mob/commons/o;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1103
    throw v0
.end method
