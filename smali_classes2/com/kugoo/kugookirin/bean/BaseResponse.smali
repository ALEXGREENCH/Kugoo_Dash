.class public Lcom/kugoo/kugookirin/bean/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"


# instance fields
.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/BaseResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/BaseResponse;->status:Ljava/lang/String;

    return-void
.end method
