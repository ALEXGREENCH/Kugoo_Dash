.class public Lcn/smssdk/utils/SMSLog;
.super Lcom/mob/tools/log/NLog;
.source "SMSLog.java"


# static fields
.field public static final FORMAT:Ljava/lang/String; = "[SMSSDK][%s][%s] %s"

.field public static final FORMAT_SIMPLE:Ljava/lang/String; = "[SMSSDK] %s"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/log/NLog;-><init>()V

    .line 2
    new-instance v0, Lcn/smssdk/utils/SMSLog$1;

    invoke-direct {v0, p0}, Lcn/smssdk/utils/SMSLog$1;-><init>(Lcn/smssdk/utils/SMSLog;)V

    const-string v1, "SMSSDK"

    invoke-static {v1, v0}, Lcom/mob/tools/log/NLog;->setCollector(Ljava/lang/String;Lcom/mob/tools/log/LogCollector;)V

    return-void
.end method

.method public static getInstance()Lcom/mob/tools/log/NLog;
    .locals 2

    const-string v0, "SMSSDK"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/mob/tools/log/NLog;->getInstanceForSDK(Ljava/lang/String;Z)Lcom/mob/tools/log/NLog;

    move-result-object v0

    return-object v0
.end method

.method public static prepare()Lcom/mob/tools/log/NLog;
    .locals 1

    .line 1
    new-instance v0, Lcn/smssdk/utils/SMSLog;

    invoke-direct {v0}, Lcn/smssdk/utils/SMSLog;-><init>()V

    return-object v0
.end method
