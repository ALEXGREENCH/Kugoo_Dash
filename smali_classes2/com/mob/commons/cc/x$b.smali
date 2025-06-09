.class public Lcom/mob/commons/cc/x$b;
.super Lcom/mob/commons/cc/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/DataInputStream;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 439
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mob/commons/cc/x$a;-><init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;ILcom/mob/commons/cc/x$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;ILcom/mob/commons/cc/x$1;)V
    .locals 0

    .line 437
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/commons/cc/x$b;-><init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/mob/commons/cc/x$b;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    return-void
.end method

.method public a(Lcom/mob/commons/cc/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/mob/commons/cc/x$b;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mob/commons/cc/x$b;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/mob/commons/cc/y;->b:Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/mob/commons/cc/x$b;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/mob/commons/cc/y;->c:I

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/mob/commons/cc/x$b;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mob/commons/cc/x$b;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
