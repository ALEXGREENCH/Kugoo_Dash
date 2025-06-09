.class Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CirclePlayVideoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding$1;->this$0:Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
