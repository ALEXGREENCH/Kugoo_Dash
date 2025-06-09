.class Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BrightnessActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding$1;->this$0:Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/vehicle/BrightnessActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
