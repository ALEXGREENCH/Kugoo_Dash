.class public Lcn/smssdk/gui/entity/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private phoneNum:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/smssdk/gui/entity/Profile;->nickName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcn/smssdk/gui/entity/Profile;->phoneNum:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcn/smssdk/gui/entity/Profile;->avatar:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcn/smssdk/gui/entity/Profile;->country:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcn/smssdk/gui/entity/Profile;->uid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/smssdk/gui/entity/Profile;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/smssdk/gui/entity/Profile;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/smssdk/gui/entity/Profile;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcn/smssdk/gui/entity/Profile;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/smssdk/gui/entity/Profile;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/smssdk/gui/entity/Profile;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/smssdk/gui/entity/Profile;->country:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/smssdk/gui/entity/Profile;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/smssdk/gui/entity/Profile;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/smssdk/gui/entity/Profile;->uid:Ljava/lang/String;

    return-void
.end method
