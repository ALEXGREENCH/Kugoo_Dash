.class Lcom/mob/commons/b/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b/m;->a(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/LinkedBlockingQueue;

.field final synthetic b:Lcom/mob/commons/b/m;


# direct methods
.method constructor <init>(Lcom/mob/commons/b/m;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mob/commons/b/m$1;->b:Lcom/mob/commons/b/m;

    iput-object p2, p0, Lcom/mob/commons/b/m$1;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 54
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getMpfo([I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/mob/commons/b/m$1;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/DH$DHResponse;->getMpfo([I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/mob/commons/b/m$1;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
