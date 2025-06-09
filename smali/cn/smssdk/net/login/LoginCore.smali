.class public Lcn/smssdk/net/login/LoginCore;
.super Ljava/lang/Object;
.source "LoginCore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/smssdk/wrapper/TokenVerifyResult;Lcn/smssdk/net/login/d;)V
    .locals 8

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v6, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v6}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 9
    new-instance v0, Lcn/smssdk/net/login/LoginCore$1;

    const-string v3, "login"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcn/smssdk/net/login/LoginCore$1;-><init>(Lcn/smssdk/net/login/LoginCore;Ljava/lang/String;Lcn/smssdk/wrapper/TokenVerifyResult;Ljava/lang/String;Lcom/mob/tools/utils/Hashon;Lcn/smssdk/net/login/d;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 95
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/16 p2, 0x26a

    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance p2, Ljava/lang/Throwable;

    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3, p2}, Lcn/smssdk/net/login/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method
