.class Lcom/mob/tools/b/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/j;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>([ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/mob/tools/b/j$1;->a:[I

    iput-object p2, p0, Lcom/mob/tools/b/j$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 2

    .line 287
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getHmOsDetailedVer()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/b/j$1;->a:[I

    const-string v1, "3.0.0.200"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 292
    iget-object p1, p0, Lcom/mob/tools/b/j$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
