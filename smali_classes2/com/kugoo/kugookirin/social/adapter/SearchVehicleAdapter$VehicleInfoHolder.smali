.class public Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchVehicleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VehicleInfoHolder"
.end annotation


# instance fields
.field itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

.field itemUserName:Landroid/widget/TextView;

.field itemVehicleModel:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;Landroid/view/View;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;

    .line 70
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a02e9

    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/view/CircleImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;->itemAvatar:Lcom/kugoo/kugookirin/view/CircleImageView;

    const p1, 0x7f0a02f2

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;->itemUserName:Landroid/widget/TextView;

    const p1, 0x7f0a02f3

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;->itemVehicleModel:Landroid/widget/TextView;

    return-void
.end method
