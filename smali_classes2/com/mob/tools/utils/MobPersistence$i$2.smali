.class Lcom/mob/tools/utils/MobPersistence$i$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/MobPersistence$i;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/mob/tools/utils/MobPersistence$i;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/MobPersistence$i;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    iput-object p2, p0, Lcom/mob/tools/utils/MobPersistence$i$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mob/tools/utils/MobPersistence$i$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 22

    move-object/from16 v1, p0

    const-string v2, "set fail "

    .line 823
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 824
    iget-object v0, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->d(Lcom/mob/tools/utils/MobPersistence$i;)Z

    .line 825
    iget-object v0, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_6

    .line 826
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 827
    iget-object v0, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [[B

    .line 828
    iget-object v8, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    if-ge v9, v8, :cond_0

    .line 830
    iget-object v11, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->a:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mob/tools/utils/MobPersistence$j;

    .line 831
    new-instance v12, Lcom/mob/tools/utils/MobPersistence$g;

    invoke-static {v11}, Lcom/mob/tools/utils/MobPersistence$j;->b(Lcom/mob/tools/utils/MobPersistence$j;)[B

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/mob/tools/utils/MobPersistence$g;-><init>([B)V

    .line 832
    new-instance v13, Lcom/mob/tools/utils/MobPersistence$a;

    invoke-virtual {v11}, Lcom/mob/tools/utils/MobPersistence$j;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/mob/tools/utils/MobPersistence$j;->c()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/mob/tools/utils/MobPersistence$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 834
    iget-object v14, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v14}, Lcom/mob/tools/utils/MobPersistence$i;->h(Lcom/mob/tools/utils/MobPersistence$i;)Lcom/mob/tools/utils/MobPersistence$f;

    move-result-object v14

    invoke-virtual {v13}, Lcom/mob/tools/utils/MobPersistence$a;->b()Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/mob/tools/utils/MobPersistence$f;->a(Lcom/mob/tools/utils/MobPersistence$f;Ljava/lang/Object;)[B

    move-result-object v13

    .line 835
    iget-object v14, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v14, v12}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$g;)Lcom/mob/tools/utils/MobPersistence$i$a;

    move-result-object v12

    const/16 v16, 0x0

    .line 836
    invoke-static {v11}, Lcom/mob/tools/utils/MobPersistence$j;->b(Lcom/mob/tools/utils/MobPersistence$j;)[B

    move-result-object v17

    array-length v14, v13

    int-to-long v14, v14

    invoke-static {v11}, Lcom/mob/tools/utils/MobPersistence$j;->c(Lcom/mob/tools/utils/MobPersistence$j;)J

    move-result-wide v20

    move-wide/from16 v18, v14

    move-object v15, v12

    invoke-virtual/range {v15 .. v21}, Lcom/mob/tools/utils/MobPersistence$i$a;->a(B[BJJ)V

    .line 837
    iget-object v14, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v14}, Lcom/mob/tools/utils/MobPersistence$i;->i(Lcom/mob/tools/utils/MobPersistence$i;)Lcom/mob/tools/utils/MobPersistence$h;

    move-result-object v14

    new-instance v15, Lcom/mob/tools/utils/MobPersistence$g;

    invoke-static {v11}, Lcom/mob/tools/utils/MobPersistence$j;->d(Lcom/mob/tools/utils/MobPersistence$j;)[B

    move-result-object v6

    invoke-direct {v15, v6}, Lcom/mob/tools/utils/MobPersistence$g;-><init>([B)V

    new-instance v6, Lcom/mob/tools/utils/MobPersistence$c;

    move-wide/from16 v17, v4

    .line 838
    invoke-static {v11}, Lcom/mob/tools/utils/MobPersistence$j;->c(Lcom/mob/tools/utils/MobPersistence$j;)J

    move-result-wide v3

    invoke-static {v11}, Lcom/mob/tools/utils/MobPersistence$j;->e(Lcom/mob/tools/utils/MobPersistence$j;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v6, v3, v4, v5, v10}, Lcom/mob/tools/utils/MobPersistence$c;-><init>(JLjava/lang/Object;Lcom/mob/tools/utils/MobPersistence$1;)V

    .line 837
    invoke-static {v14, v15, v6}, Lcom/mob/tools/utils/MobPersistence$h;->a(Lcom/mob/tools/utils/MobPersistence$h;Lcom/mob/tools/utils/MobPersistence$g;Lcom/mob/tools/utils/MobPersistence$c;)V

    .line 839
    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 840
    aput-object v13, v7, v9

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v4, v17

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v17, v4

    .line 843
    iget-object v3, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence$i;->j(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/RandomAccessFile;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v5, 0x2

    .line 849
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v9, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v9}, Lcom/mob/tools/utils/MobPersistence$i;->j(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/RandomAccessFile;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 850
    :try_start_2
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 851
    :try_start_3
    iget-object v10, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v10}, Lcom/mob/tools/utils/MobPersistence$i;->j(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/RandomAccessFile;

    move-result-object v10

    iget-object v11, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v11}, Lcom/mob/tools/utils/MobPersistence$i;->j(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/io/RandomAccessFile;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v0, :cond_1

    .line 852
    aget-object v11, v7, v10

    .line 853
    array-length v12, v11

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v13, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 855
    :cond_1
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-array v0, v5, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v9, v0, v5

    const/4 v5, 0x1

    aput-object v6, v0, v5

    .line 867
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/4 v6, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v10, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v6, v10

    .line 858
    :goto_2
    :try_start_5
    iget-object v9, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v9}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sta err sz "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v9}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mob/tools/utils/MobPersistence$i$a;

    .line 861
    invoke-static {v9}, Lcom/mob/tools/utils/MobPersistence$i$a;->g(Lcom/mob/tools/utils/MobPersistence$i$a;)B

    move-result v11

    if-nez v11, :cond_2

    .line 862
    iget-object v11, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v11, v9}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;)V

    goto :goto_3

    .line 865
    :cond_3
    iget-object v0, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->b:Ljava/util/List;

    iget-object v9, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->a:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-array v0, v5, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v10, v0, v5

    const/4 v5, 0x1

    aput-object v6, v0, v5

    .line 867
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_5

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v8, :cond_5

    .line 872
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mob/tools/utils/MobPersistence$i$a;

    .line 873
    invoke-static {v5, v3, v4}, Lcom/mob/tools/utils/MobPersistence$i$a;->d(Lcom/mob/tools/utils/MobPersistence$i$a;J)J

    .line 874
    iget-object v6, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v6, v5}, Lcom/mob/tools/utils/MobPersistence$i;->b(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 875
    aget-object v5, v7, v0

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    goto :goto_6

    .line 877
    :cond_4
    iget-object v6, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v6, v5}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;)V

    .line 878
    iget-object v5, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->b:Ljava/util/List;

    iget-object v6, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->a:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 883
    :cond_5
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_7

    :catchall_3
    move-exception v0

    new-array v2, v5, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    .line 867
    invoke-static {v2}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 868
    throw v0

    :cond_6
    move-wide/from16 v17, v4

    .line 885
    iget-object v0, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/mob/tools/utils/MobPersistence$j;

    .line 886
    new-instance v0, Lcom/mob/tools/utils/MobPersistence$g;

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence$j;->b(Lcom/mob/tools/utils/MobPersistence$j;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/mob/tools/utils/MobPersistence$g;-><init>([B)V

    .line 887
    iget-object v4, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v4, v0}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$g;)Lcom/mob/tools/utils/MobPersistence$i$a;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 889
    :try_start_7
    iget-object v0, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0, v4, v3}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;Lcom/mob/tools/utils/MobPersistence$j;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    .line 891
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v0, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0, v4}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;)V

    .line 893
    iget-object v0, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    :goto_7
    iget-object v0, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->g(Lcom/mob/tools/utils/MobPersistence$i;)V

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " all cost "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->a:Ljava/util/List;

    .line 898
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v2

    .line 897
    invoke-static {v0, v2}, Lcom/mob/tools/utils/MobPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    .line 900
    iget-object v2, v1, Lcom/mob/tools/utils/MobPersistence$i$2;->c:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_8
    const/4 v2, 0x0

    return v2
.end method
