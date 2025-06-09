.class public interface abstract Lcn/smssdk/logger/ILoggerEngine;
.super Ljava/lang/Object;
.source "ILoggerEngine.java"


# virtual methods
.method public abstract deleteAllLogItems()V
.end method

.method public abstract deleteLogItem(J)V
.end method

.method public abstract getLogList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/smssdk/logger/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertOneRequestLog(IJLjava/lang/String;)V
.end method
