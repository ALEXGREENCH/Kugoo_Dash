.class Lcn/smssdk/gui/SearchView$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/SearchView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/SearchView;

.field final synthetic val$ivClear:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/SearchView;Landroid/widget/ImageView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/smssdk/gui/SearchView$1;->this$0:Lcn/smssdk/gui/SearchView;

    iput-object p2, p0, Lcn/smssdk/gui/SearchView$1;->val$ivClear:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 93
    iget-object p1, p0, Lcn/smssdk/gui/SearchView$1;->val$ivClear:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
