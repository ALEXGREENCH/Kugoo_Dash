.class public Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;
.super Ljava/lang/Object;
.source "SearchPostInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/SearchPostInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean$RemindStrList;,
        Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean$OrgdynamicsList;
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

.field private orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

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
            "Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$RemindStrList;",
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

    .line 406
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentNum()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->commentNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulous()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->fabulous:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulousNum()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->fabulousNum:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagUrl()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->flagUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIfShare()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->ifShare:Ljava/lang/String;

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

    .line 430
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->labelStr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLabelid()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->labelid:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

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

    .line 310
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->pictureUrl:Ljava/util/ArrayList;

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

    .line 390
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseTime()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->releaseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getShareScope()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->shareScope:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTimes()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->shareTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getSharestatus()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->sharestatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getdContent()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->dContent:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentNum(Ljava/lang/String;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->commentNum:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setFabulous(Ljava/lang/String;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->fabulous:Ljava/lang/String;

    return-void
.end method

.method public setFabulousNum(Ljava/lang/String;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->fabulousNum:Ljava/lang/String;

    return-void
.end method

.method public setFlagUrl(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->flagUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIfShare(Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->ifShare:Ljava/lang/String;

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

    .line 434
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->labelStr:Ljava/util/ArrayList;

    return-void
.end method

.method public setLabelid(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->labelid:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->location:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOrgdynamics(Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

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

    .line 314
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->pictureUrl:Ljava/util/ArrayList;

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

    .line 394
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setReleaseTime(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->releaseTime:Ljava/lang/String;

    return-void
.end method

.method public setShareScope(Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->shareScope:Ljava/lang/String;

    return-void
.end method

.method public setShareTimes(Ljava/lang/String;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->shareTimes:Ljava/lang/String;

    return-void
.end method

.method public setSharestatus(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->sharestatus:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setdContent(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->dContent:Ljava/lang/String;

    return-void
.end method
