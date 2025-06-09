.class public Lcom/mob/commons/cc/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/cc/z$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/mob/commons/cc/s;

.field private d:I

.field private e:I

.field private f:Lcom/mob/commons/cc/w;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/y;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;II",
            "Lcom/mob/commons/cc/s;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mob/commons/cc/z;->a:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/mob/commons/cc/z;->b:I

    .line 24
    new-instance p1, Lcom/mob/commons/cc/w;

    invoke-direct {p1, p3, p4}, Lcom/mob/commons/cc/w;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/mob/commons/cc/z;->f:Lcom/mob/commons/cc/w;

    .line 25
    iput p5, p0, Lcom/mob/commons/cc/z;->d:I

    .line 26
    iput p6, p0, Lcom/mob/commons/cc/z;->e:I

    .line 27
    iput-object p7, p0, Lcom/mob/commons/cc/z;->c:Lcom/mob/commons/cc/s;

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/s;)Lcom/mob/commons/cc/z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/y;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;II",
            "Lcom/mob/commons/cc/s;",
            ")",
            "Lcom/mob/commons/cc/z;"
        }
    .end annotation

    .line 155
    new-instance v8, Lcom/mob/commons/cc/z$1;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mob/commons/cc/z$1;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/s;)V

    return-object v8
.end method

.method private a(Ljava/lang/String;ILjava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/mob/commons/cc/y;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 41
    new-instance v1, Lcom/mob/commons/cc/y;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lcom/mob/commons/cc/y;-><init>(I)V

    .line 42
    iput-object p1, v1, Lcom/mob/commons/cc/y;->b:Ljava/lang/String;

    .line 43
    iput p2, v1, Lcom/mob/commons/cc/y;->c:I

    .line 44
    iput v0, v1, Lcom/mob/commons/cc/y;->i:I

    .line 45
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    new-instance v1, Lcom/mob/commons/cc/y;

    invoke-direct {v1, v0}, Lcom/mob/commons/cc/y;-><init>(I)V

    .line 49
    iput-object p1, v1, Lcom/mob/commons/cc/y;->b:Ljava/lang/String;

    .line 50
    iput p2, v1, Lcom/mob/commons/cc/y;->c:I

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "arg"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mob/commons/cc/y;->h:Ljava/lang/String;

    .line 52
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget v1, p0, Lcom/mob/commons/cc/z;->b:I

    add-int/lit8 v2, v1, -0x1

    const/16 v5, 0x1c

    if-ge p4, v2, :cond_1

    .line 55
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/mob/commons/cc/z;->a(Ljava/lang/String;ILjava/util/ArrayList;I)V

    .line 57
    new-instance v0, Lcom/mob/commons/cc/y;

    invoke-direct {v0, v5}, Lcom/mob/commons/cc/y;-><init>(I)V

    .line 58
    iput-object p1, v0, Lcom/mob/commons/cc/y;->b:Ljava/lang/String;

    .line 59
    iput p2, v0, Lcom/mob/commons/cc/y;->c:I

    .line 60
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1
    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 63
    new-instance v0, Lcom/mob/commons/cc/y;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/mob/commons/cc/y;-><init>(I)V

    .line 64
    iput-object p1, v0, Lcom/mob/commons/cc/y;->b:Ljava/lang/String;

    .line 65
    iput p2, v0, Lcom/mob/commons/cc/y;->c:I

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mob/commons/cc/y;->h:Ljava/lang/String;

    .line 67
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/mob/commons/cc/z;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 71
    new-instance v0, Lcom/mob/commons/cc/y;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/y;-><init>(I)V

    .line 72
    iput-object p1, v0, Lcom/mob/commons/cc/y;->b:Ljava/lang/String;

    .line 73
    iput p2, v0, Lcom/mob/commons/cc/y;->c:I

    .line 74
    iput-object p0, v0, Lcom/mob/commons/cc/y;->q:Ljava/lang/Object;

    .line 75
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v0, Lcom/mob/commons/cc/y;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/y;-><init>(I)V

    .line 78
    iput-object p1, v0, Lcom/mob/commons/cc/y;->b:Ljava/lang/String;

    .line 79
    iput p2, v0, Lcom/mob/commons/cc/y;->c:I

    .line 80
    iget v1, p0, Lcom/mob/commons/cc/z;->b:I

    iput v1, v0, Lcom/mob/commons/cc/y;->i:I

    .line 81
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_3
    new-instance v0, Lcom/mob/commons/cc/y;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Lcom/mob/commons/cc/y;-><init>(I)V

    .line 84
    iput-object p1, v0, Lcom/mob/commons/cc/y;->b:Ljava/lang/String;

    .line 85
    iput p2, v0, Lcom/mob/commons/cc/y;->c:I

    .line 86
    iget-object v1, p0, Lcom/mob/commons/cc/z;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/mob/commons/cc/y;->h:Ljava/lang/String;

    .line 87
    iget v1, p0, Lcom/mob/commons/cc/z;->b:I

    iput v1, v0, Lcom/mob/commons/cc/y;->i:I

    .line 88
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/mob/commons/cc/z;->f:Lcom/mob/commons/cc/w;

    invoke-virtual {v0}, Lcom/mob/commons/cc/w;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/commons/cc/y;

    .line 92
    iget v1, v1, Lcom/mob/commons/cc/y;->a:I

    if-ne v1, v5, :cond_4

    .line 93
    new-instance v0, Lcom/mob/commons/cc/y;

    invoke-direct {v0, v5}, Lcom/mob/commons/cc/y;-><init>(I)V

    .line 94
    iput-object p1, v0, Lcom/mob/commons/cc/y;->b:Ljava/lang/String;

    .line 95
    iput p2, v0, Lcom/mob/commons/cc/y;->c:I

    .line 96
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 103
    new-instance p4, Lcom/mob/commons/cc/y;

    const/16 v0, 0x1e

    invoke-direct {p4, v0}, Lcom/mob/commons/cc/y;-><init>(I)V

    .line 104
    iput-object p1, p4, Lcom/mob/commons/cc/y;->b:Ljava/lang/String;

    .line 105
    iput p2, p4, Lcom/mob/commons/cc/y;->c:I

    .line 106
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lcom/mob/commons/cc/z$a;
    .locals 2

    .line 111
    new-instance v0, Lcom/mob/commons/cc/z$a;

    invoke-direct {v0}, Lcom/mob/commons/cc/z$a;-><init>()V

    .line 113
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/commons/cc/z;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/commons/cc/z$a;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 118
    iput-object p1, v0, Lcom/mob/commons/cc/z$a;->a:Ljava/lang/Throwable;

    :cond_0
    :goto_0
    return-object v0
.end method

.method public a(Lcom/mob/commons/cc/s;Ljava/lang/String;I)Lcom/mob/commons/cc/z;
    .locals 10

    .line 31
    iget v0, p0, Lcom/mob/commons/cc/z;->b:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    .line 34
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p2, p3, v5, v0}, Lcom/mob/commons/cc/z;->a(Ljava/lang/String;ILjava/util/ArrayList;I)V

    .line 36
    new-instance p2, Lcom/mob/commons/cc/z;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object v2, p2

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/mob/commons/cc/z;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/s;)V

    return-object p2
.end method

.method public varargs b([Ljava/lang/Object;)Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/mob/commons/cc/z;->c:Lcom/mob/commons/cc/s;

    invoke-virtual {v0}, Lcom/mob/commons/cc/s;->b()Lcom/mob/commons/cc/s;

    move-result-object v0

    .line 125
    iget v1, p0, Lcom/mob/commons/cc/z;->b:I

    if-eqz v1, :cond_4

    .line 126
    array-length v2, p1

    if-ne v2, v1, :cond_0

    .line 127
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 128
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/s;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 130
    :cond_0
    array-length v2, p1

    if-ge v2, v1, :cond_2

    .line 131
    array-length v1, p1

    :goto_1
    iget v2, p0, Lcom/mob/commons/cc/z;->b:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/s;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_4

    .line 135
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/s;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 138
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    iget v2, p0, Lcom/mob/commons/cc/z;->b:I

    add-int/lit8 v2, v2, -0x1

    :goto_3
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 140
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 142
    :cond_3
    invoke-virtual {v0, v1}, Lcom/mob/commons/cc/s;->a(Ljava/lang/Object;)V

    .line 143
    iget v1, p0, Lcom/mob/commons/cc/z;->b:I

    add-int/lit8 v1, v1, -0x2

    :goto_4
    if-ltz v1, :cond_4

    .line 144
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/mob/commons/cc/s;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 148
    :cond_4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/mob/commons/cc/z;->f:Lcom/mob/commons/cc/w;

    iget v2, p0, Lcom/mob/commons/cc/z;->d:I

    iget v3, p0, Lcom/mob/commons/cc/z;->e:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/mob/commons/cc/w;->a(IILcom/mob/commons/cc/s;Ljava/util/List;)V

    return-object p1
.end method
