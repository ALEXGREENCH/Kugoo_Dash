.class public Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;
.super Ljava/lang/Object;
.source "NearBySearchBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewportList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$SouthwestList;,
        Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$NortheastList;
    }
.end annotation


# instance fields
.field private northeast:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$NortheastList;

.field private southwest:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$SouthwestList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNortheast()Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$NortheastList;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;->northeast:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$NortheastList;

    return-object v0
.end method

.method public getSouthwest()Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$SouthwestList;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;->southwest:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$SouthwestList;

    return-object v0
.end method

.method public setNortheast(Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$NortheastList;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;->northeast:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$NortheastList;

    return-void
.end method

.method public setSouthwest(Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$SouthwestList;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;->southwest:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$SouthwestList;

    return-void
.end method
