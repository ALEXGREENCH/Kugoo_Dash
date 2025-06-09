.class Lcom/mob/commons/b$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/b$2;


# direct methods
.method constructor <init>(Lcom/mob/commons/b$2;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/mob/commons/b$2$1;->a:Lcom/mob/commons/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 1

    .line 380
    invoke-static {}, Lcom/mob/commons/b;->j()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    monitor-enter p1

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/b$2$1;->a:Lcom/mob/commons/b$2;

    iget-object v0, v0, Lcom/mob/commons/b$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/b;->c(Ljava/lang/String;)V

    .line 382
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
