.class public abstract Lcom/mob/commons/logcollector/LogsCollector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/log/LogCollector;
.implements Lcom/mob/tools/proguard/ProtectedMemberKeeper;
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->get()Lcom/mob/commons/logcollector/DefaultLogsCollector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/commons/logcollector/LogsCollector;->getSDKTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mob/commons/logcollector/LogsCollector;->getSDKVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->addSDK(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected abstract getSDKTag()Ljava/lang/String;
.end method

.method protected abstract getSDKVersion()I
.end method

.method public final log(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 38
    invoke-static {}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->get()Lcom/mob/commons/logcollector/DefaultLogsCollector;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mob/commons/logcollector/DefaultLogsCollector;->log(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
