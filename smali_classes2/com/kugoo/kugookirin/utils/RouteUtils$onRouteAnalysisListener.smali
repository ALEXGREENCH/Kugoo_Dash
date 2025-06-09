.class public interface abstract Lcom/kugoo/kugookirin/utils/RouteUtils$onRouteAnalysisListener;
.super Ljava/lang/Object;
.source "RouteUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/utils/RouteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onRouteAnalysisListener"
.end annotation


# virtual methods
.method public abstract analysisRouteResult(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract mapSearchResult(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/MapSearchResultItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract nextStepNavi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract routeDisAndTime(II)V
.end method
