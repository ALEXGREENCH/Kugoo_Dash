.class public Lcn/smssdk/wrapper/MobVerifyWrapper;
.super Ljava/lang/Object;
.source "MobVerifyWrapper.java"


# direct methods
.method public static a(Lcn/smssdk/wrapper/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/smssdk/wrapper/a<",
            "Lcn/smssdk/wrapper/TokenVerifyResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcn/smssdk/wrapper/MobVerifyWrapper$1;

    invoke-direct {v0, p0}, Lcn/smssdk/wrapper/MobVerifyWrapper$1;-><init>(Lcn/smssdk/wrapper/a;)V

    invoke-static {v0}, Lcom/mob/mobverify/MobVerify;->getToken(Lcom/mob/mobverify/OperationCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 21
    :catchall_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "invoke mobverify component error"

    aput-object v2, v0, v1

    const-string v1, "[SMSSDK] %s"

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
