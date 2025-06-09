.class Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SpeedLimitActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$3;->this$0:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$3;->val$target:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity_ViewBinding$3;->val$target:Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/vehicle/SpeedLimitActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
