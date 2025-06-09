.class public Lcom/kugoo/kugookirin/bean/NearBySearchBean;
.super Ljava/lang/Object;
.source "NearBySearchBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;
    }
.end annotation


# instance fields
.field private html_attributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private next_page_token:Ljava/lang/String;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHtml_attributions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean;->html_attributions:Ljava/util/List;

    return-object v0
.end method

.method public getNext_page_token()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean;->next_page_token:Ljava/lang/String;

    return-object v0
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean;->results:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setHtml_attributions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean;->html_attributions:Ljava/util/List;

    return-void
.end method

.method public setNext_page_token(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean;->next_page_token:Ljava/lang/String;

    return-void
.end method

.method public setResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean;->results:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean;->status:Ljava/lang/String;

    return-void
.end method
