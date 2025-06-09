.class public Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$OpeningHoursList;
.super Ljava/lang/Object;
.source "NearBySearchBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpeningHoursList"
.end annotation


# instance fields
.field private open_now:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isOpen_now()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$OpeningHoursList;->open_now:Z

    return v0
.end method

.method public setOpen_now(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$OpeningHoursList;->open_now:Z

    return-void
.end method
