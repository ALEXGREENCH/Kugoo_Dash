.class Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PublishLocActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/PublishLocActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/social/PublishLocActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;Lcom/kugoo/kugookirin/social/PublishLocActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding$1;->this$0:Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishLocActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/PublishLocActivity;->onClick()V

    return-void
.end method
