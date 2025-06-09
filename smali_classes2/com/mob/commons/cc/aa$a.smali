.class public Lcom/mob/commons/cc/aa$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Number;

.field private b:Ljava/lang/Number;

.field private c:Ljava/lang/Number;

.field private d:Ljava/lang/Number;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 12

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Number;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    new-array v5, v0, [I

    .line 37
    fill-array-data v5, :array_0

    move v6, v2

    :goto_0
    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-ge v6, v0, :cond_6

    .line 39
    aget-object v10, v1, v6

    if-eqz v10, :cond_5

    .line 41
    instance-of v11, v10, Ljava/lang/Byte;

    if-eqz v11, :cond_0

    .line 42
    aput v3, v5, v6

    goto :goto_1

    .line 43
    :cond_0
    instance-of v11, v10, Ljava/lang/Short;

    if-eqz v11, :cond_1

    .line 44
    aput v4, v5, v6

    goto :goto_1

    .line 45
    :cond_1
    instance-of v11, v10, Ljava/lang/Integer;

    if-eqz v11, :cond_2

    .line 46
    aput v0, v5, v6

    goto :goto_1

    .line 47
    :cond_2
    instance-of v11, v10, Ljava/lang/Long;

    if-eqz v11, :cond_3

    .line 48
    aput v9, v5, v6

    goto :goto_1

    .line 49
    :cond_3
    instance-of v9, v10, Ljava/lang/Float;

    if-eqz v9, :cond_4

    .line 50
    aput v8, v5, v6

    goto :goto_1

    .line 51
    :cond_4
    instance-of v8, v10, Ljava/lang/Double;

    if-eqz v8, :cond_5

    .line 52
    aput v7, v5, v6

    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    move v1, v2

    move v6, v1

    :goto_2
    if-ge v1, v0, :cond_8

    .line 58
    aget v10, v5, v1

    if-ge v6, v10, :cond_7

    move v6, v10

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x7

    if-nez p1, :cond_9

    new-array p1, v1, [Ljava/lang/Number;

    const/high16 v5, -0x80000000

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, p1, v2

    const/16 v10, -0x80

    .line 66
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, p1, v3

    const/16 v10, -0x8000

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v0

    const-wide/high16 v10, -0x8000000000000000L

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, p1, v9

    const/4 v5, 0x1

    .line 67
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, p1, v8

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, p1, v7

    .line 69
    aget-object p1, p1, v6

    goto :goto_3

    :cond_9
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 72
    :pswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto :goto_3

    .line 73
    :pswitch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_3

    .line 74
    :pswitch_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_3

    .line 75
    :pswitch_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    .line 76
    :pswitch_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_3

    .line 77
    :pswitch_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    :goto_3
    if-nez p2, :cond_a

    new-array p2, v1, [Ljava/lang/Number;

    const v1, 0x7fffffff

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p2, v2

    const/16 v5, 0x7f

    .line 84
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, p2, v3

    const/16 v5, 0x7fff

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v9

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 85
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v8

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p2, v7

    .line 87
    aget-object p2, p2, v6

    goto :goto_4

    :cond_a
    packed-switch v6, :pswitch_data_1

    goto :goto_4

    .line 90
    :pswitch_6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    goto :goto_4

    .line 91
    :pswitch_7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_4

    .line 92
    :pswitch_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_4

    .line 93
    :pswitch_9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    .line 94
    :pswitch_a
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->shortValue()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    goto :goto_4

    .line 95
    :pswitch_b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->byteValue()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    .line 99
    :goto_4
    iput-object p1, p0, Lcom/mob/commons/cc/aa$a;->a:Ljava/lang/Number;

    .line 100
    iput-object p2, p0, Lcom/mob/commons/cc/aa$a;->b:Ljava/lang/Number;

    .line 101
    iput-object p3, p0, Lcom/mob/commons/cc/aa$a;->c:Ljava/lang/Number;

    .line 102
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_b

    move v2, v3

    :cond_b
    iput-boolean v2, p0, Lcom/mob/commons/cc/aa$a;->e:Z

    .line 103
    iget-object p1, p0, Lcom/mob/commons/cc/aa$a;->c:Ljava/lang/Number;

    if-nez p1, :cond_d

    if-eqz v2, :cond_c

    const/4 v3, -0x1

    .line 104
    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/commons/cc/aa$a;->c:Ljava/lang/Number;

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/mob/commons/cc/aa$a;)Ljava/lang/Number;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mob/commons/cc/aa$a;->a:Ljava/lang/Number;

    return-object p0
.end method

.method static synthetic b(Lcom/mob/commons/cc/aa$a;)Ljava/lang/Number;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mob/commons/cc/aa$a;->b:Ljava/lang/Number;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/mob/commons/cc/aa$a;->d:Ljava/lang/Number;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/commons/cc/aa$a;->a:Ljava/lang/Number;

    .line 110
    :cond_0
    iget-boolean v1, p0, Lcom/mob/commons/cc/aa$a;->e:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 111
    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/mob/commons/cc/aa$a;->b:Ljava/lang/Number;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 113
    :cond_2
    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/mob/commons/cc/aa$a;->b:Ljava/lang/Number;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method public b()Ljava/lang/Number;
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/mob/commons/cc/aa$a;->d:Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mob/commons/cc/aa$a;->a:Ljava/lang/Number;

    iput-object v0, p0, Lcom/mob/commons/cc/aa$a;->d:Ljava/lang/Number;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/mob/commons/cc/aa$a;->d:Ljava/lang/Number;

    .line 123
    iget-object v1, p0, Lcom/mob/commons/cc/aa$a;->c:Ljava/lang/Number;

    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/mob/commons/cc/aa$a;->c:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/aa$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 125
    :cond_1
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/aa$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/aa$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 127
    :cond_2
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mob/commons/cc/aa$a;->c:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/aa$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 129
    :cond_3
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 130
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/aa$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/aa$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 131
    :cond_4
    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/aa$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/aa$a;->d:Ljava/lang/Number;

    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    iget-object v2, p0, Lcom/mob/commons/cc/aa$a;->c:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mob/commons/cc/aa$a;->d:Ljava/lang/Number;

    :goto_0
    return-object v0
.end method
