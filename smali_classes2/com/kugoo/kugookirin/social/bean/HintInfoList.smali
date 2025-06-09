.class public Lcom/kugoo/kugookirin/social/bean/HintInfoList;
.super Ljava/lang/Object;
.source "HintInfoList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;
    }
.end annotation


# instance fields
.field private isLastData:Z

.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HintInfoList;->messageList:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HintInfoList;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/bean/HintInfoList;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isIsLastData()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/social/bean/HintInfoList;->isLastData:Z

    return v0
.end method

.method public setIsLastData(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/bean/HintInfoList;->isLastData:Z

    return-void
.end method

.method public setMessageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/social/bean/HintInfoList$MessageList;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HintInfoList;->messageList:Ljava/util/List;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HintInfoList;->result:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/bean/HintInfoList;->status:Ljava/lang/String;

    return-void
.end method
