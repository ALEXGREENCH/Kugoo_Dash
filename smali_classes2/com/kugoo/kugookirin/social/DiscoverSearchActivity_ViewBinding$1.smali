.class Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DiscoverSearchActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding$1;->this$0:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity_ViewBinding$1;->val$target:Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/DiscoverSearchActivity;->onClick()V

    return-void
.end method
