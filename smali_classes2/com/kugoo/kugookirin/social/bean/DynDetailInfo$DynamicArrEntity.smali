.class public Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;
.super Ljava/lang/Object;
.source "DynDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/DynDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicArrEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$RemindStrList;,
        Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;,
        Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;
    }
.end annotation


# instance fields
.field private comment:Ljava/lang/String;

.field private commentArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;",
            ">;"
        }
    .end annotation
.end field

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

.field private orgdynamics:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;

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
            "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$RemindStrList;",
            ">;"
        }
    .end annotation
.end field

.field private shareDid:Ljava/lang/String;

.field private shareScope:Ljava/lang/String;

.field private shareTimes:Ljava/lang/String;

.field private sharestatus:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->commentArr:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->commentArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCommentNum()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->commentNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDContent()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->dContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulous()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->fabulous:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulousNum()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->fabulousNum:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagUrl()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->flagUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIfShare()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->ifShare:Ljava/lang/String;

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

    .line 283
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->labelStr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLabelid()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->labelid:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;

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

    .line 251
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->pictureUrl:Ljava/util/ArrayList;

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

    .line 259
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseTime()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->releaseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRemind()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->remind:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindStr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$RemindStrList;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->remindStr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareDid()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->shareDid:Ljava/lang/String;

    return-object v0
.end method

.method public getShareScope()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->shareScope:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTimes()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->shareTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getSharestatus()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->sharestatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getdContent()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->dContent:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentArr(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;",
            ">;)V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->commentArr:Ljava/util/ArrayList;

    return-void
.end method

.method public setCommentNum(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->commentNum:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->country:Ljava/lang/String;

    return-void
.end method

.method public setDContent(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->dContent:Ljava/lang/String;

    return-void
.end method

.method public setFabulous(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->fabulous:Ljava/lang/String;

    return-void
.end method

.method public setFabulousNum(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->fabulousNum:Ljava/lang/String;

    return-void
.end method

.method public setFlagUrl(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->flagUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setIfShare(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->ifShare:Ljava/lang/String;

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

    .line 287
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->labelStr:Ljava/util/ArrayList;

    return-void
.end method

.method public setLabelid(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->labelid:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->location:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOrgdynamics(Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;

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

    .line 255
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->pictureUrl:Ljava/util/ArrayList;

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

    .line 263
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setReleaseTime(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->releaseTime:Ljava/lang/String;

    return-void
.end method

.method public setRemind(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->remind:Ljava/lang/String;

    return-void
.end method

.method public setRemindStr(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$RemindStrList;",
            ">;)V"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->remindStr:Ljava/util/ArrayList;

    return-void
.end method

.method public setShareDid(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->shareDid:Ljava/lang/String;

    return-void
.end method

.method public setShareScope(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->shareScope:Ljava/lang/String;

    return-void
.end method

.method public setShareTimes(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->shareTimes:Ljava/lang/String;

    return-void
.end method

.method public setSharestatus(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->sharestatus:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setdContent(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->dContent:Ljava/lang/String;

    return-void
.end method
