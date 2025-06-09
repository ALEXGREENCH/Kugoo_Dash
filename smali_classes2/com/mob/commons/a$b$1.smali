.class Lcom/mob/commons/a$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a$b;->b()Lcom/mob/commons/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/mob/commons/a$b;


# direct methods
.method constructor <init>(Lcom/mob/commons/a$b;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/mob/commons/a$b$1;->c:Lcom/mob/commons/a$b;

    iput-object p2, p0, Lcom/mob/commons/a$b$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/commons/a$b$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/a$b$1;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getAdvertisingID()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    iget-object p1, p0, Lcom/mob/commons/a$b$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mob/commons/a$b$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 727
    throw p1
.end method
