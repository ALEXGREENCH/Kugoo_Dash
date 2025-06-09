.class public Lcom/kugoo/kugookirin/social/bean/RemindInfo;
.super Ljava/lang/Object;
.source "RemindInfo.java"


# instance fields
.field private isChecked:Z

.field private nickName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->uid:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->nickName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->portraitUrl:Ljava/lang/String;

    .line 22
    iput-boolean p4, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->isChecked:Z

    return-void
.end method


# virtual methods
.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->isChecked:Z

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->uid:Ljava/lang/String;

    return-void
.end method
