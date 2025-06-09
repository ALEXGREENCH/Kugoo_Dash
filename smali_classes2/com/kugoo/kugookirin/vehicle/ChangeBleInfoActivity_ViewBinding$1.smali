.class Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ChangeBleInfoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding$1;->this$0:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeBleInfoActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
