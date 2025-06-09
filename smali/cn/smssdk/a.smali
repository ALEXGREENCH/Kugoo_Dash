.class public Lcn/smssdk/a;
.super Ljava/lang/Object;
.source "InitConfig.java"


# static fields
.field private static a:Lcn/smssdk/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcn/smssdk/a;
    .locals 2

    const-class v0, Lcn/smssdk/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/smssdk/a;->a:Lcn/smssdk/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcn/smssdk/a;

    invoke-direct {v1}, Lcn/smssdk/a;-><init>()V

    sput-object v1, Lcn/smssdk/a;->a:Lcn/smssdk/a;

    .line 4
    :cond_0
    sget-object v1, Lcn/smssdk/a;->a:Lcn/smssdk/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
