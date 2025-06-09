.class public Lcn/smssdk/wrapper/TokenVerifyResult;
.super Lcn/smssdk/entity/BaseEntity;
.source "TokenVerifyResult.java"


# instance fields
.field private opToken:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/smssdk/entity/BaseEntity;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/smssdk/wrapper/TokenVerifyResult;->opToken:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/smssdk/wrapper/TokenVerifyResult;->token:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/smssdk/wrapper/TokenVerifyResult;->operator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOpToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/smssdk/wrapper/TokenVerifyResult;->opToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/smssdk/wrapper/TokenVerifyResult;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/smssdk/wrapper/TokenVerifyResult;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setOpToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/wrapper/TokenVerifyResult;->opToken:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/wrapper/TokenVerifyResult;->operator:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/smssdk/wrapper/TokenVerifyResult;->token:Ljava/lang/String;

    return-void
.end method
