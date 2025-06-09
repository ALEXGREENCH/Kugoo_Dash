.class Lcn/smssdk/utils/SMSLog$1;
.super Lcom/mob/commons/logcollector/LogsCollector;
.source "SMSLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/utils/SMSLog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcn/smssdk/utils/SMSLog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/commons/logcollector/LogsCollector;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSDKTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SMSSDK"

    return-object v0
.end method

.method protected getSDKVersion()I
    .locals 1

    .line 1
    sget v0, Lcn/smssdk/utils/a;->e:I

    return v0
.end method
