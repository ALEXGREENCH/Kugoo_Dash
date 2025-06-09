.class public Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BeamLightsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

.field private view7f0a02a5:Landroid/view/View;

.field private view7f0a02a6:Landroid/view/View;

.field private view7f0a02a7:Landroid/view/View;

.field private view7f0a02a8:Landroid/view/View;

.field private view7f0a0314:Landroid/view/View;

.field private view7f0a0318:Landroid/view/View;

.field private view7f0a031a:Landroid/view/View;

.field private view7f0a031b:Landroid/view/View;

.field private view7f0a031c:Landroid/view/View;

.field private view7f0a031d:Landroid/view/View;

.field private view7f0a05a2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;Landroid/view/View;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    const-string v0, "field \'lightsSolid\' and method \'onViewClicked\'"

    const v1, 0x7f0a031c

    .line 54
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'lightsSolid\'"

    .line 55
    const-class v3, Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightsSolid:Landroid/widget/FrameLayout;

    .line 56
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031c:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$1;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'llSolidSelect\'"

    .line 63
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a033f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->llSolidSelect:Landroid/widget/LinearLayout;

    const-string v0, "field \'lightModeTv\'"

    .line 64
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0319

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    const-string v0, "field \'lightsOnIv\' and method \'onViewClicked\'"

    const v1, 0x7f0a031a

    .line 65
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'lightsOnIv\'"

    .line 66
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightsOnIv:Landroid/widget/ImageView;

    .line 67
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031a:Landroid/view/View;

    .line 68
    new-instance v1, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$2;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'h_color\'"

    .line 74
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0313

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->h_color:Landroid/widget/ImageView;

    const-string v0, "field \'light_pin\'"

    .line 75
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0315

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->light_pin:Landroid/widget/ImageView;

    const-string v0, "field \'mSeekBar_bright\'"

    .line 76
    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f0a0316

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mSeekBar_bright:Landroid/widget/SeekBar;

    const v0, 0x7f0a0318

    const-string v1, "method \'onViewClicked\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a0318:Landroid/view/View;

    .line 79
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$3;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05a2

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 87
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$4;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0314

    .line 93
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a0314:Landroid/view/View;

    .line 95
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$5;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a031b

    .line 101
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031b:Landroid/view/View;

    .line 103
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$6;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a031d

    .line 109
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031d:Landroid/view/View;

    .line 111
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$7;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$7;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02a5

    .line 117
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a5:Landroid/view/View;

    .line 119
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$8;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$8;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02a6

    .line 125
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a6:Landroid/view/View;

    .line 127
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$9;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$9;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02a7

    .line 133
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a7:Landroid/view/View;

    .line 135
    new-instance v2, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$10;

    invoke-direct {v2, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$10;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02a8

    .line 141
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 142
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a8:Landroid/view/View;

    .line 143
    new-instance v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding$11;-><init>(Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 156
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->target:Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;

    .line 158
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightsSolid:Landroid/widget/FrameLayout;

    .line 159
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->llSolidSelect:Landroid/widget/LinearLayout;

    .line 160
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightModeTv:Landroid/widget/TextView;

    .line 161
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->lightsOnIv:Landroid/widget/ImageView;

    .line 162
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->h_color:Landroid/widget/ImageView;

    .line 163
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->light_pin:Landroid/widget/ImageView;

    .line 164
    iput-object v1, v0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity;->mSeekBar_bright:Landroid/widget/SeekBar;

    .line 166
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031c:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031a:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a0318:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a0318:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a05a2:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a0314:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a0314:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031b:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a031d:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a5:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a6:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a7:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iput-object v1, p0, Lcom/kugoo/kugookirin/vehicle/BeamLightsActivity_ViewBinding;->view7f0a02a8:Landroid/view/View;

    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
