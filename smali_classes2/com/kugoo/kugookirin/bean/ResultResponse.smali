.class public Lcom/kugoo/kugookirin/bean/ResultResponse;
.super Lcom/kugoo/kugookirin/bean/BaseResponse;
.source "ResultResponse.java"


# instance fields
.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/kugoo/kugookirin/bean/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/ResultResponse;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/ResultResponse;->result:Ljava/lang/String;

    return-void
.end method
