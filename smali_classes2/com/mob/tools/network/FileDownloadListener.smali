.class public abstract Lcom/mob/tools/network/FileDownloadListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private isCanceled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mob/tools/network/FileDownloadListener;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/mob/tools/network/FileDownloadListener;->isCanceled:Z

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/mob/tools/network/FileDownloadListener;->isCanceled:Z

    return v0
.end method

.method protected abstract onProgress(IJJ)V
.end method
