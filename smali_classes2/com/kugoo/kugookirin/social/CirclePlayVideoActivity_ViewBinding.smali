.class public Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CirclePlayVideoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;

.field private view7f0a02d2:Landroid/view/View;

.field private view7f0a02d3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;

    const-string v0, "field \'imgTopBack\' and method \'onClick\'"

    const v1, 0x7f0a02d3

    .line 34
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'imgTopBack\'"

    .line 35
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'txtTitle\'"

    .line 43
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05e8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->txtTitle:Landroid/widget/TextView;

    const-string v0, "field \'tvRight\'"

    .line 44
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05df

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->tvRight:Landroid/widget/TextView;

    const-string v0, "field \'imgRight\' and method \'onClick\'"

    const v1, 0x7f0a02d2

    .line 45
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'imgRight\'"

    .line 46
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->imgRight:Landroid/widget/ImageView;

    .line 47
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;->view7f0a02d2:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'videoPlayer\'"

    .line 54
    const-class v1, Lcom/google/android/exoplayer2/ui/PlayerView;

    const v2, 0x7f0a0612

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object p2, p1, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->videoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;

    .line 64
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->imgTopBack:Landroid/widget/ImageView;

    .line 65
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->txtTitle:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->tvRight:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->imgRight:Landroid/widget/ImageView;

    .line 68
    iput-object v1, v0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;->videoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 70
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;->view7f0a02d3:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;->view7f0a02d2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object v1, p0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity_ViewBinding;->view7f0a02d2:Landroid/view/View;

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
