.class Lcom/mob/mgs/impl/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/d;->a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[I

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>([Ljava/lang/String;[ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mob/mgs/impl/d$1;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/mob/mgs/impl/d$1;->b:[I

    iput-object p3, p0, Lcom/mob/mgs/impl/d$1;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/mob/mgs/impl/d$1;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getHmOsDetailedVer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    iget-object v0, p0, Lcom/mob/mgs/impl/d$1;->b:[I

    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getHmEPMState()I

    move-result p1

    aput p1, v0, v2

    .line 39
    iget-object p1, p0, Lcom/mob/mgs/impl/d$1;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
