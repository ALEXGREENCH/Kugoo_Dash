.class public Lcom/mob/commons/cc/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/io/DataInputStream;

.field protected c:I


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;I)V
    .locals 0
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

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p1, p0, Lcom/mob/commons/cc/x$a;->a:Ljava/util/ArrayList;

    .line 414
    iput-object p2, p0, Lcom/mob/commons/cc/x$a;->b:Ljava/io/DataInputStream;

    .line 415
    iput p3, p0, Lcom/mob/commons/cc/x$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;ILcom/mob/commons/cc/x$1;)V
    .locals 0

    .line 407
    invoke-direct {p0, p1, p2, p3}, Lcom/mob/commons/cc/x$a;-><init>(Ljava/util/ArrayList;Ljava/io/DataInputStream;I)V

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

    .line 419
    iget-object v0, p0, Lcom/mob/commons/cc/x$a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    return-void
.end method

.method public a(Lcom/mob/commons/cc/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/mob/commons/cc/x$a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mob/commons/cc/x$a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/mob/commons/cc/y;->b:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/mob/commons/cc/x$a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

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

    .line 424
    iget-object v0, p0, Lcom/mob/commons/cc/x$a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mob/commons/cc/x$a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/mob/commons/cc/x$a;->c:I

    return v0
.end method
