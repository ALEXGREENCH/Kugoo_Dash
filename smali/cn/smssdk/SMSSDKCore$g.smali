.class Lcn/smssdk/SMSSDKCore$g;
.super Ljava/lang/Thread;
.source "SMSSDKCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/SMSSDKCore;->a(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcn/smssdk/SMSSDKCore;


# direct methods
.method constructor <init>(Lcn/smssdk/SMSSDKCore;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/SMSSDKCore$g;->c:Lcn/smssdk/SMSSDKCore;

    iput p2, p0, Lcn/smssdk/SMSSDKCore$g;->a:I

    iput-object p3, p0, Lcn/smssdk/SMSSDKCore$g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore$g;->c:Lcn/smssdk/SMSSDKCore;

    invoke-static {v0}, Lcn/smssdk/SMSSDKCore;->b(Lcn/smssdk/SMSSDKCore;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore$g;->c:Lcn/smssdk/SMSSDKCore;

    invoke-static {v1}, Lcn/smssdk/SMSSDKCore;->b(Lcn/smssdk/SMSSDKCore;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/smssdk/EventHandler;

    .line 3
    iget v3, p0, Lcn/smssdk/SMSSDKCore$g;->a:I

    iget-object v4, p0, Lcn/smssdk/SMSSDKCore$g;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcn/smssdk/EventHandler;->beforeEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-static {}, Lcn/smssdk/SMSSDKCore;->f()V

    .line 8
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore$g;->c:Lcn/smssdk/SMSSDKCore;

    iget v1, p0, Lcn/smssdk/SMSSDKCore$g;->a:I

    iget-object v2, p0, Lcn/smssdk/SMSSDKCore$g;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 14
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore$g;->c:Lcn/smssdk/SMSSDKCore;

    iget v2, p0, Lcn/smssdk/SMSSDKCore$g;->a:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;IILjava/lang/Object;)V

    :goto_1
    return-void
.end method
