.class final Lcn/smssdk/wrapper/MobVerifyWrapper$1;
.super Lcom/mob/mobverify/OperationCallback;
.source "MobVerifyWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/wrapper/MobVerifyWrapper;->a(Lcn/smssdk/wrapper/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/mobverify/OperationCallback<",
        "Lcom/mob/mobverify/datatype/VerifyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/smssdk/wrapper/a;


# direct methods
.method constructor <init>(Lcn/smssdk/wrapper/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/wrapper/MobVerifyWrapper$1;->a:Lcn/smssdk/wrapper/a;

    invoke-direct {p0}, Lcom/mob/mobverify/OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/mob/mobverify/datatype/VerifyResult;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/smssdk/wrapper/MobVerifyWrapper$1;->a:Lcn/smssdk/wrapper/a;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcn/smssdk/wrapper/TokenVerifyResult;

    invoke-virtual {p1}, Lcom/mob/mobverify/datatype/VerifyResult;->getOpToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mob/mobverify/datatype/VerifyResult;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mob/mobverify/datatype/VerifyResult;->getOperator()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcn/smssdk/wrapper/TokenVerifyResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcn/smssdk/wrapper/MobVerifyWrapper$1;->a:Lcn/smssdk/wrapper/a;

    invoke-virtual {p1, v0}, Lcn/smssdk/wrapper/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mob/mobverify/datatype/VerifyResult;

    invoke-virtual {p0, p1}, Lcn/smssdk/wrapper/MobVerifyWrapper$1;->onComplete(Lcom/mob/mobverify/datatype/VerifyResult;)V

    return-void
.end method

.method public onFailure(Lcom/mob/mobverify/exception/VerifyException;)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get token failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mob/mobverify/exception/VerifyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "[SMSSDK] %s"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 2
    iget-object v0, p0, Lcn/smssdk/wrapper/MobVerifyWrapper$1;->a:Lcn/smssdk/wrapper/a;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcn/smssdk/wrapper/TokenVerifyException;

    invoke-virtual {p1}, Lcom/mob/mobverify/exception/VerifyException;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/mob/mobverify/exception/VerifyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/smssdk/wrapper/TokenVerifyException;-><init>(ILjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcn/smssdk/wrapper/MobVerifyWrapper$1;->a:Lcn/smssdk/wrapper/a;

    invoke-virtual {p1, v0}, Lcn/smssdk/wrapper/a;->a(Lcn/smssdk/wrapper/TokenVerifyException;)V

    :cond_0
    return-void
.end method
