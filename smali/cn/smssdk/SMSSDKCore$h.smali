.class Lcn/smssdk/SMSSDKCore$h;
.super Ljava/lang/Object;
.source "SMSSDKCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/SMSSDKCore;->b(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcn/smssdk/SMSSDKCore;


# direct methods
.method constructor <init>(Lcn/smssdk/SMSSDKCore;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/SMSSDKCore$h;->b:Lcn/smssdk/SMSSDKCore;

    iput-object p2, p0, Lcn/smssdk/SMSSDKCore$h;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcn/smssdk/SMSSDKCore$h;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v2}, Lcn/smssdk/SMSSDKCore;->c(Lcn/smssdk/SMSSDKCore;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/smssdk/SMSSDKCore$h;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v2}, Lcn/smssdk/SMSSDKCore;->c(Lcn/smssdk/SMSSDKCore;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2
    :cond_0
    iget-object v2, p0, Lcn/smssdk/SMSSDKCore$h;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v2}, Lcn/smssdk/SMSSDKCore;->d(Lcn/smssdk/SMSSDKCore;)Ljava/util/ArrayList;

    .line 5
    :cond_1
    iget-object v2, p0, Lcn/smssdk/SMSSDKCore$h;->a:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 6
    aget-object v3, v2, v1

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 7
    aget-object v5, v2, v4

    check-cast v5, Ljava/lang/String;

    .line 8
    aget-object v6, v2, v0

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x3

    .line 9
    aget-object v7, v2, v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "+"

    .line 11
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const/4 v4, 0x4

    .line 15
    aget-object v2, v2, v4

    check-cast v2, Lcn/smssdk/OnSendMessageHandler;

    if-eqz v2, :cond_4

    .line 16
    invoke-interface {v2, v3, v5}, Lcn/smssdk/OnSendMessageHandler;->onSendMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    new-instance v2, Lcn/smssdk/UserInterruptException;

    invoke-direct {v2}, Lcn/smssdk/UserInterruptException;-><init>()V

    throw v2

    .line 19
    :cond_4
    :goto_0
    iget-object v2, p0, Lcn/smssdk/SMSSDKCore$h;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v2}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;)Lcn/smssdk/net/f;

    move-result-object v2

    invoke-virtual {v2, v3, v5, v6, v7}, Lcn/smssdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    move v9, v2

    move-object v2, v1

    move v1, v9

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 26
    :goto_1
    iget-object v3, p0, Lcn/smssdk/SMSSDKCore$h;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v3, v0, v1, v2}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;IILjava/lang/Object;)V

    return-void
.end method
