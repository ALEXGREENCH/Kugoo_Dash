.class Lcom/kugoo/kugookirin/vehicle/VehicleFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VehicleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/VehicleFragment;->setFadeInAnimator(Landroid/view/View;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/VehicleFragment;Landroid/view/View;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$2;->this$0:Lcom/kugoo/kugookirin/vehicle/VehicleFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 628
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 629
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/VehicleFragment$2;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
