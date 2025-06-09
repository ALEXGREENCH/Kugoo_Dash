.class public Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PublishRemindActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

.field private view7f0a02d3:Landroid/view/View;

.field private view7f0a04c8:Landroid/view/View;

.field private view7f0a05a6:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity;Landroid/view/View;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    const-string v0, "field \'imgTopBack\' and method \'onClick\'"

    const v1, 0x7f0a02d3

    .line 39
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'imgTopBack\'"

    .line 40
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 42
    new-instance v1, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'txtTitle\'"

    .line 48
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->txtTitle:Landroid/widget/TextView;

    const-string v0, "field \'top_select_tv\'"

    .line 49
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->top_select_tv:Landroid/widget/TextView;

    const-string v0, "field \'top_tv_ok\' and method \'onClick\'"

    const v1, 0x7f0a05a6

    .line 50
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'top_tv_ok\'"

    .line 51
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->top_tv_ok:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->view7f0a05a6:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'remindLv\'"

    .line 59
    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f0a048e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindLv:Landroid/widget/ListView;

    const-string v0, "field \'searchLv\'"

    .line 60
    const-class v1, Landroid/widget/ListView;

    const v2, 0x7f0a04cc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchLv:Landroid/widget/ListView;

    const-string v0, "field \'loadLinear\'"

    .line 61
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0341

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->loadLinear:Landroid/widget/LinearLayout;

    const-string v0, "field \'avatarRv\'"

    .line 62
    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a0081

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->avatarRv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "field \'search_img\' and method \'onClick\'"

    const v1, 0x7f0a04c8

    .line 63
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'search_img\'"

    .line 64
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->search_img:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->view7f0a04c8:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;Lcom/kugoo/kugookirin/social/PublishRemindActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'remindSearchEt\'"

    .line 72
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a0490

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindSearchEt:Landroid/widget/EditText;

    const-string v0, "field \'remindSearchLinear\'"

    .line 73
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0491

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindSearchLinear:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    .line 83
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 84
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->txtTitle:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->top_select_tv:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->top_tv_ok:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindLv:Landroid/widget/ListView;

    .line 88
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->searchLv:Landroid/widget/ListView;

    .line 89
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->loadLinear:Landroid/widget/LinearLayout;

    .line 90
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->avatarRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->search_img:Landroid/widget/ImageView;

    .line 92
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindSearchEt:Landroid/widget/EditText;

    .line 93
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;->remindSearchLinear:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->view7f0a05a6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->view7f0a05a6:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->view7f0a04c8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishRemindActivity_ViewBinding;->view7f0a04c8:Landroid/view/View;

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
