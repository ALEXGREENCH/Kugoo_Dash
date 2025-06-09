.class public final Lcom/mob/commons/eventrecoder/EventRecorder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:Ljava/io/File;

.field private static b:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/io/File;
    .locals 1

    .line 19
    sget-object v0, Lcom/mob/commons/eventrecoder/EventRecorder;->a:Ljava/io/File;

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 19
    sput-object p0, Lcom/mob/commons/eventrecoder/EventRecorder;->a:Ljava/io/File;

    return-object p0
.end method

.method static synthetic a(Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .locals 0

    .line 19
    sput-object p0, Lcom/mob/commons/eventrecoder/EventRecorder;->b:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method private static final a(Lcom/mob/commons/o;)V
    .locals 3

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/p;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-static {v0, p0}, Lcom/mob/commons/p;->a(Ljava/io/File;Lcom/mob/commons/o;)Z

    return-void
.end method

.method private static final a(Ljava/lang/String;)V
    .locals 1

    .line 56
    new-instance v0, Lcom/mob/commons/eventrecoder/EventRecorder$2;

    invoke-direct {v0, p0}, Lcom/mob/commons/eventrecoder/EventRecorder$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Lcom/mob/commons/o;)V

    return-void
.end method

.method public static final declared-synchronized addBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mob/commons/eventrecoder/EventRecorder;

    monitor-enter v0

    .line 43
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " 0\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized addEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mob/commons/eventrecoder/EventRecorder;

    monitor-enter v0

    .line 52
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " 1\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b()Ljava/io/FileOutputStream;
    .locals 1

    .line 19
    sget-object v0, Lcom/mob/commons/eventrecoder/EventRecorder;->b:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public static final declared-synchronized checkRecord(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/mob/commons/eventrecoder/EventRecorder;

    monitor-enter v0

    .line 70
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 71
    new-instance v2, Lcom/mob/commons/eventrecoder/EventRecorder$3;

    invoke-direct {v2, p0, v1}, Lcom/mob/commons/eventrecoder/EventRecorder$3;-><init>(Ljava/lang/String;Ljava/util/LinkedList;)V

    invoke-static {v2}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Lcom/mob/commons/o;)V

    .line 100
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    .line 101
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 103
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/mob/commons/eventrecoder/EventRecorder;

    monitor-enter v0

    .line 108
    :try_start_0
    new-instance v1, Lcom/mob/commons/eventrecoder/EventRecorder$4;

    invoke-direct {v1}, Lcom/mob/commons/eventrecoder/EventRecorder$4;-><init>()V

    invoke-static {v1}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Lcom/mob/commons/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized prepare()V
    .locals 2

    const-class v0, Lcom/mob/commons/eventrecoder/EventRecorder;

    monitor-enter v0

    .line 26
    :try_start_0
    new-instance v1, Lcom/mob/commons/eventrecoder/EventRecorder$1;

    invoke-direct {v1}, Lcom/mob/commons/eventrecoder/EventRecorder$1;-><init>()V

    invoke-static {v1}, Lcom/mob/commons/eventrecoder/EventRecorder;->a(Lcom/mob/commons/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
