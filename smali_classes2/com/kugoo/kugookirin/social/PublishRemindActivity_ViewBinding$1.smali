.class Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PublishRemindActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/social/PublishRemindActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding$1;->this$0:Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
