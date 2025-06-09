.class Lcom/kugoo/kugookirin/view/PickerView$1;
.super Landroid/os/Handler;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/view/PickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/view/PickerView;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/view/PickerView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView$1;->this$0:Lcom/kugoo/kugookirin/view/PickerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 85
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView$1;->this$0:Lcom/kugoo/kugookirin/view/PickerView;

    invoke-static {p1}, Lcom/kugoo/kugookirin/view/PickerView;->access$000(Lcom/kugoo/kugookirin/view/PickerView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView$1;->this$0:Lcom/kugoo/kugookirin/view/PickerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/view/PickerView;->access$002(Lcom/kugoo/kugookirin/view/PickerView;F)F

    .line 87
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView$1;->this$0:Lcom/kugoo/kugookirin/view/PickerView;

    invoke-static {p1}, Lcom/kugoo/kugookirin/view/PickerView;->access$100(Lcom/kugoo/kugookirin/view/PickerView;)Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView$1;->this$0:Lcom/kugoo/kugookirin/view/PickerView;

    invoke-static {p1}, Lcom/kugoo/kugookirin/view/PickerView;->access$100(Lcom/kugoo/kugookirin/view/PickerView;)Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;->cancel()Z

    .line 89
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView$1;->this$0:Lcom/kugoo/kugookirin/view/PickerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/view/PickerView;->access$102(Lcom/kugoo/kugookirin/view/PickerView;Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;)Lcom/kugoo/kugookirin/view/PickerView$MyTimerTask;

    .line 90
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView$1;->this$0:Lcom/kugoo/kugookirin/view/PickerView;

    invoke-static {p1}, Lcom/kugoo/kugookirin/view/PickerView;->access$200(Lcom/kugoo/kugookirin/view/PickerView;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView$1;->this$0:Lcom/kugoo/kugookirin/view/PickerView;

    invoke-static {p1}, Lcom/kugoo/kugookirin/view/PickerView;->access$000(Lcom/kugoo/kugookirin/view/PickerView;)F

    move-result v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/view/PickerView$1;->this$0:Lcom/kugoo/kugookirin/view/PickerView;

    invoke-static {v2}, Lcom/kugoo/kugookirin/view/PickerView;->access$000(Lcom/kugoo/kugookirin/view/PickerView;)F

    move-result v2

    iget-object v3, p0, Lcom/kugoo/kugookirin/view/PickerView$1;->this$0:Lcom/kugoo/kugookirin/view/PickerView;

    invoke-static {v3}, Lcom/kugoo/kugookirin/view/PickerView;->access$000(Lcom/kugoo/kugookirin/view/PickerView;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Lcom/kugoo/kugookirin/view/PickerView;->access$002(Lcom/kugoo/kugookirin/view/PickerView;F)F

    .line 95
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/view/PickerView$1;->this$0:Lcom/kugoo/kugookirin/view/PickerView;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/view/PickerView;->invalidate()V

    return-void
.end method
