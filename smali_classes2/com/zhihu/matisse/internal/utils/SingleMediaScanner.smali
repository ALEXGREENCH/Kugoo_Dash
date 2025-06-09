.class public Lcom/zhihu/matisse/internal/utils/SingleMediaScanner;
.super Ljava/lang/Object;
.source "SingleMediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/utils/SingleMediaScanner$ScanListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/zhihu/matisse/internal/utils/SingleMediaScanner$ScanListener;

.field private mMsc:Landroid/media/MediaScannerConnection;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/zhihu/matisse/internal/utils/SingleMediaScanner$ScanListener;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/zhihu/matisse/internal/utils/SingleMediaScanner;->mPath:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/zhihu/matisse/internal/utils/SingleMediaScanner;->mListener:Lcom/zhihu/matisse/internal/utils/SingleMediaScanner$ScanListener;

    .line 30
    new-instance p2, Landroid/media/MediaScannerConnection;

    invoke-direct {p2, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p2, p0, Lcom/zhihu/matisse/internal/utils/SingleMediaScanner;->mMsc:Landroid/media/MediaScannerConnection;

    .line 31
    invoke-virtual {p2}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/zhihu/matisse/internal/utils/SingleMediaScanner;->mMsc:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/utils/SingleMediaScanner;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/zhihu/matisse/internal/utils/SingleMediaScanner;->mMsc:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 40
    iget-object p1, p0, Lcom/zhihu/matisse/internal/utils/SingleMediaScanner;->mListener:Lcom/zhihu/matisse/internal/utils/SingleMediaScanner$ScanListener;

    if-eqz p1, :cond_0

    .line 41
    invoke-interface {p1}, Lcom/zhihu/matisse/internal/utils/SingleMediaScanner$ScanListener;->onScanFinish()V

    :cond_0
    return-void
.end method
