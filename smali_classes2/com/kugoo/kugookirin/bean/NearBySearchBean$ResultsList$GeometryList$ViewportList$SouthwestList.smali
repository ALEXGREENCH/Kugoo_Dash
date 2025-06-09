.class public Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$SouthwestList;
.super Ljava/lang/Object;
.source "NearBySearchBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SouthwestList"
.end annotation


# instance fields
.field private lat:Ljava/lang/String;

.field private lng:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$SouthwestList;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$SouthwestList;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$SouthwestList;->lat:Ljava/lang/String;

    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList$ViewportList$SouthwestList;->lng:Ljava/lang/String;

    return-void
.end method
