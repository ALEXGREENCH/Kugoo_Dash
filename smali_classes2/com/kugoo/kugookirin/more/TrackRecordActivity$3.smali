.class Lcom/kugoo/kugookirin/more/TrackRecordActivity$3;
.super Ljava/lang/Object;
.source "TrackRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/TrackRecordActivity;->showSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;Landroid/app/Dialog;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$3;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    iput-object p2, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "dialog_warn02"

    const-string v0, "more_delete"

    .line 212
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
