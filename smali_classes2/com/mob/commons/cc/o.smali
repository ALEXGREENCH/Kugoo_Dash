.class public Lcom/mob/commons/cc/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/commons/cc/t<",
        "Lcom/mob/commons/cc/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/o;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/cc/o;",
            "Ljava/lang/Class<",
            "Lcom/mob/commons/cc/o;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[Z[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p4, :cond_2a

    const-string p2, "002jHfi"

    .line 17
    invoke-static {p2}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 18
    array-length p2, p4

    if-ne p2, v0, :cond_0

    .line 19
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 20
    :cond_0
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 21
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/lang/String;

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_1
    const-string p2, "pbl"

    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 24
    array-length p2, p4

    if-ne p2, v0, :cond_2

    .line 25
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 26
    :cond_2
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 27
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/lang/Boolean;

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Boolean;J)V

    goto/16 :goto_0

    :cond_3
    const-string p2, "002jg"

    .line 29
    invoke-static {p2}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 30
    array-length p2, p4

    if-ne p2, v0, :cond_4

    .line 31
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 32
    :cond_4
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 33
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/lang/Long;

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Long;J)V

    goto/16 :goto_0

    :cond_5
    const-string p2, "pin"

    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 36
    array-length p2, p4

    if-ne p2, v0, :cond_6

    .line 37
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 38
    :cond_6
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 39
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/lang/Integer;

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Integer;J)V

    goto/16 :goto_0

    :cond_7
    const-string p2, "pdou"

    .line 41
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 42
    array-length p2, p4

    if-ne p2, v0, :cond_8

    .line 43
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 44
    :cond_8
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 45
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/lang/Double;

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Double;J)V

    goto/16 :goto_0

    :cond_9
    const-string p2, "pparm"

    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 48
    array-length p2, p4

    if-ne p2, v0, :cond_a

    .line 49
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 50
    :cond_a
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 51
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/util/Map;

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/util/Map;J)V

    goto/16 :goto_0

    :cond_b
    const-string p2, "ppar"

    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 54
    array-length p2, p4

    if-ne p2, v0, :cond_c

    .line 55
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Landroid/os/Parcelable;

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 56
    :cond_c
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 57
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Landroid/os/Parcelable;

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Landroid/os/Parcelable;J)V

    goto/16 :goto_0

    :cond_d
    const-string p2, "pparl"

    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 60
    array-length p2, p4

    if-ne p2, v0, :cond_e

    .line 61
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/util/List;

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 62
    :cond_e
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 63
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, Ljava/util/List;

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/util/List;J)V

    goto/16 :goto_0

    :cond_f
    const-string p2, "ppararr"

    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 66
    array-length p2, p4

    if-ne p2, v0, :cond_10

    .line 67
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, [Landroid/os/Parcelable;

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 68
    :cond_10
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 69
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    check-cast p3, [Landroid/os/Parcelable;

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;[Landroid/os/Parcelable;J)V

    goto/16 :goto_0

    :cond_11
    const-string p2, "p"

    .line 71
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 72
    array-length p2, p4

    if-ne p2, v0, :cond_12

    .line 73
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    invoke-virtual {p2, p1, p3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 74
    :cond_12
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 75
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, v1

    aget-object p4, p4, v0

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Object;J)V

    goto/16 :goto_0

    :cond_13
    const-string p2, "g"

    .line 77
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 79
    :try_start_0
    array-length p2, p4

    if-ne p2, v1, :cond_14

    .line 80
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/mob/tools/utils/h;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p6, p1

    goto/16 :goto_0

    .line 81
    :cond_14
    array-length p2, p4

    if-ne p2, v0, :cond_29

    .line 82
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p4, p4, v1

    invoke-virtual {p2, p3, p4}, Lcom/mob/tools/utils/h;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p6, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p2

    .line 85
    aput-object p2, p7, p1

    goto/16 :goto_0

    :cond_15
    const-string p2, "gs"

    .line 87
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 89
    :try_start_1
    array-length p2, p4

    if-ne p2, v1, :cond_16

    .line 90
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p6, p1

    goto/16 :goto_0

    .line 91
    :cond_16
    array-length p2, p4

    if-ne p2, v0, :cond_29

    .line 92
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Lcom/mob/tools/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p6, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception p2

    .line 95
    aput-object p2, p7, p1

    goto/16 :goto_0

    :cond_17
    const-string p2, "gbl"

    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 99
    :try_start_2
    array-length p2, p4

    if-ne p2, v1, :cond_18

    .line 100
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/mob/tools/utils/h;->b(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p6, p1

    goto/16 :goto_0

    .line 101
    :cond_18
    array-length p2, p4

    if-ne p2, v0, :cond_29

    .line 102
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p6, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception p2

    .line 105
    aput-object p2, p7, p1

    goto/16 :goto_0

    :cond_19
    const-string p2, "gl"

    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 109
    :try_start_3
    array-length p2, p4

    if-ne p2, v1, :cond_1a

    .line 110
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/mob/tools/utils/h;->d(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p6, p1

    goto/16 :goto_0

    .line 111
    :cond_1a
    array-length p2, p4

    if-ne p2, v0, :cond_29

    .line 112
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p2, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p6, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception p2

    .line 115
    aput-object p2, p7, p1

    goto/16 :goto_0

    :cond_1b
    const-string p2, "gin"

    .line 117
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 119
    :try_start_4
    array-length p2, p4

    if-ne p2, v1, :cond_1c

    .line 120
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/mob/tools/utils/h;->e(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p6, p1

    goto/16 :goto_0

    .line 121
    :cond_1c
    array-length p2, p4

    if-ne p2, v0, :cond_29

    .line 122
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p6, p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_0

    :catchall_4
    move-exception p2

    .line 125
    aput-object p2, p7, p1

    goto/16 :goto_0

    :cond_1d
    const-string p2, "gdou"

    .line 127
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 129
    :try_start_5
    array-length p2, p4

    if-ne p2, v1, :cond_1e

    .line 130
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/mob/tools/utils/h;->f(Ljava/lang/String;)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p6, p1

    goto/16 :goto_0

    .line 131
    :cond_1e
    array-length p2, p4

    if-ne p2, v0, :cond_29

    .line 132
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p4

    invoke-virtual {p2, p3, p4, p5}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, p6, p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception p2

    .line 135
    aput-object p2, p7, p1

    goto/16 :goto_0

    :cond_1f
    const-string p2, "gpar"

    .line 137
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 139
    :try_start_6
    array-length p2, p4

    if-ne p2, v0, :cond_20

    .line 140
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/Class;

    invoke-virtual {p2, p3, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object p2

    aput-object p2, p6, p1

    goto/16 :goto_0

    .line 141
    :cond_20
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 142
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p5, p4, v1

    check-cast p5, Ljava/lang/Class;

    aget-object p4, p4, v0

    check-cast p4, Landroid/os/Parcelable;

    invoke-virtual {p2, p3, p5, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p6, p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto/16 :goto_0

    :catchall_6
    move-exception p2

    .line 145
    aput-object p2, p7, p1

    goto/16 :goto_0

    :cond_21
    const-string p2, "gparm"

    .line 147
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 149
    :try_start_7
    array-length p2, p4

    if-ne p2, v0, :cond_22

    .line 150
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/Class;

    invoke-virtual {p2, p3, p4}, Lcom/mob/tools/utils/h;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p2

    aput-object p2, p6, p1

    goto/16 :goto_0

    .line 151
    :cond_22
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 152
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p5, p4, v1

    check-cast p5, Ljava/lang/Class;

    aget-object p4, p4, v0

    check-cast p4, Ljava/util/Map;

    invoke-virtual {p2, p3, p5, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    aput-object p2, p6, p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_0

    :catchall_7
    move-exception p2

    .line 155
    aput-object p2, p7, p1

    goto/16 :goto_0

    :cond_23
    const-string p2, "gparl"

    .line 157
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 159
    :try_start_8
    array-length p2, p4

    if-ne p2, v0, :cond_24

    .line 160
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/Class;

    invoke-virtual {p2, p3, p4}, Lcom/mob/tools/utils/h;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    aput-object p2, p6, p1

    goto/16 :goto_0

    .line 161
    :cond_24
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 162
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p5, p4, v1

    check-cast p5, Ljava/lang/Class;

    aget-object p4, p4, v0

    check-cast p4, Ljava/util/List;

    invoke-virtual {p2, p3, p5, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    aput-object p2, p6, p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_0

    :catchall_8
    move-exception p2

    .line 165
    aput-object p2, p7, p1

    goto :goto_0

    :cond_25
    const-string p2, "gpararr"

    .line 167
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 169
    :try_start_9
    array-length p2, p4

    if-ne p2, v0, :cond_26

    .line 170
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/Class;

    invoke-virtual {p2, p3, p4}, Lcom/mob/tools/utils/h;->d(Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p2

    aput-object p2, p6, p1

    goto :goto_0

    .line 171
    :cond_26
    array-length p2, p4

    if-ne p2, p5, :cond_29

    .line 172
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p3, p4, p1

    check-cast p3, Ljava/lang/String;

    aget-object p5, p4, v1

    check-cast p5, Ljava/lang/Class;

    aget-object p4, p4, v0

    check-cast p4, [Landroid/os/Parcelable;

    invoke-virtual {p2, p3, p5, p4}, Lcom/mob/tools/utils/h;->a(Ljava/lang/String;Ljava/lang/Class;[Landroid/os/Parcelable;)[Landroid/os/Parcelable;

    move-result-object p2

    aput-object p2, p6, p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_0

    :catchall_9
    move-exception p2

    .line 175
    aput-object p2, p7, p1

    goto :goto_0

    :cond_27
    const-string p2, "rv"

    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    array-length p2, p4

    if-ne p2, v1, :cond_28

    .line 178
    invoke-static {}, Lcom/mob/tools/utils/h;->a()Lcom/mob/tools/utils/h;

    move-result-object p2

    aget-object p1, p4, p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/h;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_28
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "wrp"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    aput-object p2, p7, p1

    :cond_29
    :goto_0
    return v1

    :cond_2a
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 12
    check-cast p1, Lcom/mob/commons/cc/o;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/o;->a(Lcom/mob/commons/cc/o;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
