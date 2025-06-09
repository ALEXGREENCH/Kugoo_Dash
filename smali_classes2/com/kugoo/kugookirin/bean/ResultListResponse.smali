.class public Lcom/kugoo/kugookirin/bean/ResultListResponse;
.super Lcom/kugoo/kugookirin/bean/BaseResponse;
.source "ResultListResponse.java"


# instance fields
.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/kugoo/kugookirin/bean/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/ResultListResponse;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setResult(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/ResultListResponse;->result:Ljava/util/ArrayList;

    return-void
.end method
