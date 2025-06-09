.class Lcom/kugoo/kugookirin/social/DiscoverFragment$7;
.super Ljava/lang/Object;
.source "DiscoverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DiscoverFragment;->loginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DiscoverFragment;Landroid/app/Dialog;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$7;->this$0:Lcom/kugoo/kugookirin/social/DiscoverFragment;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$7;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 373
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DiscoverFragment$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
