.class Lcom/mob/commons/j$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/j;->a(Ljava/util/ArrayList;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/LinkedBlockingQueue;

.field final synthetic c:Lcom/mob/commons/j;


# direct methods
.method constructor <init>(Lcom/mob/commons/j;Ljava/util/List;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/mob/commons/j$3;->c:Lcom/mob/commons/j;

    iput-object p2, p0, Lcom/mob/commons/j$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mob/commons/j$3;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 439
    :goto_0
    iget-object v2, p0, Lcom/mob/commons/j$3;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v1, v3, v0

    .line 440
    invoke-virtual {p1, v3}, Lcom/mob/tools/utils/DH$DHResponse;->queryIntentServices([I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 441
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 442
    iget-object v3, p0, Lcom/mob/commons/j$3;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    :cond_1
    iget-object p1, p0, Lcom/mob/commons/j$3;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
