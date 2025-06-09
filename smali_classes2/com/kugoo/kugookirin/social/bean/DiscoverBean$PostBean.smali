.class public Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;
.super Ljava/lang/Object;
.source "DiscoverBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/DiscoverBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$RemindStrList;,
        Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;
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

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentNum()Ljava/lang/String;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->commentNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulous()Ljava/lang/String;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->fabulous:Ljava/lang/String;

    return-object v0
.end method

.method public getFabulousNum()Ljava/lang/String;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->fabulousNum:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagUrl()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->flagUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIfShare()Ljava/lang/String;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->ifShare:Ljava/lang/String;

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

    .line 594
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->labelStr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLabelid()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->labelid:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgdynamics()Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

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

    .line 474
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->pictureUrl:Ljava/util/ArrayList;

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

    .line 554
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseTime()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->releaseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getShareScope()Ljava/lang/String;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->shareScope:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTimes()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->shareTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getSharestatus()Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->sharestatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getdContent()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->dContent:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentNum(Ljava/lang/String;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->commentNum:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setFabulous(Ljava/lang/String;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->fabulous:Ljava/lang/String;

    return-void
.end method

.method public setFabulousNum(Ljava/lang/String;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->fabulousNum:Ljava/lang/String;

    return-void
.end method

.method public setFlagUrl(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->flagUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setIfShare(Ljava/lang/String;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->ifShare:Ljava/lang/String;

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

    .line 598
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->labelStr:Ljava/util/ArrayList;

    return-void
.end method

.method public setLabelid(Ljava/lang/String;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->labelid:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->location:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOrgdynamics(Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->orgdynamics:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean$OrgdynamicsList;

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

    .line 478
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->pictureUrl:Ljava/util/ArrayList;

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

    .line 558
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->pictureUrlThumbnail:Ljava/util/ArrayList;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setReleaseTime(Ljava/lang/String;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->releaseTime:Ljava/lang/String;

    return-void
.end method

.method public setShareScope(Ljava/lang/String;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->shareScope:Ljava/lang/String;

    return-void
.end method

.method public setShareTimes(Ljava/lang/String;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->shareTimes:Ljava/lang/String;

    return-void
.end method

.method public setSharestatus(Ljava/lang/String;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->sharestatus:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setdContent(Ljava/lang/String;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->dContent:Ljava/lang/String;

    return-void
.end method
