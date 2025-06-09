.class public Lcom/kugoo/kugookirin/social/FriendListActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FriendListActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/FriendListActivity;

.field private view7f0a0102:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/FriendListActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/FriendListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/FriendListActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/FriendListActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/social/FriendListActivity;Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/FriendListActivity;

    const-string v0, "field \'circleBarImage\' and method \'onClick\'"

    const v1, 0x7f0a0102

    .line 32
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'circleBarImage\'"

    .line 33
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/FriendListActivity;->circleBarImage:Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity_ViewBinding;->view7f0a0102:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/kugoo/kugookirin/social/FriendListActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/FriendListActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/social/FriendListActivity_ViewBinding;Lcom/kugoo/kugookirin/social/FriendListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'confirmPublishBtn\'"

    .line 41
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0142

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/FriendListActivity;->confirmPublishBtn:Landroid/widget/TextView;

    const-string v0, "field \'circleBarTitle\'"

    .line 42
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0103

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/FriendListActivity;->circleBarTitle:Landroid/widget/TextView;

    const-string v0, "field \'no_follower_item\'"

    .line 43
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0400

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/FriendListActivity;->no_follower_item:Landroid/widget/TextView;

    const-string v0, "field \'friendRv\'"

    .line 44
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a027f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendRv:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/FriendListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/FriendListActivity;

    .line 54
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/FriendListActivity;->circleBarImage:Landroid/widget/ImageView;

    .line 55
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/FriendListActivity;->confirmPublishBtn:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/FriendListActivity;->circleBarTitle:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/FriendListActivity;->no_follower_item:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/FriendListActivity;->friendRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/FriendListActivity_ViewBinding;->view7f0a0102:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/FriendListActivity_ViewBinding;->view7f0a0102:Landroid/view/View;

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
