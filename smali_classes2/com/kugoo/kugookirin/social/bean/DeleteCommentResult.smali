.class public Lcom/kugoo/kugookirin/social/bean/DeleteCommentResult;
.super Ljava/lang/Object;
.source "DeleteCommentResult.java"


# instance fields
.field private commentId:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DeleteCommentResult;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DeleteCommentResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/DeleteCommentResult;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DeleteCommentResult;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DeleteCommentResult;->result:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/DeleteCommentResult;->status:Ljava/lang/String;

    return-void
.end method
