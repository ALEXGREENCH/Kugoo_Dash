.class Lcom/mob/commons/v$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/v;->b()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:[Ljava/lang/Object;

.field final synthetic c:Lcom/mob/tools/utils/ReflectHelper$a;


# direct methods
.method constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;Lcom/mob/tools/utils/ReflectHelper$a;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mob/commons/v$2;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mob/commons/v$2;->b:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/mob/commons/v$2;->c:Lcom/mob/tools/utils/ReflectHelper$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 71
    iget-object p1, p0, Lcom/mob/commons/v$2;->a:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/v$2;->b:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/mob/commons/v$2;->c:Lcom/mob/tools/utils/ReflectHelper$a;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/mob/tools/utils/ReflectHelper$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    iget-object v1, p0, Lcom/mob/commons/v$2;->a:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 75
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    :try_start_3
    iget-object v1, p0, Lcom/mob/commons/v$2;->a:Ljava/lang/Object;

    goto :goto_0

    .line 79
    :goto_1
    monitor-exit p1

    return v0

    :catchall_2
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/mob/commons/v$2;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 78
    throw v0

    .line 79
    :goto_2
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
