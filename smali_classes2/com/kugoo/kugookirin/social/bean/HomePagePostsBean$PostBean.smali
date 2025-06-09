.class public Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;
.super Ljava/lang/Object;
.source "HomePagePostsBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$RemindStrList;,
        Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;
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

.field private orgdynamics:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;

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
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$RemindStrList;",
            ">;"
        }
    .end annotation
.end field

.field private shareDid:Ljava/lang/String;

.field private shareTimes:Ljava/lang/String;

.field private sharestatus:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentNum()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->commentNum:Ljava/lang/String;

    return-object v0
.end method

.method public getDContent()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->dContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulous()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->fabulous:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulousNum()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->fabulousNum:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIfShare()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->ifShare:Ljava/lang/String;

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

    .line 290
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->labelStr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLabelid()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->labelid:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;

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

    .line 266
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->pictureUrl:Ljava/util/ArrayList;

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

    .line 274
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseTime()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->releaseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRemind()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->remind:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindStr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$RemindStrList;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->remindStr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareDid()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->shareDid:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTimes()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->shareTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getSharestatus()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->sharestatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getdContent()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->dContent:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentNum(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->commentNum:Ljava/lang/String;

    return-void
.end method

.method public setDContent(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->dContent:Ljava/lang/String;

    return-void
.end method

.method public setFabulous(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->fabulous:Ljava/lang/String;

    return-void
.end method

.method public setFabulousNum(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->fabulousNum:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIfShare(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->ifShare:Ljava/lang/String;

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

    .line 294
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->labelStr:Ljava/util/ArrayList;

    return-void
.end method

.method public setLabelid(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->labelid:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->location:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOrgdynamics(Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$OrgdynamicsList;

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

    .line 270
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->pictureUrl:Ljava/util/ArrayList;

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

    .line 278
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setReleaseTime(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->releaseTime:Ljava/lang/String;

    return-void
.end method

.method public setRemind(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->remind:Ljava/lang/String;

    return-void
.end method

.method public setRemindStr(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean$RemindStrList;",
            ">;)V"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->remindStr:Ljava/util/ArrayList;

    return-void
.end method

.method public setShareDid(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->shareDid:Ljava/lang/String;

    return-void
.end method

.method public setShareTimes(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->shareTimes:Ljava/lang/String;

    return-void
.end method

.method public setSharestatus(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->sharestatus:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setdContent(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->dContent:Ljava/lang/String;

    return-void
.end method
