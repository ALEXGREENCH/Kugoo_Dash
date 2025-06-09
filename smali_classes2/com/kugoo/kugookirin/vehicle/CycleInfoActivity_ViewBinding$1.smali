.class Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CycleInfoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding$1;->this$0:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/CycleInfoActivity;->onViewClicked()V

    return-void
.end method
