.class Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BrakeForceActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$4;->this$0:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$4;->val$target:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$4;->val$target:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
