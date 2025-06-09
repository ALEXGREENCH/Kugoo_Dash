.class public Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;
.super Ljava/lang/Object;
.source "ShowUserAllDynamics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicArrEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity$RemindStrList;,
        Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity$OrgdynamicsList;
    }
.end annotation


# instance fields
.field private comment:Ljava/lang/String;

.field private commentNum:Ljava/lang/String;

.field private dContent:Ljava/lang/String;

.field private fabulous:Ljava/lang/String;

.field private fabulousNum:Ljava/lang/String;

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

.field private orgdynamics:Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity$OrgdynamicsList;

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
            "Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity$RemindStrList;",
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
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentNum()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->commentNum:Ljava/lang/String;

    return-object v0
.end method

.method public getDContent()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->dContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulous()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->fabulous:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulousNum()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->fabulousNum:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIfShare()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->ifShare:Ljava/lang/String;

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

    .line 247
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->labelStr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLabelid()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->labelid:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity$OrgdynamicsList;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity$OrgdynamicsList;

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

    .line 223
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->pictureUrl:Ljava/util/ArrayList;

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

    .line 231
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseTime()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->releaseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRemind()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->remind:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindStr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity$RemindStrList;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->remindStr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareDid()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->shareDid:Ljava/lang/String;

    return-object v0
.end method

.method public getShareScope()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->shareScope:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTimes()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->shareTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getSharestatus()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->sharestatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentNum(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->commentNum:Ljava/lang/String;

    return-void
.end method

.method public setDContent(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->dContent:Ljava/lang/String;

    return-void
.end method

.method public setFabulous(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->fabulous:Ljava/lang/String;

    return-void
.end method

.method public setFabulousNum(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->fabulousNum:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setIfShare(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->ifShare:Ljava/lang/String;

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

    .line 251
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->labelStr:Ljava/util/ArrayList;

    return-void
.end method

.method public setLabelid(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->labelid:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->location:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOrgdynamics(Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity$OrgdynamicsList;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity$OrgdynamicsList;

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

    .line 227
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->pictureUrl:Ljava/util/ArrayList;

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

    .line 235
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setReleaseTime(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->releaseTime:Ljava/lang/String;

    return-void
.end method

.method public setRemind(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->remind:Ljava/lang/String;

    return-void
.end method

.method public setRemindStr(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity$RemindStrList;",
            ">;)V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->remindStr:Ljava/util/ArrayList;

    return-void
.end method

.method public setShareDid(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->shareDid:Ljava/lang/String;

    return-void
.end method

.method public setShareScope(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->shareScope:Ljava/lang/String;

    return-void
.end method

.method public setShareTimes(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->shareTimes:Ljava/lang/String;

    return-void
.end method

.method public setSharestatus(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->sharestatus:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/ShowUserAllDynamics$DynamicArrEntity;->videoUrl:Ljava/lang/String;

    return-void
.end method
