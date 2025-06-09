.class public Lcom/kugoo/kugookirin/bean/VehicleInfoResp;
.super Lcom/kugoo/kugookirin/bean/BaseResponse;
.source "VehicleInfoResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/VehicleInfoResp$Result;
    }
.end annotation


# instance fields
.field private flag:Ljava/lang/String;

.field private result:Lcom/kugoo/kugookirin/bean/VehicleInfoResp$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/kugoo/kugookirin/bean/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/VehicleInfoResp;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/kugoo/kugookirin/bean/VehicleInfoResp$Result;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/VehicleInfoResp;->result:Lcom/kugoo/kugookirin/bean/VehicleInfoResp$Result;

    return-object v0
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/VehicleInfoResp;->flag:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lcom/kugoo/kugookirin/bean/VehicleInfoResp$Result;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/VehicleInfoResp;->result:Lcom/kugoo/kugookirin/bean/VehicleInfoResp$Result;

    return-void
.end method
