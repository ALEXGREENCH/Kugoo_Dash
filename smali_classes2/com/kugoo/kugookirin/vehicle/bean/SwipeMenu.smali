.class public Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;
.super Ljava/lang/Object;
.source "SwipeMenu.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->mContext:Landroid/content/Context;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMenuItem(I)Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;

    return-object p1
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public removeMenuItem(Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenuItem;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/SwipeMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
