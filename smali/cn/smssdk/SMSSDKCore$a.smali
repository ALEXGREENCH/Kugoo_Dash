.class Lcn/smssdk/SMSSDKCore$a;
.super Ljava/lang/Object;
.source "SMSSDKCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/SMSSDKCore;->c(Ljava/lang/Object;)V
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
    iput-object p1, p0, Lcn/smssdk/SMSSDKCore$a;->b:Lcn/smssdk/SMSSDKCore;

    iput-object p2, p0, Lcn/smssdk/SMSSDKCore$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/smssdk/SMSSDKCore$a;->a:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 3
    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    .line 4
    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/String;

    const-string v5, "+"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcn/smssdk/SMSSDKCore$a;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v3}, Lcn/smssdk/SMSSDKCore;->c(Lcn/smssdk/SMSSDKCore;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/smssdk/SMSSDKCore$a;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v3}, Lcn/smssdk/SMSSDKCore;->c(Lcn/smssdk/SMSSDKCore;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 11
    :cond_1
    iget-object v3, p0, Lcn/smssdk/SMSSDKCore$a;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v3}, Lcn/smssdk/SMSSDKCore;->d(Lcn/smssdk/SMSSDKCore;)Ljava/util/ArrayList;

    .line 14
    :cond_2
    iget-object v3, p0, Lcn/smssdk/SMSSDKCore$a;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v3}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;)Lcn/smssdk/net/f;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v0}, Lcn/smssdk/net/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 19
    :goto_0
    iget-object v2, p0, Lcn/smssdk/SMSSDKCore$a;->b:Lcn/smssdk/SMSSDKCore;

    const/16 v3, 0x8

    invoke-static {v2, v3, v1, v0}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;IILjava/lang/Object;)V

    return-void
.end method
