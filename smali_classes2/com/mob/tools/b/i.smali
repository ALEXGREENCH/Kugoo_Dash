.class public Lcom/mob/tools/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/b/i$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/mob/tools/b/b;

.field private volatile f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/b/i;->f:Ljava/util/Set;

    .line 67
    iput-object p1, p0, Lcom/mob/tools/b/i;->d:Landroid/content/Context;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/b/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/b/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    invoke-static {p1}, Lcom/mob/tools/b/b;->a(Landroid/content/Context;)Lcom/mob/tools/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    .line 71
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/b/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    return-void
.end method

.method private a(Ljava/lang/reflect/Type;)I
    .locals 5

    .line 1837
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 1838
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 1839
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 1845
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_8

    .line 1848
    :try_start_0
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 1849
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1850
    check-cast v0, Ljava/lang/Class;

    .line 1851
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    .line 1852
    aget-object v3, p1, v0

    .line 1853
    array-length v4, p1

    if-ne v4, v2, :cond_2

    .line 1854
    aget-object v3, p1, v1

    .line 1857
    :cond_2
    instance-of p1, v3, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x4

    if-eqz p1, :cond_5

    .line 1858
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 1859
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 1860
    check-cast p1, Ljava/lang/Class;

    .line 1861
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 1862
    aget-object v0, p1, v0

    .line 1863
    array-length v3, p1

    if-ne v3, v2, :cond_3

    .line 1864
    aget-object v0, p1, v1

    .line 1866
    :cond_3
    instance-of p1, v0, Ljava/lang/Class;

    if-eqz p1, :cond_4

    .line 1867
    check-cast v0, Ljava/lang/Class;

    :cond_4
    return v4

    .line 1873
    :cond_5
    instance-of p1, v3, Ljava/lang/Class;

    if-eqz p1, :cond_7

    .line 1874
    check-cast v3, Ljava/lang/Class;

    .line 1875
    const-class p1, Landroid/os/Parcelable;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    const/4 p1, 0x3

    return p1

    :cond_6
    return v4

    :catchall_0
    move-exception p1

    .line 1882
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_7
    const/4 p1, -0x1

    return p1

    :cond_8
    const/16 p1, 0x9

    return p1
.end method

.method static synthetic a(Lcom/mob/tools/b/i;Ljava/util/Calendar;)J
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/mob/tools/b/i;->a(Ljava/util/Calendar;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Ljava/util/Calendar;)J
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 1899
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 1900
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 1901
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 1902
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 1903
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1904
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/mob/tools/b/i;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mob/tools/b/i;->d:Landroid/content/Context;

    return-object p1
.end method

.method private a(ZILjava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .locals 18

    move-object/from16 v8, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    const-string v0, "1009"

    .line 1013
    invoke-static {v0, v10}, Lcom/mob/tools/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "gpi-"

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "-"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Lcom/mob/tools/b/i$40;

    const/4 v2, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move v3, v13

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v16, v6

    move/from16 v6, p4

    move-object/from16 v17, v7

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/mob/tools/b/i$40;-><init>(Lcom/mob/tools/b/i;Landroid/content/pm/PackageInfo;ZILjava/lang/String;IZ)V

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-direct {v8, v13, v0, v10}, Lcom/mob/tools/b/i;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    .line 1014
    invoke-direct {v8, v1, v2, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/b/i;)Lcom/mob/tools/b/b;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/mob/tools/b/i$a<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1512
    invoke-direct {p0, p1, p2, v0}, Lcom/mob/tools/b/i;->a(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/mob/tools/b/i$a<",
            "TT;>;Z)TT;"
        }
    .end annotation

    const-string v0, "M|C, key: "

    const-string v1, "M|A, key: "

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 1527
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/b/i;->h(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p2}, Lcom/mob/tools/b/i$a;->b()Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_6

    .line 1531
    :cond_0
    iget-object v3, p0, Lcom/mob/tools/b/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 1534
    iget-object v4, p0, Lcom/mob/tools/b/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_2

    if-nez p3, :cond_2

    .line 1537
    :try_start_1
    iget-object p1, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    return-object p1

    :cond_1
    move-object v4, v2

    .line 1540
    :cond_2
    iget-object v5, p0, Lcom/mob/tools/b/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 1543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-ltz v5, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    if-nez v5, :cond_4

    .line 1547
    invoke-direct {p0, v4}, Lcom/mob/tools/b/i;->a(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/mob/tools/b/i;->f:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    move v6, v7

    :cond_4
    if-nez p3, :cond_6

    if-eqz v4, :cond_6

    if-nez v5, :cond_6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 1571
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/b/i;->h(Ljava/lang/String;)V

    move-object p1, v4

    goto/16 :goto_6

    .line 1552
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_7

    const-string v2, "FC"

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_9

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_a

    const-string p3, "002@eggj"

    invoke-static {p3}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    :goto_2
    const-string v2, "NVC"

    :cond_a
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/mob/tools/b/i;->h(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p2}, Lcom/mob/tools/b/i$a;->b()Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1555
    :try_start_2
    iget-object p3, p0, Lcom/mob/tools/b/i;->f:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_b

    .line 1558
    iget-object p3, p0, Lcom/mob/tools/b/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    invoke-virtual {p2, v2}, Lcom/mob/tools/b/i$a;->a(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p3, v0, v4

    if-lez p3, :cond_b

    .line 1561
    iget-object p3, p0, Lcom/mob/tools/b/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v2}, Lcom/mob/tools/b/i$a;->a(Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-nez v3, :cond_c

    .line 1566
    iget-object p3, p0, Lcom/mob/tools/b/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1568
    :cond_c
    iget-object p3, p0, Lcom/mob/tools/b/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 1575
    :goto_4
    instance-of p3, p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz p3, :cond_d

    .line 1576
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    goto :goto_5

    .line 1578
    :cond_d
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_5
    move-object p1, v2

    :goto_6
    if-nez p1, :cond_e

    .line 1583
    iget-object p1, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    :cond_e
    return-object p1
.end method

.method private a(Lcom/mob/tools/b/i$a;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mob/tools/b/i$a<",
            "TT;>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1809
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 1810
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1812
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;JLcom/mob/tools/b/i$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;J",
            "Lcom/mob/tools/b/i$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1757
    :try_start_0
    invoke-direct {p0, p5}, Lcom/mob/tools/b/i;->a(Lcom/mob/tools/b/i$a;)Ljava/lang/reflect/Type;

    move-result-object p5

    .line 1758
    invoke-direct {p0, p5}, Lcom/mob/tools/b/i;->a(Ljava/lang/reflect/Type;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1761
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    check-cast p2, [Landroid/os/Parcelable;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;[Landroid/os/Parcelable;J)V

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1768
    check-cast p5, Ljava/lang/reflect/ParameterizedType;

    .line 1769
    invoke-interface {p5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p5

    .line 1770
    check-cast p5, Ljava/lang/Class;

    .line 1772
    const-class v0, Ljava/util/List;

    if-eq p5, v0, :cond_4

    const-class v0, Ljava/util/LinkedList;

    if-eq p5, v0, :cond_4

    const-class v0, Ljava/util/ArrayList;

    if-ne p5, v0, :cond_2

    goto :goto_0

    .line 1774
    :cond_2
    const-class v0, Ljava/util/Map;

    if-eq p5, v0, :cond_3

    const-class v0, Ljava/util/HashMap;

    if-eq p5, v0, :cond_3

    const-class v0, Ljava/util/TreeMap;

    if-eq p5, v0, :cond_3

    const-class v0, Ljava/util/Hashtable;

    if-ne p5, v0, :cond_e

    .line 1775
    :cond_3
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/util/Map;J)V

    goto/16 :goto_2

    .line 1773
    :cond_4
    :goto_0
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    check-cast p2, Ljava/util/List;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/util/List;J)V

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0x9

    if-ne v0, v1, :cond_c

    .line 1779
    check-cast p5, Ljava/lang/Class;

    if-eqz p5, :cond_e

    .line 1781
    const-class v0, Ljava/lang/Integer;

    if-ne p5, v0, :cond_6

    .line 1782
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Integer;J)V

    goto/16 :goto_2

    .line 1783
    :cond_6
    const-class v0, Ljava/lang/Long;

    if-ne p5, v0, :cond_7

    .line 1784
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Long;J)V

    goto :goto_2

    .line 1785
    :cond_7
    const-class v0, Ljava/lang/Double;

    if-ne p5, v0, :cond_8

    .line 1786
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Double;J)V

    goto :goto_2

    .line 1787
    :cond_8
    const-class v0, Ljava/lang/Boolean;

    if-ne p5, v0, :cond_9

    .line 1788
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Boolean;J)V

    goto :goto_2

    .line 1789
    :cond_9
    const-class v0, Ljava/lang/String;

    if-ne p5, v0, :cond_a

    .line 1790
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    .line 1791
    :cond_a
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p5

    if-eqz p5, :cond_b

    .line 1792
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Landroid/os/Parcelable;J)V

    goto :goto_2

    .line 1794
    :cond_b
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_2

    .line 1799
    :cond_c
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_2

    .line 1764
    :cond_d
    :goto_1
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1802
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_e
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1498
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1499
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 1500
    :cond_1
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 1501
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_4

    goto :goto_0

    .line 1502
    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1503
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 1504
    :cond_3
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 1505
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1911
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1912
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdir_able_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1913
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, p1, :cond_0

    .line 1916
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    .line 1924
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1925
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "key_almdf-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1926
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/h;->c(Ljava/lang/String;)J

    move-result-wide v0

    .line 1927
    invoke-direct {p0, p3}, Lcom/mob/tools/b/i;->g(Ljava/lang/String;)J

    move-result-wide p2

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 1929
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/mob/tools/b/i;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/mob/tools/b/i;->d:Landroid/content/Context;

    return-object p0
.end method

.method private b(ZILjava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .locals 8

    .line 1478
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1479
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc1

    if-eqz p4, :cond_1

    const/4 v1, 0x1

    if-eq p4, v1, :cond_1

    const/16 v1, 0x80

    if-eq p4, v1, :cond_1

    const/16 v1, 0x40

    if-ne p4, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, v1

    move v7, p5

    .line 1485
    invoke-direct/range {v2 .. v7}, Lcom/mob/tools/b/i;->a(ZILjava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_2

    if-ne v1, v0, :cond_2

    .line 1487
    invoke-direct/range {p0 .. p5}, Lcom/mob/tools/b/i;->a(ZILjava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v2

    :cond_2
    return-object v2

    .line 1491
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/mob/tools/b/i;->a(ZILjava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/mob/tools/b/i$a<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1589
    invoke-direct {p0, p1, p2, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/mob/tools/b/i$a<",
            "TT;>;Z)TT;"
        }
    .end annotation

    const-string v1, "F|C, key: "

    const/4 v3, 0x0

    .line 1594
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v4, "F|A, key: "

    if-eqz v0, :cond_0

    .line 1595
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/b/i;->h(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p2}, Lcom/mob/tools/b/i$a;->b()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto/16 :goto_7

    :cond_0
    const/4 v5, 0x0

    if-nez p3, :cond_1

    const/4 v0, 0x1

    .line 1604
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/b/i;->c(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1605
    :try_start_3
    invoke-direct {p0, v6}, Lcom/mob/tools/b/i;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/mob/tools/b/i;->f:Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v3

    .line 1611
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_0
    move-object v6, v3

    :catch_1
    move v8, v5

    move v5, v0

    move v0, v8

    goto :goto_2

    :cond_1
    move-object v6, v3

    :cond_2
    :goto_1
    move v0, v5

    :goto_2
    if-nez p3, :cond_4

    if-nez v5, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    .line 1630
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/b/i;->h(Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_7

    .line 1617
    :cond_4
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_5

    const-string v3, "FC"

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    const-string v3, "NVC"

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    const-string v0, "002Neggj"

    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/b/i;->h(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {p2}, Lcom/mob/tools/b/i$a;->b()Ljava/lang/Object;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1619
    :try_start_5
    iget-object v0, p0, Lcom/mob/tools/b/i;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1622
    invoke-virtual {p2, v7}, Lcom/mob/tools/b/i$a;->a(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_9

    if-lez v5, :cond_8

    .line 1625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    :cond_8
    move-wide v4, v3

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v6, p2

    .line 1627
    invoke-direct/range {v1 .. v6}, Lcom/mob/tools/b/i;->a(Ljava/lang/String;Ljava/lang/Object;JLcom/mob/tools/b/i$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_9
    move-object v0, v7

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v7

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v6

    goto :goto_5

    :catchall_4
    move-exception v0

    .line 1634
    :goto_5
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    const-string v2, ": "

    const-string v4, "Exception: "

    if-eqz v1, :cond_b

    .line 1635
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1636
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 1637
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1639
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1640
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 1642
    :cond_a
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    goto :goto_6

    .line 1643
    :cond_b
    instance-of v1, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz v1, :cond_c

    .line 1644
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    goto :goto_6

    .line 1646
    :cond_c
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_6
    move-object v0, v3

    :goto_7
    if-nez v0, :cond_d

    .line 1651
    iget-object v0, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    :cond_d
    return-object v0
.end method

.method private c(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/mob/tools/b/i$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mob/tools/utils/MobPersistence$NoValidDataException;
        }
    .end annotation

    .line 1674
    invoke-direct {p0, p2}, Lcom/mob/tools/b/i;->a(Lcom/mob/tools/b/i$a;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1675
    invoke-direct {p0, v0}, Lcom/mob/tools/b/i;->a(Ljava/lang/reflect/Type;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1679
    :try_start_0
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1680
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v1

    iget-object p2, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    check-cast p2, [Landroid/os/Parcelable;

    invoke-virtual {v1, p1, v0, p2}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)[Landroid/os/Parcelable;

    move-result-object p1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x2

    if-eq v1, v4, :cond_e

    const/4 v5, 0x4

    if-ne v1, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x3

    if-ne v1, v5, :cond_6

    .line 1687
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1688
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 1689
    check-cast p2, Ljava/lang/Class;

    .line 1691
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 1692
    aget-object v1, v0, v1

    .line 1693
    array-length v5, v0

    if-ne v5, v4, :cond_2

    .line 1694
    aget-object v1, v0, v2

    .line 1696
    :cond_2
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_f

    .line 1697
    check-cast v1, Ljava/lang/Class;

    .line 1698
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1700
    const-class v0, Ljava/util/List;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/util/LinkedList;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/util/ArrayList;

    if-ne p2, v0, :cond_3

    goto :goto_0

    .line 1702
    :cond_3
    const-class v0, Ljava/util/Map;

    if-eq p2, v0, :cond_4

    const-class v0, Ljava/util/HashMap;

    if-eq p2, v0, :cond_4

    const-class v0, Ljava/util/TreeMap;

    if-eq p2, v0, :cond_4

    const-class v0, Ljava/util/Hashtable;

    if-ne p2, v0, :cond_f

    .line 1703
    :cond_4
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/mob/tools/utils/h;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_4

    .line 1701
    :cond_5
    :goto_0
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/mob/tools/utils/h;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_4

    :cond_6
    const/16 v2, 0x9

    if-ne v1, v2, :cond_d

    .line 1709
    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_f

    .line 1711
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_7

    .line 1712
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v0

    iget-object p2, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/h;->b(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_4

    .line 1713
    :cond_7
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_8

    .line 1714
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v0

    iget-object p2, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_4

    .line 1715
    :cond_8
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_9

    .line 1716
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v0

    iget-object p2, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_4

    .line 1717
    :cond_9
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_a

    .line 1718
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v0

    iget-object p2, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_4

    .line 1719
    :cond_a
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_b

    .line 1720
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v0

    iget-object p2, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 1721
    :cond_b
    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1722
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v1

    iget-object p2, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0, p2}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 1724
    :cond_c
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v0

    iget-object p2, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/h;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    .line 1729
    :cond_d
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v0

    iget-object p2, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/h;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 1683
    :cond_e
    :goto_1
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object v0

    iget-object p2, p2, Lcom/mob/tools/b/i$a;->g:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/utils/h;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/mob/tools/utils/MobPersistence$NoValidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move-object v3, p1

    goto :goto_4

    .line 1734
    :goto_3
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_f
    :goto_4
    return-object v3

    .line 1732
    :goto_5
    throw p1
.end method

.method private g(Ljava/lang/String;)J
    .locals 2

    .line 1939
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1942
    invoke-virtual {p0, v0, p1, v1}, Lcom/mob/tools/b/i;->a(ZLjava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1944
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1946
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1947
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1948
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private i(Z)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "gal"

    .line 818
    monitor-enter v0

    :try_start_0
    const-string v1, "gal"

    .line 819
    new-instance v2, Lcom/mob/tools/b/i$32;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mob/tools/b/i$32;-><init>(Lcom/mob/tools/b/i;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1, v2, p1}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 834
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public A()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 551
    new-instance v0, Lcom/mob/tools/b/i$21;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$21;-><init>(Lcom/mob/tools/b/i;Ljava/util/HashMap;)V

    const-string v1, "meio"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .line 568
    new-instance v0, Lcom/mob/tools/b/i$22;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$22;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "ale"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .line 584
    new-instance v0, Lcom/mob/tools/b/i$24;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$24;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "sse"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 599
    invoke-static {}, Lcom/mob/commons/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 600
    invoke-virtual {p0, v0}, Lcom/mob/tools/b/i;->f(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "forbid"

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 2

    .line 628
    invoke-virtual {p0}, Lcom/mob/tools/b/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "004e)dk+ef"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "002Ohiej"

    .line 632
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "002Bhlej"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "0023jfej"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "002<heej"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "004[fgdiefdi"

    .line 635
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "forbid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "005=dk;ihf$dj"

    .line 638
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const-string v0, "004Bfgdiefdi"

    .line 636
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    const-string v0, "004cfgg"

    .line 633
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    const-string v0, "004eWdk,ef"

    .line 630
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 2

    .line 647
    invoke-virtual {p0}, Lcom/mob/tools/b/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "004e=dkJef"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "004)fgdiefdi"

    .line 651
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "004=fgdiefdi"

    .line 652
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "002Zhiej"

    .line 653
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "002>hiej"

    .line 654
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "002Yhlej"

    .line 655
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "002Ihlej"

    .line 656
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v1, "0024jfej"

    .line 657
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "002Ojfej"

    .line 658
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v1, "002!heej"

    .line 659
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "002Rheej"

    .line 660
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v1, "009TffFgZdg5fiQdkdk(ih"

    .line 661
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "009VffGg5dg$fiMdkdkRih"

    .line 662
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0

    :cond_7
    :goto_0
    const-string v0, "004eZdk[ef"

    .line 649
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Z
    .locals 2

    .line 669
    invoke-virtual {p0}, Lcom/mob/tools/b/i;->E()Ljava/lang/String;

    move-result-object v0

    const-string v1, "004Yfgdiefdi"

    .line 670
    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "004cfgg"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public H()I
    .locals 2

    .line 675
    new-instance v0, Lcom/mob/tools/b/i$26;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$26;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Integer;)V

    const-string v1, "dtnttp"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    .line 692
    new-instance v0, Lcom/mob/tools/b/i$27;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$27;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "tize"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 2

    .line 708
    new-instance v0, Lcom/mob/tools/b/i$28;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$28;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "flvr"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 2

    .line 726
    new-instance v0, Lcom/mob/tools/b/i$29;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$29;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "babd"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 2

    .line 742
    new-instance v0, Lcom/mob/tools/b/i$30;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$30;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "bfsp"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 2

    .line 758
    new-instance v0, Lcom/mob/tools/b/i$31;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$31;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "bopm"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 4

    .line 775
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->isIpAddressEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 776
    invoke-static {}, Lcom/mob/commons/d;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/b/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/e;->a()Ljava/util/Enumeration;

    move-result-object v0

    .line 779
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 780
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 781
    iget-object v2, p0, Lcom/mob/tools/b/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/b/e;->a(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v1

    .line 782
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 784
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 785
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 790
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const-string v0, "0.0.0.0"

    return-object v0

    .line 797
    :cond_4
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 814
    invoke-direct {p0, v0}, Lcom/mob/tools/b/i;->i(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public P()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "gsl"

    .line 839
    monitor-enter v0

    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mob/tools/b/i;->i(Z)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/b/b;->a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 841
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Q()Ljava/lang/String;
    .locals 2

    .line 861
    new-instance v0, Lcom/mob/tools/b/i$33;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$33;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "deky"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 2

    .line 888
    new-instance v0, Lcom/mob/tools/b/i$35;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$35;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "scph"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {p0}, Lcom/mob/tools/b/i;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 2

    .line 914
    new-instance v0, Lcom/mob/tools/b/i$36;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$36;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "pne"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public V()I
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->q()I

    move-result v0

    return v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public X()Z
    .locals 2

    .line 944
    new-instance v0, Lcom/mob/tools/b/i$37;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$37;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Boolean;)V

    const-string v1, "imp"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->a(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Y()Ljava/lang/String;
    .locals 2

    .line 954
    new-instance v0, Lcom/mob/tools/b/i$38;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$38;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "cpne"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->a(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public Z()Z
    .locals 1

    .line 964
    invoke-static {}, Lcom/mob/commons/x;->a()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    const/4 v0, 0x0

    .line 1212
    invoke-virtual {p0, v0, p1, p2}, Lcom/mob/tools/b/i;->a(ZLjava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public a(ZLjava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 11

    const-string v0, "1009"

    .line 1217
    invoke-static {v0, p2}, Lcom/mob/tools/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "gtaiffce-"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "-"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/mob/tools/b/i$49;

    const/4 v3, 0x0

    move-object v1, v10

    move-object v2, p0

    move v4, v0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mob/tools/b/i$49;-><init>(Lcom/mob/tools/b/i;Landroid/content/pm/ApplicationInfo;ZLjava/lang/String;I)V

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1232
    invoke-direct {p0, v0, p1, p2}, Lcom/mob/tools/b/i;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1218
    :goto_1
    invoke-direct {p0, v9, v10, p1}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    return-object p1
.end method

.method public a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1009
    invoke-direct/range {v0 .. v5}, Lcom/mob/tools/b/i;->b(ZILjava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public a(IIZ)Landroid/location/Location;
    .locals 1

    const/4 v0, 0x0

    .line 847
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mob/tools/b/i;->a(IIZZ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 848
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 849
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0, p1}, Lcom/mob/tools/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Ljava/lang/String;
    .locals 1

    .line 236
    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i;->e(Z)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "ssmt"

    .line 238
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ZZ)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "giafce"

    .line 802
    monitor-enter v0

    .line 803
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mob/tools/b/i;->i(Z)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 805
    iget-object p1, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/mob/tools/b/b;->a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 807
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/mob/tools/b/b;->a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 809
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(IIZZ)Ljava/util/List;
    .locals 9

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gtelcmefce-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/mob/tools/b/i$62;

    const/4 v3, 0x0

    move-object v1, v8

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/mob/tools/b/i$62;-><init>(Lcom/mob/tools/b/i;Ljava/util/List;IIZZ)V

    invoke-direct {p0, v0, v8, p4}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public a(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lcom/mob/tools/b/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/b/e;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 2

    .line 77
    new-instance v0, Lcom/mob/tools/b/i$1;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$1;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Boolean;)V

    const-string v1, "ird"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aa()Landroid/content/Context;
    .locals 2

    .line 979
    new-instance v0, Lcom/mob/tools/b/i$39;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$39;-><init>(Lcom/mob/tools/b/i;Landroid/content/Context;)V

    const-string v1, "galct"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->a(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public ab()Ljava/lang/String;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ad()J
    .locals 2

    .line 1046
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->Z()J

    move-result-wide v0

    return-wide v0
.end method

.method public ae()Ljava/lang/String;
    .locals 2

    .line 1052
    new-instance v0, Lcom/mob/tools/b/i$41;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$41;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "dvcnm"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public af()Ljava/lang/String;
    .locals 2

    .line 1069
    new-instance v0, Lcom/mob/tools/b/i$42;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$42;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "cgrp"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ag()Ljava/lang/String;
    .locals 2

    .line 1085
    new-instance v0, Lcom/mob/tools/b/i$43;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$43;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "cinfo"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ah()Ljava/lang/String;
    .locals 2

    .line 1101
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->isOaidEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    invoke-static {}, Lcom/mob/commons/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1103
    new-instance v0, Lcom/mob/tools/b/i$44;

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$44;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "odmt"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1

    .line 1123
    :cond_1
    invoke-static {}, Lcom/mob/commons/CSCenter;->getInstance()Lcom/mob/commons/CSCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/CSCenter;->getOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ai()Ljava/lang/String;
    .locals 3

    .line 1129
    iget-object v0, p0, Lcom/mob/tools/b/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mob/tools/b/a;->ah()Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1132
    :try_start_0
    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1133
    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1135
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public aj()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1143
    new-instance v0, Lcom/mob/tools/b/i$46;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$46;-><init>(Lcom/mob/tools/b/i;Ljava/util/HashMap;)V

    const-string v1, "alldmt"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public ak()Landroid/content/pm/ApplicationInfo;
    .locals 4

    .line 1159
    iget-object v0, p0, Lcom/mob/tools/b/i;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1009"

    invoke-static {v1, v0}, Lcom/mob/tools/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1160
    new-instance v1, Lcom/mob/tools/b/i$47;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/mob/tools/b/i$47;-><init>(Lcom/mob/tools/b/i;Landroid/content/pm/ApplicationInfo;Z)V

    .line 1173
    invoke-virtual {p0}, Lcom/mob/tools/b/i;->T()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gtaif"

    invoke-direct {p0, v0, v3, v2}, Lcom/mob/tools/b/i;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1160
    invoke-direct {p0, v3, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public al()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1178
    new-instance v0, Lcom/mob/tools/b/i$48;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$48;-><init>(Lcom/mob/tools/b/i;Ljava/util/ArrayList;)V

    const-string v1, "gtwflok"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public am()J
    .locals 3

    .line 1237
    new-instance v0, Lcom/mob/tools/b/i$50;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$50;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Long;)V

    const-string v1, "gtbdt"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public an()D
    .locals 3

    .line 1253
    new-instance v0, Lcom/mob/tools/b/i$51;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$51;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Double;)V

    const-string v1, "gtscnin"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public ao()I
    .locals 2

    .line 1269
    new-instance v0, Lcom/mob/tools/b/i$52;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$52;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Integer;)V

    const-string v1, "gtscnppi"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ap()Z
    .locals 2

    .line 1285
    new-instance v0, Lcom/mob/tools/b/i$53;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$53;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Boolean;)V

    const-string v1, "ishmos"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public aq()Ljava/lang/String;
    .locals 2

    .line 1301
    new-instance v0, Lcom/mob/tools/b/i$54;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$54;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "gthmosv"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ar()Ljava/lang/String;
    .locals 2

    .line 1317
    new-instance v0, Lcom/mob/tools/b/i$55;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$55;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "gthmosdtlv"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public as()I
    .locals 2

    .line 1333
    new-instance v0, Lcom/mob/tools/b/i$57;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$57;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Integer;)V

    const-string v1, "hmpmst"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public at()I
    .locals 2

    .line 1349
    new-instance v0, Lcom/mob/tools/b/i$58;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$58;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Integer;)V

    const-string v1, "hmepmst"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public au()Ljava/lang/String;
    .locals 2

    .line 1366
    new-instance v0, Lcom/mob/tools/b/i$59;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$59;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "gtinnerlangmt"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public av()I
    .locals 2

    .line 1381
    new-instance v0, Lcom/mob/tools/b/i$60;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$60;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Integer;)V

    const-string v1, "gtgramgendt"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public aw()Z
    .locals 2

    .line 1400
    new-instance v0, Lcom/mob/tools/b/i$61;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$61;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Boolean;)V

    const-string v1, "debbing"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->a(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ax()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1432
    new-instance v0, Lcom/mob/tools/b/i$63;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$63;-><init>(Lcom/mob/tools/b/i;Ljava/util/ArrayList;)V

    const-string v1, "gteacifo"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/mob/tools/b/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/b/e;->b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(ZILjava/lang/String;I)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1396
    invoke-direct/range {v0 .. v5}, Lcom/mob/tools/b/i;->b(ZILjava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Ljava/lang/String;
    .locals 1

    .line 245
    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i;->e(Z)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "bsmt"

    .line 247
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Z
    .locals 2

    .line 101
    new-instance v0, Lcom/mob/tools/b/i$12;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$12;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Boolean;)V

    const-string v1, "cx0"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0, p1}, Lcom/mob/tools/b/b;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0, p1}, Lcom/mob/tools/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)Ljava/lang/String;
    .locals 2

    .line 254
    new-instance v0, Lcom/mob/tools/b/i$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$2;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "car"

    invoke-direct {p0, v1, v0, p1}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c()Z
    .locals 2

    .line 125
    new-instance v0, Lcom/mob/tools/b/i$23;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$23;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Boolean;)V

    const-string v1, "pd0"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0, p1}, Lcom/mob/tools/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Z)Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Lcom/mob/tools/b/i$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$3;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "cne"

    invoke-direct {p0, v1, v0, p1}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public d()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/mob/tools/b/i$34;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$34;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Boolean;)V

    const-string v1, "dee"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->a(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e(Z)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 403
    new-instance v0, Lcom/mob/tools/b/i$11;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$11;-><init>(Lcom/mob/tools/b/i;Ljava/util/HashMap;)V

    const-string v1, "crtwfo"

    invoke-direct {p0, v1, v0, p1}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->M()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0, p1}, Lcom/mob/tools/b/b;->d(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 972
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/lang/String;)J
    .locals 4

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gtlstact-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mob/tools/b/i$65;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/mob/tools/b/i$65;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Z)Ljava/lang/String;
    .locals 2

    .line 608
    new-instance v0, Lcom/mob/tools/b/i$25;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$25;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "nte"

    invoke-direct {p0, v1, v0, p1}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public f()Z
    .locals 2

    .line 156
    new-instance v0, Lcom/mob/tools/b/i$45;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$45;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Boolean;)V

    const-string v1, "ua0"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->a(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public g(Z)Ljava/lang/String;
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/mob/tools/b/i;->e:Lcom/mob/tools/b/b;

    invoke-virtual {v0, p1}, Lcom/mob/tools/b/b;->a(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .locals 2

    .line 172
    new-instance v0, Lcom/mob/tools/b/i$56;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$56;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Boolean;)V

    const-string v1, "dee1"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->a(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public h(Z)Ljava/lang/String;
    .locals 2

    .line 1447
    new-instance v0, Lcom/mob/tools/b/i$64;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$64;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "gtdm"

    invoke-direct {p0, v1, v0, p1}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public h()Z
    .locals 2

    .line 188
    new-instance v0, Lcom/mob/tools/b/i$66;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$66;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Boolean;)V

    const-string v1, "uee"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->a(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/mob/tools/b/i$67;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$67;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Boolean;)V

    const-string v1, "wpy"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->a(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Lcom/mob/tools/b/i$68;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$68;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "agi"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Lcom/mob/tools/b/i$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$4;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "mvn"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .line 303
    new-instance v0, Lcom/mob/tools/b/i$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$5;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "mol"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .line 319
    new-instance v0, Lcom/mob/tools/b/i$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$6;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "mar"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 335
    new-instance v0, Lcom/mob/tools/b/i$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$7;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "brd"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 351
    new-instance v0, Lcom/mob/tools/b/i$8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$8;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "dte"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/Object;
    .locals 2

    .line 367
    new-instance v0, Lcom/mob/tools/b/i$9;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$9;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Object;)V

    const-string v1, "gtecloc"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 383
    new-instance v0, Lcom/mob/tools/b/i$10;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$10;-><init>(Lcom/mob/tools/b/i;Ljava/util/ArrayList;)V

    const-string v1, "bsnbcl"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public r()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p0, v0}, Lcom/mob/tools/b/i;->e(Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .locals 2

    .line 419
    new-instance v0, Lcom/mob/tools/b/i$13;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$13;-><init>(Lcom/mob/tools/b/i;Ljava/lang/Integer;)V

    const-string v1, "ovit"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .line 435
    new-instance v0, Lcom/mob/tools/b/i$14;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$14;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "ovne"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .line 451
    new-instance v0, Lcom/mob/tools/b/i$15;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$15;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "ole"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .line 467
    new-instance v0, Lcom/mob/tools/b/i$16;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$16;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "ocy"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 483
    new-instance v0, Lcom/mob/tools/b/i$17;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$17;-><init>(Lcom/mob/tools/b/i;Ljava/util/HashMap;)V

    const-string v1, "cio0"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public x()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 499
    new-instance v0, Lcom/mob/tools/b/i$18;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$18;-><init>(Lcom/mob/tools/b/i;Ljava/util/ArrayList;)V

    const-string v1, "tdio"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 2

    .line 515
    new-instance v0, Lcom/mob/tools/b/i$19;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$19;-><init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V

    const-string v1, "qkl"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 535
    new-instance v0, Lcom/mob/tools/b/i$20;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mob/tools/b/i$20;-><init>(Lcom/mob/tools/b/i;Ljava/util/HashMap;)V

    const-string v1, "siio"

    invoke-direct {p0, v1, v0}, Lcom/mob/tools/b/i;->b(Ljava/lang/String;Lcom/mob/tools/b/i$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method
