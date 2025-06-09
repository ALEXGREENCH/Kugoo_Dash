.class public Lcom/zhihu/matisse/internal/entity/CaptureStrategy;
.super Ljava/lang/Object;
.source "CaptureStrategy.java"


# instance fields
.field public final authority:Ljava/lang/String;

.field public final directory:Ljava/lang/String;

.field public final isPublic:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/zhihu/matisse/internal/entity/CaptureStrategy;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/zhihu/matisse/internal/entity/CaptureStrategy;->isPublic:Z

    .line 30
    iput-object p2, p0, Lcom/zhihu/matisse/internal/entity/CaptureStrategy;->authority:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/zhihu/matisse/internal/entity/CaptureStrategy;->directory:Ljava/lang/String;

    return-void
.end method
