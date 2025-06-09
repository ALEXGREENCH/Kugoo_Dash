.class Lcom/mob/commons/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b/e;->c(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/mob/commons/b/e$1;->a:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/mob/commons/b/e$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/mob/commons/b/e$1;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {p1, v2}, Lcom/mob/tools/utils/DH$DHResponse;->getMpfo([I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    .line 178
    iget-object p1, p0, Lcom/mob/commons/b/e$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
