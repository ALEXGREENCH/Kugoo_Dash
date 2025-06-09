.class public Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ChangeUnitActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

.field private view7f0a00da:Landroid/view/View;

.field private view7f0a00db:Landroid/view/View;

.field private view7f0a0323:Landroid/view/View;

.field private view7f0a0324:Landroid/view/View;

.field private view7f0a0569:Landroid/view/View;

.field private view7f0a056a:Landroid/view/View;

.field private view7f0a0571:Landroid/view/View;

.field private view7f0a0572:Landroid/view/View;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V
    .locals 1

    .line 41
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;Landroid/view/View;)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    const-string v0, "field \'cbKmh\' and method \'onClick\'"

    const v1, 0x7f0a00da

    .line 49
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'cbKmh\'"

    .line 50
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->cbKmh:Landroid/widget/CheckBox;

    .line 51
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a00da:Landroid/view/View;

    .line 52
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'lineKmh\' and method \'onClick\'"

    const v1, 0x7f0a0323

    .line 58
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'lineKmh\'"

    .line 59
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->lineKmh:Landroid/widget/LinearLayout;

    .line 60
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0323:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'cbMph\' and method \'onClick\'"

    const v1, 0x7f0a00db

    .line 67
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'cbMph\'"

    .line 68
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->cbMph:Landroid/widget/CheckBox;

    .line 69
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a00db:Landroid/view/View;

    .line 70
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'lineMph\' and method \'onClick\'"

    const v1, 0x7f0a0324

    .line 76
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'lineMph\'"

    .line 77
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->lineMph:Landroid/widget/LinearLayout;

    .line 78
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0324:Landroid/view/View;

    .line 79
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackBtn\' and method \'onClick\'"

    const v1, 0x7f0a05a2

    .line 85
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'topBackBtn\'"

    .line 86
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 87
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 88
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$5;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackTitle\'"

    .line 94
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->topBackTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0569

    const-string v1, "method \'onClick\'"

    .line 95
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0569:Landroid/view/View;

    .line 97
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$6;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0571

    .line 103
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0571:Landroid/view/View;

    .line 105
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$7;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$7;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a056a

    .line 111
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a056a:Landroid/view/View;

    .line 113
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$8;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$8;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0572

    .line 119
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 120
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0572:Landroid/view/View;

    .line 121
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding$9;-><init>(Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;

    .line 136
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->cbKmh:Landroid/widget/CheckBox;

    .line 137
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->lineKmh:Landroid/widget/LinearLayout;

    .line 138
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->cbMph:Landroid/widget/CheckBox;

    .line 139
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->lineMph:Landroid/widget/LinearLayout;

    .line 140
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->topBackBtn:Landroid/widget/ImageView;

    .line 141
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity;->topBackTitle:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a00da:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a00da:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0323:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0323:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a00db:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a00db:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0324:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0324:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0569:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0569:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0571:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0571:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a056a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a056a:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0572:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ChangeUnitActivity_ViewBinding;->view7f0a0572:Landroid/view/View;

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
