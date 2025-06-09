.class Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BeamLightsActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$3;->this$0:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$3;->val$target:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$3;->val$target:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
