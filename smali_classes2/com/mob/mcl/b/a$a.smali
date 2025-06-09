.class Lcom/mob/mcl/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/apc/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/mcl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/mcl/b/a$1;)V
    .locals 0

    .line 589
    invoke-direct {p0}, Lcom/mob/mcl/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;
    .locals 17

    move-object/from16 v0, p2

    const-string v1, "expire"

    const-string v2, "workId"

    const-string v3, "needRepeat"

    const-string v4, "uniqueId"

    const-string v5, "data"

    .line 595
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual {v6, v7, v0}, Lcom/mob/mcl/a/a;->a(Ljava/lang/String;Lcom/mob/apc/a;)Lcom/mob/apc/a;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 598
    :try_start_0
    iget-object v7, v6, Lcom/mob/apc/a;->d:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    iget-object v7, v6, Lcom/mob/apc/a;->d:Ljava/lang/Object;

    instance-of v7, v7, Lcom/mob/mcl/a/b;

    if-eqz v7, :cond_1

    .line 599
    iget-object v0, v6, Lcom/mob/apc/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/mob/mcl/a/b;

    .line 600
    new-instance v15, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v15}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    .line 601
    iget v1, v0, Lcom/mob/mcl/a/b;->f:I

    iput v1, v15, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 602
    iget v1, v0, Lcom/mob/mcl/a/b;->g:I

    iput v1, v15, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    const-string v1, "POST"

    .line 603
    iget-object v2, v0, Lcom/mob/mcl/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 604
    iput-object v2, v6, Lcom/mob/apc/a;->d:Ljava/lang/Object;

    const/4 v9, 0x1

    .line 605
    iget-object v10, v0, Lcom/mob/mcl/a/b;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/mob/mcl/a/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/mob/mcl/a/b;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    new-instance v1, Lcom/mob/tools/network/StringPart;

    invoke-direct {v1}, Lcom/mob/tools/network/StringPart;-><init>()V

    iget-object v2, v0, Lcom/mob/mcl/a/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mob/tools/network/StringPart;->append(Ljava/lang/String;)Lcom/mob/tools/network/StringPart;

    move-result-object v12

    iget v13, v0, Lcom/mob/mcl/a/b;->e:I

    iget-object v0, v0, Lcom/mob/mcl/a/b;->b:Ljava/lang/String;

    .line 606
    invoke-static {v0, v6}, Lcom/mob/mcl/a;->a(Ljava/lang/String;Lcom/mob/apc/a;)Lcom/mob/tools/network/HttpResponseCallback;

    move-result-object v14

    .line 605
    invoke-static/range {v9 .. v15}, Lcom/mob/mcl/b/a;->a(ZLjava/lang/String;Ljava/util/HashMap;Lcom/mob/tools/network/StringPart;ILcom/mob/tools/network/HttpResponseCallback;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)V

    goto/16 :goto_3

    :cond_0
    const-string v1, "GET"

    .line 608
    iget-object v3, v0, Lcom/mob/mcl/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 609
    iget-object v1, v0, Lcom/mob/mcl/a/b;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/mob/mcl/a/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/mcl/a/b;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v8, v1, v2, v0, v15}, Lcom/mob/mcl/b/a;->a(ZLjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/mob/mcl/a/a;->b(Ljava/lang/String;Lcom/mob/apc/a;)V

    goto/16 :goto_3

    .line 612
    :cond_1
    iget v7, v6, Lcom/mob/apc/a;->a:I

    const/16 v9, 0x232c

    if-ne v7, v9, :cond_6

    .line 613
    iget-object v7, v0, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 614
    iget-object v9, v0, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 615
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_6

    .line 617
    :try_start_1
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v9

    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mob/mcl/c/h;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 618
    invoke-static {v7}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 619
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Ljava/lang/String;

    const/4 v9, 0x0

    .line 620
    invoke-static {v7, v1, v9}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v14

    .line 621
    invoke-static {v7, v3, v9}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_2

    move v15, v8

    goto :goto_0

    :cond_2
    move v15, v9

    :goto_0
    const-string v10, "type"

    .line 622
    invoke-static {v7, v10, v9}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v10

    .line 623
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "repeat"

    if-eq v10, v8, :cond_5

    const/4 v8, 0x2

    if-ne v10, v8, :cond_3

    goto :goto_2

    .line 638
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    move v8, v10

    move-object v10, v0

    move v0, v15

    move v15, v8

    move-object/from16 v16, v7

    invoke-virtual/range {v10 .. v16}, Lcom/mob/mcl/c/h;->a(JLjava/lang/String;IILjava/lang/String;)Z

    move-result v1

    .line 639
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 640
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 641
    :goto_1
    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    iput-object v2, v6, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    goto :goto_3

    :cond_5
    :goto_2
    move v8, v10

    move v10, v15

    .line 625
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 626
    invoke-virtual {v11, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {v11, v2, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v0, v0, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v4, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 629
    invoke-virtual {v11, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "msgType"

    .line 630
    invoke-virtual {v11, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/mob/mcl/c/h;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 633
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 634
    invoke-virtual {v1, v3, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 635
    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    iput-object v1, v6, Lcom/mob/apc/a;->e:Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 645
    :try_start_3
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 650
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-object v6
.end method
