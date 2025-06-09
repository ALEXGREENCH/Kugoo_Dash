.class Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DynamicDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DynamicDetailActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$4;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$4;->val$target:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity_ViewBinding$4;->val$target:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
