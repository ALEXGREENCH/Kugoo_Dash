.class Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$7;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ThrottleStartingForceActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$7;->this$0:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$7;->val$target:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$7;->val$target:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
