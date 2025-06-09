.class Lcom/mob/commons/ac$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/ac;->a(Ljava/util/HashMap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/mob/commons/ac;


# direct methods
.method constructor <init>(Lcom/mob/commons/ac;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/mob/commons/ac$1;->c:Lcom/mob/commons/ac;

    iput-object p2, p0, Lcom/mob/commons/ac$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/commons/ac$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/mob/commons/ac$1;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getDeviceKey()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 153
    iget-object p1, p0, Lcom/mob/commons/ac$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
