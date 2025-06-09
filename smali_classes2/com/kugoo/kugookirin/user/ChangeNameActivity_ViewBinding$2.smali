.class Lcom/kugoo/kugookirin/user/ChangeNameActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ChangeNameActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/ChangeNameActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/user/ChangeNameActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/ChangeNameActivity_ViewBinding;

.field final synthetic val$target:Lcom/kugoo/kugookirin/user/ChangeNameActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/ChangeNameActivity_ViewBinding;Lcom/kugoo/kugookirin/user/ChangeNameActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity_ViewBinding$2;->this$0:Lcom/kugoo/kugookirin/user/ChangeNameActivity_ViewBinding;

    iput-object p2, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity_ViewBinding$2;->val$target:Lcom/kugoo/kugookirin/user/ChangeNameActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/ChangeNameActivity_ViewBinding$2;->val$target:Lcom/kugoo/kugookirin/user/ChangeNameActivity;

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/user/ChangeNameActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
