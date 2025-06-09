.class public Lcom/mob/commons/SMSSDK;
.super Ljava/lang/Object;
.source "SMSSDK.java"

# interfaces
.implements Lcom/mob/commons/MobProduct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SMSSDK"

    return-object v0
.end method

.method public getSdkver()I
    .locals 1

    .line 1
    sget v0, Lcn/smssdk/utils/a;->e:I

    return v0
.end method
