.class Lcn/smssdk/SMSSDKCore$j;
.super Ljava/lang/Object;
.source "SMSSDKCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/SMSSDKCore;->e(Ljava/lang/Object;)V
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
    iput-object p1, p0, Lcn/smssdk/SMSSDKCore$j;->b:Lcn/smssdk/SMSSDKCore;

    iput-object p2, p0, Lcn/smssdk/SMSSDKCore$j;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore$j;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v1}, Lcn/smssdk/SMSSDKCore;->c(Lcn/smssdk/SMSSDKCore;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/smssdk/SMSSDKCore$j;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v1}, Lcn/smssdk/SMSSDKCore;->c(Lcn/smssdk/SMSSDKCore;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore$j;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v1}, Lcn/smssdk/SMSSDKCore;->d(Lcn/smssdk/SMSSDKCore;)Ljava/util/ArrayList;

    .line 5
    :cond_1
    iget-object v1, p0, Lcn/smssdk/SMSSDKCore$j;->a:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 6
    aget-object v2, v1, v0

    const/4 v3, 0x1

    .line 7
    aget-object v4, v1, v3

    const/4 v5, 0x2

    .line 8
    aget-object v1, v1, v5

    const-string v5, "+"

    .line 10
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 14
    :cond_2
    iget-object v3, p0, Lcn/smssdk/SMSSDKCore$j;->b:Lcn/smssdk/SMSSDKCore;

    invoke-static {v3}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;)Lcn/smssdk/net/f;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcn/smssdk/net/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 19
    :goto_0
    iget-object v2, p0, Lcn/smssdk/SMSSDKCore$j;->b:Lcn/smssdk/SMSSDKCore;

    const/4 v3, 0x3

    invoke-static {v2, v3, v0, v1}, Lcn/smssdk/SMSSDKCore;->a(Lcn/smssdk/SMSSDKCore;IILjava/lang/Object;)V

    return-void
.end method
