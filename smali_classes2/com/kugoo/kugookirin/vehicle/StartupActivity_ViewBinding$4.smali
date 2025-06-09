.class Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "StartupActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/vehicle/StartupActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/StartupActivity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$4;->this$0:Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$4;->val$target:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/StartupActivity_ViewBinding$4;->val$target:Lcom/kugoo/kugookirin/vehicle/StartupActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/vehicle/StartupActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
