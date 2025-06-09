.class Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ForYouFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/ForYouFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/social/ForYouFragment;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;Lcom/kugoo/kugookirin/social/ForYouFragment;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding$2;->this$0:Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding$2;->val$target:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ForYouFragment_ViewBinding$2;->val$target:Lcom/kugoo/kugookirin/social/ForYouFragment;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/ForYouFragment;->onClick(Landroid/view/View;)V

    return-void
.end method
