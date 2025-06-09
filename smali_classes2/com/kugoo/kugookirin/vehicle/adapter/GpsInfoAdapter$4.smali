.class Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$4;
.super Ljava/lang/Object;
.source "GpsInfoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->showDeleteRecord(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$myTime:Ljava/lang/String;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;Ljava/lang/String;ILandroid/app/Dialog;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$4;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$4;->val$myTime:Ljava/lang/String;

    iput p3, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$4;->val$pos:I

    iput-object p4, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 205
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$4;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->access$1300(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$4;->val$myTime:Ljava/lang/String;

    iget v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$4;->val$pos:I

    invoke-static {p1, v0, v1, v2}, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;->access$1400(Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/GpsInfoAdapter$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
