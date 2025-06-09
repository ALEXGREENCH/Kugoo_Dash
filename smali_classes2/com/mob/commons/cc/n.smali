.class public Lcom/mob/commons/cc/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/commons/cc/t<",
        "Lcom/mob/commons/cc/n;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mob/commons/cc/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 17
    new-instance v0, Lcom/mob/commons/cc/n$1;

    invoke-direct {v0, p0}, Lcom/mob/commons/cc/n$1;-><init>(Lcom/mob/commons/cc/n;)V

    return-object v0
.end method

.method static synthetic a(Lcom/mob/commons/cc/n;)Lcom/mob/commons/cc/m;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/mob/commons/cc/n;->a:Lcom/mob/commons/cc/m;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/m;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/mob/commons/cc/n;->a:Lcom/mob/commons/cc/m;

    return-void
.end method

.method public a(Lcom/mob/commons/cc/n;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/cc/n;",
            "Ljava/lang/Class<",
            "Lcom/mob/commons/cc/n;",
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

    const-string p2, "setHandler"

    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x1

    const/4 p7, 0x0

    if-eqz p2, :cond_0

    array-length p2, p4

    if-ne p2, p5, :cond_0

    aget-object p2, p4, p7

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/mob/commons/cc/m;

    if-eqz v0, :cond_0

    .line 52
    check-cast p2, Lcom/mob/commons/cc/m;

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/n;->a(Lcom/mob/commons/cc/m;)V

    goto :goto_0

    :cond_0
    const-string p2, "019!ej4fDejLjZfh%gjMghelekfifeGehh;ggZedLfi"

    .line 53
    invoke-static {p2}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    array-length p2, p4

    if-nez p2, :cond_1

    .line 54
    invoke-direct {p1}, Lcom/mob/commons/cc/n;->a()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object p1

    aput-object p1, p6, p7

    :goto_0
    return p5

    :cond_1
    return p7
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 11
    check-cast p1, Lcom/mob/commons/cc/n;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/n;->a(Lcom/mob/commons/cc/n;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
