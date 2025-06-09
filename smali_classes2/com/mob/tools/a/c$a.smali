.class Lcom/mob/tools/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:J = 0x0L

.field private static b:J = 0x0L

.field private static c:J = 0x0L

.field private static d:J = 0x0L

.field private static e:J = 0x0L

.field private static f:J = 0x0L

.field private static g:J = 0x0L

.field private static h:J = 0x0L

.field private static i:J = 0x0L

.field private static j:J = 0x0L

.field private static k:J = 0x0L

.field private static l:J = 0x0L

.field private static m:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static varargs declared-synchronized a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "x2 "

    const-class v1, Lcom/mob/tools/a/c$a;

    monitor-enter v1

    .line 385
    :try_start_0
    invoke-static {}, Lcom/mob/tools/a/c$a;->b()Z

    move-result v2

    .line 386
    sget-boolean v3, Lcom/mob/tools/a/c$a;->m:Z

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 390
    const-class v0, Lcom/mob/tools/a/c$b$e;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 391
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 392
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    const/4 v0, 0x1

    .line 400
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 402
    sget-wide v6, Lcom/mob/tools/a/c$a;->e:J

    invoke-static {p0, v6, v7}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p0, v6, v8

    if-eqz p0, :cond_3

    .line 405
    invoke-static {v6, v7}, Lcom/mob/tools/a/c$c;->a(J)I

    move-result p0

    :goto_2
    if-ge v3, p0, :cond_3

    int-to-long v8, v3

    .line 408
    sget-wide v10, Lcom/mob/tools/a/c$a;->i:J

    mul-long/2addr v8, v10

    add-long/2addr v8, v6

    sget-wide v10, Lcom/mob/tools/a/c$a;->j:J

    add-long/2addr v8, v10

    .line 410
    sget-wide v10, Lcom/mob/tools/a/c$a;->a:J

    invoke-static {v5, v10, v11, v8, v9}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;JJ)V

    .line 411
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 418
    invoke-static {v0, p3}, Lcom/mob/tools/a/c$a;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 421
    :try_start_1
    invoke-virtual {v5, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    invoke-static {}, Lcom/mob/tools/a/c$a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    monitor-exit v1

    return-object v0

    :catchall_0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 431
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/mob/tools/a/c$a;->c()V

    .line 432
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "n2"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 398
    :cond_4
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "x22"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0

    .line 387
    :cond_5
    new-instance p0, Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lcom/mob/tools/a/c$a;->m:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "x3 "

    const-class v1, Lcom/mob/tools/a/c$a;

    monitor-enter v1

    .line 440
    :try_start_0
    invoke-static {}, Lcom/mob/tools/a/c$a;->b()Z

    move-result v2

    .line 441
    sget-boolean v3, Lcom/mob/tools/a/c$a;->m:Z

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_7

    .line 448
    const-class v0, Lcom/mob/tools/a/c$b$h;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 449
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    aget-object v7, v0, v4

    .line 450
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_1

    if-nez p2, :cond_0

    .line 453
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_0

    goto :goto_1

    .line 459
    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 460
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_6

    if-nez p2, :cond_3

    .line 469
    sget-wide v7, Lcom/mob/tools/a/c$a;->g:J

    goto :goto_3

    :cond_3
    sget-wide v7, Lcom/mob/tools/a/c$a;->f:J

    :goto_3
    invoke-static {p0, v7, v8}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long p0, v7, v9

    if-eqz p0, :cond_5

    .line 472
    invoke-static {v7, v8}, Lcom/mob/tools/a/c$c;->a(J)I

    move-result p0

    move v2, v3

    :goto_4
    if-ge v2, p0, :cond_5

    int-to-long v9, v2

    .line 475
    sget-wide v11, Lcom/mob/tools/a/c$a;->k:J

    mul-long/2addr v9, v11

    add-long/2addr v9, v7

    sget-wide v11, Lcom/mob/tools/a/c$a;->l:J

    add-long/2addr v9, v11

    .line 477
    sget-wide v11, Lcom/mob/tools/a/c$a;->c:J

    invoke-static {v0, v11, v12, v9, v10}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;JJ)V

    .line 479
    sget-wide v9, Lcom/mob/tools/a/c$a;->d:J

    invoke-static {v0, v9, v10, v5}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 484
    :try_start_1
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    .line 485
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "012\'bh:dKbbKdbe0djbgbhOdag"

    invoke-static {v10}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Class;

    const-class v12, Ljava/lang/invoke/MethodHandle;

    aput-object v12, v11, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 486
    invoke-virtual {v9, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v0, v10, v3

    .line 487
    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    :catchall_0
    :try_start_2
    sget-wide v9, Lcom/mob/tools/a/c$a;->d:J

    invoke-static {v0, v9, v10}, Lcom/mob/tools/a/c$c;->b(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 493
    sget-wide v9, Lcom/mob/tools/a/c$a;->h:J

    invoke-static {v4, v9, v10}, Lcom/mob/tools/a/c$c;->b(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 494
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 502
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 504
    :try_start_3
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 506
    invoke-static {}, Lcom/mob/tools/a/c$a;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 507
    monitor-exit v1

    return-object v4

    :catchall_1
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 513
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/mob/tools/a/c$a;->c()V

    .line 514
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "n3"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 465
    :cond_6
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "x34"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0

    .line 445
    :cond_7
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "x33"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0

    .line 442
    :cond_8
    new-instance p0, Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lcom/mob/tools/a/c$a;->m:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static varargs declared-synchronized a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "x1 "

    const-class v1, Lcom/mob/tools/a/c$a;

    monitor-enter v1

    .line 322
    :try_start_0
    invoke-static {}, Lcom/mob/tools/a/c$a;->b()Z

    move-result v2

    .line 323
    sget-boolean v3, Lcom/mob/tools/a/c$a;->m:Z

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 327
    const-class v0, Lcom/mob/tools/a/c$b$e;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 328
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 329
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    .line 337
    const-class v0, Lcom/mob/tools/a/c$b$e;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/Object;

    aput-object v6, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 340
    sget-wide v6, Lcom/mob/tools/a/c$a;->e:J

    invoke-static {p0, v6, v7}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3

    .line 343
    invoke-static {v6, v7}, Lcom/mob/tools/a/c$c;->a(J)I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_3

    int-to-long v8, v3

    .line 346
    sget-wide v10, Lcom/mob/tools/a/c$a;->i:J

    mul-long/2addr v8, v10

    add-long/2addr v8, v6

    sget-wide v10, Lcom/mob/tools/a/c$a;->j:J

    add-long/2addr v8, v10

    .line 348
    sget-wide v10, Lcom/mob/tools/a/c$a;->a:J

    invoke-static {v5, v10, v11, v8, v9}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;JJ)V

    const-string v4, "006%gcbg c]bg\'g[ge"

    .line 349
    invoke-static {v4}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    sget-wide v10, Lcom/mob/tools/a/c$a;->a:J

    invoke-static {v0, v10, v11, v8, v9}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;JJ)V

    .line 354
    sget-wide v8, Lcom/mob/tools/a/c$a;->b:J

    invoke-static {v0, v8, v9, p0}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 361
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 363
    invoke-static {v4, p1}, Lcom/mob/tools/a/c$a;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    .line 366
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 368
    invoke-static {}, Lcom/mob/tools/a/c$a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    monitor-exit v1

    return-object v4

    :catchall_0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 376
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/mob/tools/a/c$a;->c()V

    .line 377
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "n1"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 335
    :cond_4
    new-instance p0, Ljava/lang/Throwable;

    const-string p1, "x22"

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_5
    new-instance p0, Ljava/lang/Throwable;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/mob/tools/a/c$a;->m:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static varargs declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/mob/tools/a/c$a;

    monitor-enter v0

    .line 381
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/mob/tools/a/c$a;

    monitor-enter v0

    .line 436
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/mob/tools/a/c$a;

    monitor-enter v0

    .line 318
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(I)V
    .locals 3

    const-class v0, Lcom/mob/tools/a/c$a;

    monitor-enter v0

    .line 116
    :try_start_0
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v1

    const-string v2, "usf"

    invoke-virtual {v1, v2, p0}, Lcom/mob/commons/ab;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/mob/tools/a/c$a;

    monitor-enter v0

    :try_start_0
    const-string v1, "3xu ck"

    .line 139
    invoke-static {v1}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 141
    monitor-exit v0

    return v3

    .line 143
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mob/tools/a/c$c;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    .line 145
    invoke-static {}, Lcom/mob/tools/a/c$a;->b()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Lcom/mob/tools/a/c$a;->d()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    goto/16 :goto_14

    :cond_1
    :try_start_2
    const-string v1, ""

    .line 150
    const-class v4, Lcom/mob/tools/a/c$b$c;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 151
    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 152
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_2

    .line 153
    invoke-static {v7}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    sput-wide v5, Lcom/mob/tools/a/c$a;->a:J

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 157
    :cond_3
    :goto_1
    sget-wide v5, Lcom/mob/tools/a/c$a;->a:J

    invoke-static {v1, v5, v6}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    .line 158
    monitor-exit v0

    return v3

    .line 160
    :cond_4
    :try_start_3
    array-length v5, v4

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 161
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/mob/tools/a/c$b$b;

    if-ne v8, v9, :cond_5

    .line 162
    invoke-static {v7}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcom/mob/tools/a/c$a;->b:J

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 166
    :cond_6
    :goto_3
    sget-wide v4, Lcom/mob/tools/a/c$a;->b:J

    invoke-static {v1, v4, v5}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_7

    .line 167
    monitor-exit v0

    return v3

    .line 169
    :cond_7
    :try_start_4
    const-class v4, Lcom/mob/tools/a/c$b$f;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 170
    array-length v5, v4

    move v6, v3

    :goto_4
    if-ge v6, v5, :cond_9

    aget-object v7, v4, v6

    .line 171
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_8

    .line 172
    invoke-static {v7}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcom/mob/tools/a/c$a;->c:J

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 176
    :cond_9
    :goto_5
    sget-wide v4, Lcom/mob/tools/a/c$a;->c:J

    invoke-static {v1, v4, v5}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_a

    .line 177
    monitor-exit v0

    return v3

    .line 179
    :cond_a
    :try_start_5
    const-class v4, Lcom/mob/tools/a/c$b$g;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 180
    array-length v5, v4

    move v6, v3

    :goto_6
    if-ge v6, v5, :cond_c

    aget-object v7, v4, v6

    .line 181
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/mob/tools/a/c$b$b;

    if-ne v8, v9, :cond_b

    .line 182
    invoke-static {v7}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcom/mob/tools/a/c$a;->d:J

    goto :goto_7

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 186
    :cond_c
    :goto_7
    sget-wide v4, Lcom/mob/tools/a/c$a;->d:J

    invoke-static {v1, v4, v5}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_d

    .line 187
    monitor-exit v0

    return v3

    .line 189
    :cond_d
    :try_start_6
    const-class v4, Lcom/mob/tools/a/c$b$b;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 191
    array-length v5, v4

    move v7, v2

    move v6, v3

    :goto_8
    const/4 v8, 0x2

    if-ge v6, v5, :cond_11

    aget-object v9, v4, v6

    .line 192
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v11, :cond_10

    if-ne v7, v2, :cond_e

    .line 194
    invoke-static {v9}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lcom/mob/tools/a/c$a;->f:J

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_e
    if-ne v7, v8, :cond_f

    .line 197
    invoke-static {v9}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lcom/mob/tools/a/c$a;->e:J

    goto :goto_9

    :cond_f
    const/4 v10, 0x3

    if-ne v7, v10, :cond_10

    .line 200
    invoke-static {v9}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcom/mob/tools/a/c$a;->g:J

    goto :goto_b

    :cond_10
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 205
    :cond_11
    :goto_b
    sget-wide v4, Lcom/mob/tools/a/c$a;->f:J

    invoke-static {v1, v4, v5}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_12

    .line 206
    monitor-exit v0

    return v3

    .line 208
    :cond_12
    :try_start_7
    sget-wide v4, Lcom/mob/tools/a/c$a;->e:J

    invoke-static {v1, v4, v5}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_13

    .line 209
    monitor-exit v0

    return v3

    .line 211
    :cond_13
    :try_start_8
    sget-wide v4, Lcom/mob/tools/a/c$a;->g:J

    invoke-static {v1, v4, v5}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_14

    .line 212
    monitor-exit v0

    return v3

    .line 214
    :cond_14
    :try_start_9
    const-class v4, Lcom/mob/tools/a/c$b$d;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 215
    array-length v5, v4

    move v6, v3

    :goto_c
    if-ge v6, v5, :cond_16

    aget-object v7, v4, v6

    .line 216
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/reflect/Member;

    if-ne v9, v10, :cond_15

    .line 217
    invoke-static {v7}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcom/mob/tools/a/c$a;->h:J

    goto :goto_d

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 221
    :cond_16
    :goto_d
    sget-wide v4, Lcom/mob/tools/a/c$a;->h:J

    invoke-static {v1, v4, v5}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v4, :cond_17

    .line 222
    monitor-exit v0

    return v3

    .line 224
    :cond_17
    :try_start_a
    const-class v4, Lcom/mob/tools/a/c$b$i;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 228
    array-length v5, v4

    const-wide/16 v6, 0x0

    move v10, v2

    move v9, v3

    move-wide v11, v6

    :goto_e
    if-ge v9, v5, :cond_1a

    aget-object v13, v4, v9

    .line 229
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    sget-object v15, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_19

    if-ne v10, v2, :cond_18

    .line 232
    invoke-virtual {v13, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 233
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v11

    .line 234
    sget-wide v12, Lcom/mob/tools/a/c$a;->c:J

    invoke-static {v11, v12, v13}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_18
    if-ne v10, v8, :cond_19

    .line 238
    invoke-virtual {v13, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 239
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 240
    sget-wide v5, Lcom/mob/tools/a/c$a;->c:J

    invoke-static {v4, v5, v6}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v6

    goto :goto_10

    :cond_19
    :goto_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_1a
    :goto_10
    sub-long/2addr v6, v11

    .line 246
    sput-wide v6, Lcom/mob/tools/a/c$a;->i:J

    .line 247
    invoke-static {v1, v6, v7}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v4, :cond_1b

    .line 248
    monitor-exit v0

    return v3

    .line 252
    :cond_1b
    :try_start_b
    const-class v4, Lcom/mob/tools/a/c$b$i;

    sget-wide v5, Lcom/mob/tools/a/c$a;->e:J

    invoke-static {v4, v5, v6}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v4

    sub-long/2addr v11, v4

    .line 254
    sget-wide v4, Lcom/mob/tools/a/c$a;->i:J

    sub-long/2addr v11, v4

    sput-wide v11, Lcom/mob/tools/a/c$a;->j:J

    .line 255
    invoke-static {v1, v11, v12}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v4, :cond_1c

    .line 256
    monitor-exit v0

    return v3

    .line 260
    :cond_1c
    :try_start_c
    const-class v4, Lcom/mob/tools/a/c$b$h;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 262
    array-length v5, v4

    const/4 v6, 0x0

    move v9, v2

    move v7, v3

    move-object v10, v6

    :goto_11
    if-ge v7, v5, :cond_1f

    aget-object v11, v4, v7

    .line 263
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_1e

    if-ne v9, v2, :cond_1d

    .line 266
    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 267
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_1d
    if-ne v9, v8, :cond_1e

    .line 271
    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 272
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    goto :goto_13

    :cond_1e
    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 279
    :cond_1f
    :goto_13
    sget-wide v4, Lcom/mob/tools/a/c$a;->c:J

    invoke-static {v10, v4, v5}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 280
    sget-wide v7, Lcom/mob/tools/a/c$a;->c:J

    invoke-static {v6, v7, v8}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 282
    sput-wide v6, Lcom/mob/tools/a/c$a;->k:J

    .line 283
    invoke-static {v1, v6, v7}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v6, :cond_20

    .line 284
    monitor-exit v0

    return v3

    .line 287
    :cond_20
    :try_start_d
    const-class v6, Lcom/mob/tools/a/c$b$h;

    sget-wide v7, Lcom/mob/tools/a/c$a;->f:J

    invoke-static {v6, v7, v8}, Lcom/mob/tools/a/c$c;->a(Ljava/lang/Object;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 289
    sput-wide v4, Lcom/mob/tools/a/c$a;->l:J

    .line 290
    invoke-static {v1, v4, v5}, Lcom/mob/tools/a/c$a;->a(Ljava/lang/String;J)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v1, :cond_21

    .line 291
    monitor-exit v0

    return v3

    .line 295
    :cond_21
    :try_start_e
    invoke-static {}, Lcom/mob/tools/a/c;->a()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 297
    :catchall_0
    :try_start_f
    invoke-static {}, Lcom/mob/tools/a/c$a;->c()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_15

    .line 146
    :cond_22
    :goto_14
    monitor-exit v0

    return v3

    .line 313
    :cond_23
    :goto_15
    :try_start_10
    sput-boolean v2, Lcom/mob/tools/a/c$a;->m:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 314
    monitor-exit v0

    return v2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/lang/String;J)Z
    .locals 4

    const-string v0, "3xu ckZr "

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 584
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 585
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 586
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v1

    :cond_0
    return v2
.end method

.method private static a([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 595
    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    if-eqz p1, :cond_c

    array-length v1, p1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 598
    :cond_1
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    move v1, v3

    .line 601
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_c

    .line 602
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 603
    aget-object v2, p0, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_3

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    return v3

    .line 605
    :cond_3
    aget-object v2, p0, v1

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_4

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Byte;

    if-nez v2, :cond_4

    return v3

    .line 607
    :cond_4
    aget-object v2, p0, v1

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_5

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Character;

    if-nez v2, :cond_5

    return v3

    .line 609
    :cond_5
    aget-object v2, p0, v1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_6

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Boolean;

    if-nez v2, :cond_6

    return v3

    .line 611
    :cond_6
    aget-object v2, p0, v1

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_7

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Double;

    if-nez v2, :cond_7

    return v3

    .line 613
    :cond_7
    aget-object v2, p0, v1

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_8

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Float;

    if-nez v2, :cond_8

    return v3

    .line 615
    :cond_8
    aget-object v2, p0, v1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_9

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_9

    return v3

    .line 617
    :cond_9
    aget-object v2, p0, v1

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_b

    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_b

    return v3

    .line 620
    :cond_a
    aget-object v2, p1, v1

    if-eqz v2, :cond_b

    aget-object v4, p0, v1

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v3

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_1
    return v0
.end method

.method private static declared-synchronized b()Z
    .locals 4

    const-class v0, Lcom/mob/tools/a/c$a;

    monitor-enter v0

    .line 120
    :try_start_0
    invoke-static {}, Lcom/mob/commons/ab;->a()Lcom/mob/commons/ab;

    move-result-object v1

    const-string v2, "usf"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mob/commons/ab;->b(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "3xu ckFe f"

    .line 123
    invoke-static {v1}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-ne v1, v3, :cond_1

    .line 126
    :try_start_1
    invoke-static {v2}, Lcom/mob/tools/a/c$a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit v0

    return v2

    .line 129
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized c()V
    .locals 2

    const-class v0, Lcom/mob/tools/a/c$a;

    monitor-enter v0

    const/4 v1, 0x0

    .line 135
    :try_start_0
    invoke-static {v1}, Lcom/mob/tools/a/c$a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static d()Z
    .locals 10

    const-string v0, "|m"

    const-string v1, "|f"

    const-string v2, "f"

    const/4 v3, 0x0

    .line 520
    :try_start_0
    const-class v4, Lcom/mob/tools/a/c$b$f;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v4, v4

    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x5

    const-string v6, "3xu ckHpCz "

    if-eq v4, v5, :cond_0

    .line 523
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    return v3

    .line 526
    :cond_0
    const-class v4, Lcom/mob/tools/a/c$b$g;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v4, v4

    .line 527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    if-eq v4, v7, :cond_1

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    return v3

    .line 532
    :cond_1
    const-class v4, Lcom/mob/tools/a/c$b$d;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v4, v4

    .line 533
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    if-eq v4, v8, :cond_2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    return v3

    .line 538
    :cond_2
    const-class v4, Lcom/mob/tools/a/c$b$b;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v4, v4

    .line 539
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x1a

    if-eq v4, v9, :cond_3

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    return v3

    .line 544
    :cond_3
    const-class v4, Lcom/mob/tools/a/c$b$a;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v4, v4

    .line 545
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eq v4, v7, :cond_4

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    return v3

    .line 550
    :cond_4
    const-class v4, Lcom/mob/tools/a/c$b$c;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v4, v4

    .line 551
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eq v4, v5, :cond_5

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    return v3

    .line 556
    :cond_5
    const-class v4, Lcom/mob/tools/a/c$b$h;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v4, v4

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    if-eq v4, v2, :cond_6

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    return v3

    .line 562
    :cond_6
    const-class v2, Lcom/mob/tools/a/c$b$i;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v2, v2

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-ge v2, v8, :cond_7

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V

    return v3

    .line 568
    :cond_7
    const-class v2, Lcom/mob/tools/a/c$b$e;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v2, v2

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ge v2, v7, :cond_8

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/a/d;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    :cond_8
    return v7

    :catchall_0
    move-exception v0

    .line 576
    invoke-static {v0}, Lcom/mob/tools/a/d;->a(Ljava/lang/Throwable;)V

    return v3
.end method
