.class public Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BrakeForceActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

.field private view7f0a0260:Landroid/view/View;

.field private view7f0a0261:Landroid/view/View;

.field private view7f0a0262:Landroid/view/View;

.field private view7f0a0263:Landroid/view/View;

.field private view7f0a0264:Landroid/view/View;

.field private view7f0a0265:Landroid/view/View;

.field private view7f0a0266:Landroid/view/View;

.field private view7f0a0267:Landroid/view/View;

.field private view7f0a0268:Landroid/view/View;

.field private view7f0a0269:Landroid/view/View;

.field private view7f0a026a:Landroid/view/View;

.field private view7f0a026b:Landroid/view/View;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;Landroid/view/View;)V
    .locals 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    const-string v0, "field \'force0Cb\' and method \'onClick\'"

    const v1, 0x7f0a0261

    .line 56
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force0Cb\'"

    .line 57
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force0Cb:Landroid/widget/CheckBox;

    .line 58
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0261:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force1Cb\' and method \'onClick\'"

    const v1, 0x7f0a0263

    .line 65
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force1Cb\'"

    .line 66
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force1Cb:Landroid/widget/CheckBox;

    .line 67
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0263:Landroid/view/View;

    .line 68
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force2Cb\' and method \'onClick\'"

    const v1, 0x7f0a0265

    .line 74
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force2Cb\'"

    .line 75
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force2Cb:Landroid/widget/CheckBox;

    .line 76
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0265:Landroid/view/View;

    .line 77
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force3Cb\' and method \'onClick\'"

    const v1, 0x7f0a0267

    .line 83
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force3Cb\'"

    .line 84
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force3Cb:Landroid/widget/CheckBox;

    .line 85
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0267:Landroid/view/View;

    .line 86
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force4Cb\' and method \'onClick\'"

    const v1, 0x7f0a0269

    .line 92
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force4Cb\'"

    .line 93
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force4Cb:Landroid/widget/CheckBox;

    .line 94
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0269:Landroid/view/View;

    .line 95
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$5;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force5Cb\' and method \'onClick\'"

    const v1, 0x7f0a026b

    .line 101
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force5Cb\'"

    .line 102
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force5Cb:Landroid/widget/CheckBox;

    .line 103
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a026b:Landroid/view/View;

    .line 104
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$6;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force0\' and method \'onClick\'"

    const v1, 0x7f0a0260

    .line 110
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force0\'"

    .line 111
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force0:Landroid/widget/LinearLayout;

    .line 112
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0260:Landroid/view/View;

    .line 113
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$7;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackTitle\'"

    .line 119
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->topBackTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0262

    const-string v1, "method \'onClick\'"

    .line 120
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0262:Landroid/view/View;

    .line 122
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$8;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$8;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0264

    .line 128
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0264:Landroid/view/View;

    .line 130
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$9;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$9;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0266

    .line 136
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0266:Landroid/view/View;

    .line 138
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$10;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$10;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0268

    .line 144
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 145
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0268:Landroid/view/View;

    .line 146
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$11;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$11;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a026a

    .line 152
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a026a:Landroid/view/View;

    .line 154
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$12;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$12;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05a2

    .line 160
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 161
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 162
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$13;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding$13;-><init>(Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 175
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;

    .line 177
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force0Cb:Landroid/widget/CheckBox;

    .line 178
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force1Cb:Landroid/widget/CheckBox;

    .line 179
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force2Cb:Landroid/widget/CheckBox;

    .line 180
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force3Cb:Landroid/widget/CheckBox;

    .line 181
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force4Cb:Landroid/widget/CheckBox;

    .line 182
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force5Cb:Landroid/widget/CheckBox;

    .line 183
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->force0:Landroid/widget/LinearLayout;

    .line 184
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity;->topBackTitle:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0261:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0261:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0263:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0263:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0265:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0265:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0267:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0267:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0269:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0269:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a026b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a026b:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0260:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0260:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0262:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0262:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0264:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0264:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0266:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0266:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0268:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a0268:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a026a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a026a:Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BrakeForceActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
