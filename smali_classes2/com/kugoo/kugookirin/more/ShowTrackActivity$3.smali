.class Lcom/kugoo/kugookirin/more/ShowTrackActivity$3;
.super Ljava/lang/Object;
.source "ShowTrackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/ShowTrackActivity;->showShareBar(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/ShowTrackActivity;

.field final synthetic val$barDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/ShowTrackActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$3;->this$0:Lcom/kugoo/kugookirin/more/ShowTrackActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$3;->val$barDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 481
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/ShowTrackActivity$3;->val$barDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
