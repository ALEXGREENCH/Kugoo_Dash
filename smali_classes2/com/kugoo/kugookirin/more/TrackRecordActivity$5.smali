.class Lcom/kugoo/kugookirin/more/TrackRecordActivity$5;
.super Ljava/lang/Object;
.source "TrackRecordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/more/TrackRecordActivity;->hideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$5;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$5;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    iget-object v0, v0, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
