.class Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$14;
.super Ljava/lang/Object;
.source "SearchPostAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->showDeleteDialog(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Landroid/app/Dialog;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$14;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$14;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 494
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$14;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
