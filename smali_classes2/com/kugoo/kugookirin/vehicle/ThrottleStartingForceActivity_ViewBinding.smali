.class public Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ThrottleStartingForceActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

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
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;Landroid/view/View;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    const-string v0, "field \'force0Cb\' and method \'onClick\'"

    const v1, 0x7f0a0261

    .line 57
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force0Cb\'"

    .line 58
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force0Cb:Landroid/widget/CheckBox;

    .line 59
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0261:Landroid/view/View;

    .line 60
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force1Cb\' and method \'onClick\'"

    const v1, 0x7f0a0263

    .line 66
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force1Cb\'"

    .line 67
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force1Cb:Landroid/widget/CheckBox;

    .line 68
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0263:Landroid/view/View;

    .line 69
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force2Cb\' and method \'onClick\'"

    const v1, 0x7f0a0265

    .line 75
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force2Cb\'"

    .line 76
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force2Cb:Landroid/widget/CheckBox;

    .line 77
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0265:Landroid/view/View;

    .line 78
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force3Cb\' and method \'onClick\'"

    const v1, 0x7f0a0267

    .line 84
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force3Cb\'"

    .line 85
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force3Cb:Landroid/widget/CheckBox;

    .line 86
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0267:Landroid/view/View;

    .line 87
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force4Cb\' and method \'onClick\'"

    const v1, 0x7f0a0269

    .line 93
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force4Cb\'"

    .line 94
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force4Cb:Landroid/widget/CheckBox;

    .line 95
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0269:Landroid/view/View;

    .line 96
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$5;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force5Cb\' and method \'onClick\'"

    const v1, 0x7f0a026b

    .line 102
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force5Cb\'"

    .line 103
    const-class v3, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force5Cb:Landroid/widget/CheckBox;

    .line 104
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a026b:Landroid/view/View;

    .line 105
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$6;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force0\' and method \'onClick\'"

    const v1, 0x7f0a0260

    .line 111
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force0\'"

    .line 112
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force0:Landroid/widget/LinearLayout;

    .line 113
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0260:Landroid/view/View;

    .line 114
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$7;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force4\' and method \'onClick\'"

    const v1, 0x7f0a0268

    .line 120
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force4\'"

    .line 121
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force4:Landroid/widget/LinearLayout;

    .line 122
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0268:Landroid/view/View;

    .line 123
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$8;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'force5\' and method \'onClick\'"

    const v1, 0x7f0a026a

    .line 129
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'force5\'"

    .line 130
    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force5:Landroid/widget/LinearLayout;

    .line 131
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a026a:Landroid/view/View;

    .line 132
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$9;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'topBackTitle\'"

    .line 138
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a05a3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->topBackTitle:Landroid/widget/TextView;

    const-string v0, "field \'test\'"

    .line 139
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0564

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->test:Landroid/widget/TextView;

    const v0, 0x7f0a0262

    const-string v1, "method \'onClick\'"

    .line 140
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0262:Landroid/view/View;

    .line 142
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$10;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$10;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0264

    .line 148
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0264:Landroid/view/View;

    .line 150
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$11;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$11;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0266

    .line 156
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0266:Landroid/view/View;

    .line 158
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$12;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$12;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05a2

    .line 164
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 165
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 166
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$13;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding$13;-><init>(Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;

    .line 181
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force0Cb:Landroid/widget/CheckBox;

    .line 182
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force1Cb:Landroid/widget/CheckBox;

    .line 183
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force2Cb:Landroid/widget/CheckBox;

    .line 184
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force3Cb:Landroid/widget/CheckBox;

    .line 185
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force4Cb:Landroid/widget/CheckBox;

    .line 186
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force5Cb:Landroid/widget/CheckBox;

    .line 187
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force0:Landroid/widget/LinearLayout;

    .line 188
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force4:Landroid/widget/LinearLayout;

    .line 189
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->force5:Landroid/widget/LinearLayout;

    .line 190
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->topBackTitle:Landroid/widget/TextView;

    .line 191
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity;->test:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0261:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0261:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0263:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0263:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0265:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0265:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0267:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0267:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0269:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0269:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a026b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a026b:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0260:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0260:Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0268:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0268:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a026a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a026a:Landroid/view/View;

    .line 211
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0262:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0262:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0264:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0264:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0266:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a0266:Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/ThrottleStartingForceActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
