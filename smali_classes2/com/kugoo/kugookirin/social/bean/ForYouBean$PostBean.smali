.class public Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;
.super Ljava/lang/Object;
.source "ForYouBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/ForYouBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$RemindStrList;,
        Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;
    }
.end annotation


# instance fields
.field private comment:Ljava/lang/String;

.field private commentNum:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private dContent:Ljava/lang/String;

.field private fabulous:Ljava/lang/String;

.field private fabulousNum:Ljava/lang/String;

.field private flagUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private ifShare:Ljava/lang/String;

.field private labelStr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private labelid:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private orgdynamics:Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

.field private pictureUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pictureUrlThumbnail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private portraitUrl:Ljava/lang/String;

.field private releaseTime:Ljava/lang/String;

.field private remind:Ljava/lang/String;

.field private remindStr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$RemindStrList;",
            ">;"
        }
    .end annotation
.end field

.field private shareDid:Ljava/lang/String;

.field private shareScope:Ljava/lang/String;

.field private shareTimes:Ljava/lang/String;

.field private sharestatus:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentNum()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->commentNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDContent()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->dContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulous()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->fabulous:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulousNum()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->fabulousNum:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagUrl()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->flagUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIfShare()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->ifShare:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelStr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->labelStr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLabelid()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->labelid:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

    return-object v0
.end method

.method public getPictureUrl()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->pictureUrl:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPictureUrlThumbnail()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseTime()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->releaseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRemind()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->remind:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindStr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$RemindStrList;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->remindStr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareDid()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->shareDid:Ljava/lang/String;

    return-object v0
.end method

.method public getShareScope()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->shareScope:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTimes()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->shareTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getSharestatus()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->sharestatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getdContent()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->dContent:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentNum(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->commentNum:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setDContent(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->dContent:Ljava/lang/String;

    return-void
.end method

.method public setFabulous(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->fabulous:Ljava/lang/String;

    return-void
.end method

.method public setFabulousNum(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->fabulousNum:Ljava/lang/String;

    return-void
.end method

.method public setFlagUrl(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->flagUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIfShare(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->ifShare:Ljava/lang/String;

    return-void
.end method

.method public setLabelStr(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->labelStr:Ljava/util/ArrayList;

    return-void
.end method

.method public setLabelid(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->labelid:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->location:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOrgdynamics(Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$OrgdynamicsList;

    return-void
.end method

.method public setPictureUrl(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->pictureUrl:Ljava/util/ArrayList;

    return-void
.end method

.method public setPictureUrlThumbnail(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setReleaseTime(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->releaseTime:Ljava/lang/String;

    return-void
.end method

.method public setRemind(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->remind:Ljava/lang/String;

    return-void
.end method

.method public setRemindStr(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean$RemindStrList;",
            ">;)V"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->remindStr:Ljava/util/ArrayList;

    return-void
.end method

.method public setShareDid(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->shareDid:Ljava/lang/String;

    return-void
.end method

.method public setShareScope(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->shareScope:Ljava/lang/String;

    return-void
.end method

.method public setShareTimes(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->shareTimes:Ljava/lang/String;

    return-void
.end method

.method public setSharestatus(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->sharestatus:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setdContent(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->dContent:Ljava/lang/String;

    return-void
.end method
