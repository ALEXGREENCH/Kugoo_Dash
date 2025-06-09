.class public Lcom/lidroid/xutils/exception/HttpException;
.super Lcom/lidroid/xutils/exception/BaseException;
.source "HttpException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exceptionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/lidroid/xutils/exception/BaseException;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/lidroid/xutils/exception/BaseException;-><init>()V

    .line 42
    iput p1, p0, Lcom/lidroid/xutils/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p2}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/String;)V

    .line 51
    iput p1, p0, Lcom/lidroid/xutils/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 60
    invoke-direct {p0, p2, p3}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    iput p1, p0, Lcom/lidroid/xutils/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 69
    invoke-direct {p0, p2}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/Throwable;)V

    .line 70
    iput p1, p0, Lcom/lidroid/xutils/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getExceptionCode()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/lidroid/xutils/exception/HttpException;->exceptionCode:I

    return v0
.end method
