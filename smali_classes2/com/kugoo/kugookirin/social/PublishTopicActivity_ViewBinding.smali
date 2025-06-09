.class public Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PublishTopicActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

.field private view7f0a02d3:Landroid/view/View;

.field private view7f0a03ee:Landroid/view/View;

.field private view7f0a05df:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity;Landroid/view/View;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    const-string v0, "field \'chipGroupTop\'"

    .line 37
    const-class v1, Lcom/google/android/material/chip/ChipGroup;

    const v2, 0x7f0a00fe

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupTop:Lcom/google/android/material/chip/ChipGroup;

    const-string v0, "field \'imgTopBack\' and method \'onClick\'"

    const v1, 0x7f0a02d3

    .line 38
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'imgTopBack\'"

    .line 39
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 40
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;Lcom/kugoo/kugookirin/social/PublishTopicActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'txtTitle\'"

    .line 47
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->txtTitle:Landroid/widget/TextView;

    const-string v0, "field \'tvRight\' and method \'onClick\'"

    const v1, 0x7f0a05df

    .line 48
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvRight\'"

    .line 49
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->tvRight:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;Lcom/kugoo/kugookirin/social/PublishTopicActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'imgRight\'"

    .line 57
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a02d2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->imgRight:Landroid/widget/ImageView;

    const-string v0, "field \'chipGroupBottom\'"

    .line 58
    const-class v1, Lcom/google/android/material/chip/ChipGroup;

    const v2, 0x7f0a00fd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupBottom:Lcom/google/android/material/chip/ChipGroup;

    const-string v0, "field \'newTopic\' and method \'onClick\'"

    const v1, 0x7f0a03ee

    .line 59
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'newTopic\'"

    .line 60
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->newTopic:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->view7f0a03ee:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;Lcom/kugoo/kugookirin/social/PublishTopicActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topicEt\'"

    .line 68
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f0a05a7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->topicEt:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    .line 78
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupTop:Lcom/google/android/material/chip/ChipGroup;

    .line 79
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 80
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->txtTitle:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->tvRight:Landroid/widget/TextView;

    .line 82
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->imgRight:Landroid/widget/ImageView;

    .line 83
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->chipGroupBottom:Lcom/google/android/material/chip/ChipGroup;

    .line 84
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->newTopic:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;->topicEt:Landroid/widget/EditText;

    .line 87
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->view7f0a05df:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->view7f0a03ee:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishTopicActivity_ViewBinding;->view7f0a03ee:Landroid/view/View;

    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
