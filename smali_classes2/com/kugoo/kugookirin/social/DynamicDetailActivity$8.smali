.class Lcom/kugoo/kugookirin/social/DynamicDetailActivity$8;
.super Ljava/lang/Object;
.source "DynamicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/DynamicDetailActivity;->showTipOffsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/DynamicDetailActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$8;->this$0:Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$8;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 335
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/DynamicDetailActivity$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
