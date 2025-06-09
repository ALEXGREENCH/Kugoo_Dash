.class public Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;
.super Ljava/lang/Object;
.source "NearBySearchBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotosList"
.end annotation


# instance fields
.field private height:Ljava/lang/String;

.field private html_attributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photo_reference:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;->height:Ljava/lang/String;

    return-object v0
.end method

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

    .line 362
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;->html_attributions:Ljava/util/List;

    return-object v0
.end method

.method public getPhoto_reference()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;->photo_reference:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;->width:Ljava/lang/String;

    return-object v0
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;->height:Ljava/lang/String;

    return-void
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

    .line 366
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;->html_attributions:Ljava/util/List;

    return-void
.end method

.method public setPhoto_reference(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;->photo_reference:Ljava/lang/String;

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;->width:Ljava/lang/String;

    return-void
.end method
