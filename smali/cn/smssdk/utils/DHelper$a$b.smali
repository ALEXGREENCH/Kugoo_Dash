.class Lcn/smssdk/utils/DHelper$a$b;
.super Ljava/lang/Object;
.source "DHelper.java"

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/utils/DHelper$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcn/smssdk/utils/DHelper$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/utils/DHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getCarrier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/utils/DHelper;->c(Ljava/lang/String;)Ljava/lang/String;

    new-array v1, v0, [I

    .line 3
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getNetworkTypeForce([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/utils/DHelper;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/smssdk/utils/DHelper;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "[SMSSDK] %s"

    invoke-virtual {v1, p1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method
