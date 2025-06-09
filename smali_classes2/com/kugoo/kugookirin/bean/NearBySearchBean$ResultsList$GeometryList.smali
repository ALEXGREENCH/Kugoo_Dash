.class public Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;
.super Ljava/lang/Object;
.source "NearBySearchBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeometryList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;,
        Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$LocationList;
    }
.end annotation


# instance fields
.field private location:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$LocationList;

.field private viewport:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$LocationList;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;->location:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$LocationList;

    return-object v0
.end method

.method public getViewport()Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;->viewport:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;

    return-object v0
.end method

.method public setLocation(Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$LocationList;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;->location:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$LocationList;

    return-void
.end method

.method public setViewport(Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;->viewport:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;

    return-void
.end method
