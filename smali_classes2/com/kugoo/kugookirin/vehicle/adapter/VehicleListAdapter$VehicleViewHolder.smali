.class public Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VehicleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VehicleViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

.field private vehicleDelBtn:Landroid/widget/ImageView;

.field private vehicleImg:Landroid/widget/ImageView;

.field private vehicleItemLayout:Landroid/widget/FrameLayout;

.field private vehicleName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Landroid/view/View;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    .line 229
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a05f7

    .line 230
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->vehicleImg:Landroid/widget/ImageView;

    const p1, 0x7f0a05f3

    .line 231
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->vehicleDelBtn:Landroid/widget/ImageView;

    const p1, 0x7f0a05f9

    .line 232
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->vehicleName:Landroid/widget/TextView;

    const p1, 0x7f0a05f8

    .line 233
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->vehicleItemLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->vehicleImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->vehicleName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->vehicleDelBtn:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$VehicleViewHolder;->vehicleItemLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method
