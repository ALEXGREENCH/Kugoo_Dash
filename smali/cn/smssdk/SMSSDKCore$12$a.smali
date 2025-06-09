.class Lcn/smssdk/SMSSDKCore$12$a;
.super Ljava/lang/Object;
.source "SMSSDKCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/SMSSDKCore$12;->onResult(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcn/smssdk/SMSSDKCore$12;


# direct methods
.method constructor <init>(Lcn/smssdk/SMSSDKCore$12;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/SMSSDKCore$12$a;->b:Lcn/smssdk/SMSSDKCore$12;

    iput-object p2, p0, Lcn/smssdk/SMSSDKCore$12$a;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string/jumbo v0, "true"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcn/smssdk/SMSSDKCore$12$a;->a:Ljava/util/HashMap;

    const-string/jumbo v3, "res"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    const-string/jumbo v3, "showDialog"

    const-string v4, "SMSSDKCore"

    const/4 v5, 0x3

    const-string v6, "[SMSSDK][%s][%s] %s"

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    .line 2
    :try_start_1
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    aput-object v3, v5, v7

    const-string v3, "AlertPage: TRUE clicked"

    aput-object v3, v5, v2

    invoke-virtual {v0, v6, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    invoke-static {}, Lcn/smssdk/utils/b;->c()Lcn/smssdk/utils/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcn/smssdk/utils/b;->a(Z)V

    .line 5
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore$12$a;->a:Ljava/util/HashMap;

    const-string v2, "okActions"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    aput-object v3, v5, v7

    const-string v3, "AlertPage: FALSE clicked"

    aput-object v3, v5, v2

    invoke-virtual {v0, v6, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 14
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore$12$a;->a:Ljava/util/HashMap;

    const-string v2, "cancelActions"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 17
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 22
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 23
    iget-object v2, p0, Lcn/smssdk/SMSSDKCore$12$a;->b:Lcn/smssdk/SMSSDKCore$12;

    iget-object v3, v2, Lcn/smssdk/SMSSDKCore$12;->this$0:Lcn/smssdk/SMSSDKCore;

    iget v2, v2, Lcn/smssdk/SMSSDKCore$12;->val$event:I

    invoke-static {v3, v2, v1, v0}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;IILjava/lang/Object;)V

    :cond_3
    return-void
.end method
