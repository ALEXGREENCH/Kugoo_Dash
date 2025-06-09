.class public Lcom/mob/commons/logcollector/DefaultLogsCollector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/log/LogCollector;
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/mob/commons/logcollector/DefaultLogsCollector;


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/logcollector/DefaultLogsCollector;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized get()Lcom/mob/commons/logcollector/DefaultLogsCollector;
    .locals 2

    const-class v0, Lcom/mob/commons/logcollector/DefaultLogsCollector;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/mob/commons/logcollector/DefaultLogsCollector;->a:Lcom/mob/commons/logcollector/DefaultLogsCollector;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/mob/commons/logcollector/DefaultLogsCollector;

    invoke-direct {v1}, Lcom/mob/commons/logcollector/DefaultLogsCollector;-><init>()V

    sput-object v1, Lcom/mob/commons/logcollector/DefaultLogsCollector;->a:Lcom/mob/commons/logcollector/DefaultLogsCollector;

    .line 19
    :cond_0
    sget-object v1, Lcom/mob/commons/logcollector/DefaultLogsCollector;->a:Lcom/mob/commons/logcollector/DefaultLogsCollector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addSDK(Ljava/lang/String;I)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/mob/commons/logcollector/DefaultLogsCollector;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/mob/commons/logcollector/DefaultLogsCollector;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final log(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    iget-object p3, p0, Lcom/mob/commons/logcollector/DefaultLogsCollector;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_0

    const/4 p3, -0x1

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 38
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p3, p1}, Lcom/mob/tools/log/NLog;->getInstance(Ljava/lang/String;ILjava/lang/String;)Lcom/mob/tools/log/NLog;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    .line 39
    invoke-virtual {p1, p2, p5, p3}, Lcom/mob/tools/log/NLog;->log(ILjava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method
