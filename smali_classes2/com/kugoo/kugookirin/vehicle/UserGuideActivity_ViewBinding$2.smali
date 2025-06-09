.class Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UserGuideActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding$2;->this$0:Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding$2;->val$target:Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity_ViewBinding$2;->val$target:Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/vehicle/UserGuideActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
