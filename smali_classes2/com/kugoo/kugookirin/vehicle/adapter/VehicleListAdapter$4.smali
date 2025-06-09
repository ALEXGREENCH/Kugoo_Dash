.class Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$4;
.super Ljava/lang/Object;
.source "VehicleListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;->delTipDialog(Lcom/kugoo/kugookirin/bean/HomepageInfoData$ResultList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;Landroid/app/Dialog;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$4;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/VehicleListAdapter$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
