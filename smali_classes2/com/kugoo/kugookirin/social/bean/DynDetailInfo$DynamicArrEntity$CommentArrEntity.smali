.class public Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;
.super Ljava/lang/Object;
.source "DynDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentArrEntity"
.end annotation


# instance fields
.field private cContent:Ljava/lang/String;

.field private commentId:Ljava/lang/String;

.field private commentTime:J

.field private id:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private toPortraitUrl:Ljava/lang/String;

.field private toUid:Ljava/lang/String;

.field private tonickName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCContent()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->cContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentTime()J
    .locals 2

    .line 474
    iget-wide v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->commentTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getToPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->toPortraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getToUid()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->toUid:Ljava/lang/String;

    return-object v0
.end method

.method public getTonickName()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->tonickName:Ljava/lang/String;

    return-object v0
.end method

.method public setCContent(Ljava/lang/String;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->cContent:Ljava/lang/String;

    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setCommentTime(J)V
    .locals 0

    .line 478
    iput-wide p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->commentTime:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setToPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->toPortraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setToUid(Ljava/lang/String;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->toUid:Ljava/lang/String;

    return-void
.end method

.method public setTonickName(Ljava/lang/String;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$CommentArrEntity;->tonickName:Ljava/lang/String;

    return-void
.end method
