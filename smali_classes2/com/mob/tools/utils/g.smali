.class public Lcom/mob/tools/utils/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/g$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/tools/utils/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mob/tools/utils/g;
    .locals 2

    .line 40
    sget-object v0, Lcom/mob/tools/utils/g;->a:Lcom/mob/tools/utils/g;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/mob/tools/utils/g;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/g;->a:Lcom/mob/tools/utils/g;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/mob/tools/utils/g;

    invoke-direct {v1}, Lcom/mob/tools/utils/g;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/g;->a:Lcom/mob/tools/utils/g;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/tools/utils/g;->a:Lcom/mob/tools/utils/g;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 202
    invoke-static {p1}, Lcom/mob/tools/utils/DH$SyncMtd;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c()Lcom/mob/tools/utils/g$a;
    .locals 6

    const-string v0, "ro.miui.ui.version.code"

    .line 148
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "0239djdkdldfdidgdidldgdidldd+fMdjfididk_eRdl!edUdfWf"

    .line 149
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "ro.miui.internal.storage"

    .line 150
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v0, "021VdjdkdlffdgdiHgVdcdlddTfHdjfididkFe.dl(fNdfdgdi"

    .line 152
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ro.build.hw_emui_api_level"

    .line 153
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ro.confg.hw_systemversion"

    .line 154
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v0, "026jfUdjfidifiViGdlfiecfidldgfi]f;dlef[g<ecdfVf$dldiYc6dk3e"

    .line 156
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "0261djdkdldfTfCdigddgdlfi$fiQdg8jVfgdigdNdBdjdcdlef8g!ecdfDf"

    .line 157
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "018\'djdkdlef9gVecdf^fUdl8jGdgffZg0difiHhfSdc"

    .line 158
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v0, "024cMdkdfdlfiMdZdffidgIe6ejdlfi4jf;ejdldcdifi6dWffZgf"

    .line 160
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "init.svc.health-hal-2-1-samsung"

    .line 161
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v0, "024Vdjdkdlffdgdi_g(dcdlddOf_djfididk.eTdldk_jj;dkdjdkdf"

    .line 163
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 164
    sget-object v0, Lcom/mob/tools/utils/g$a;->e:Lcom/mob/tools/utils/g$a;

    return-object v0

    :cond_4
    const-string v0, "027Pdjdkdldddidddkdldkfidlffdgdi4gOdcdldcdifi6jgd2ecdldidc"

    .line 165
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "018-djdkdldddidddkdldkfidldd(fZdjfididkTe"

    .line 166
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v0, "023)djdkdlJgfiBdddldj?fgfd?fi4fXdldd_f_djfididkMe"

    .line 168
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 169
    sget-object v0, Lcom/mob/tools/utils/g$a;->g:Lcom/mob/tools/utils/g$a;

    return-object v0

    :cond_6
    const-string v0, "022NdjdkdlffdgdiTg[dcdlfi]fe4fiIf+dlddUf]djfididk(e"

    .line 170
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 171
    sget-object v0, Lcom/mob/tools/utils/g$a;->h:Lcom/mob/tools/utils/g$a;

    return-object v0

    :cond_7
    const-string v0, "014de[dcdjdkdidchkejdkdkej;gf"

    .line 172
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "026\'djdkdl<cLdkdfdlejdkdkej9gfQdlHcgAdiDfeiGdidcff@dBfi;f"

    invoke-static {v1}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 173
    sget-object v0, Lcom/mob/tools/utils/g$a;->i:Lcom/mob/tools/utils/g$a;

    return-object v0

    :cond_8
    const-string v0, "020HdjdkdlfidfHdYdj.i*difiKde*dldd!fBdjfididk+e"

    .line 174
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 175
    sget-object v0, Lcom/mob/tools/utils/g$a;->k:Lcom/mob/tools/utils/g$a;

    return-object v0

    :cond_9
    const-string v0, "014 djdkdldjdkdfdldd(f)djfididk=e"

    .line 176
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 177
    sget-object v0, Lcom/mob/tools/utils/g$a;->l:Lcom/mob/tools/utils/g$a;

    return-object v0

    :cond_a
    const-string v0, "020RdjdkdlIcid0dlecdgGe)dkfidldd2f$djfididkTe"

    .line 178
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 179
    sget-object v0, Lcom/mob/tools/utils/g$a;->m:Lcom/mob/tools/utils/g$a;

    return-object v0

    :cond_b
    const-string v0, "018%djdkdlffdgdi)g>dcdldgdidd fPdjfididkMe"

    .line 180
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 181
    sget-object v0, Lcom/mob/tools/utils/g$a;->n:Lcom/mob/tools/utils/g$a;

    return-object v0

    :cond_c
    const-string v0, "023KdjdkdlffdgdiAg[dcdl]e)dgffdi?dRdldjdkdfdlMcBdkdcDf"

    .line 182
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "015^djdkdlffdgdiUgMdcdldjdkdfdldidc"

    .line 183
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    const-string v0, "021$fiecfidlMg4ejVf?dl?gLejdfdcdfdhdd)f djfididk]e"

    .line 185
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 186
    sget-object v0, Lcom/mob/tools/utils/g$a;->p:Lcom/mob/tools/utils/g$a;

    return-object v0

    :cond_e
    const-string v0, "019Jdjdkdlffdgdi(gUdcdldcdifiXjgd=ecdldidc"

    .line 187
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "019PdjdkdlffdgdiOgGdcdldcdifiTjgdRecdldidc"

    .line 188
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amigo([\\d.]+)[a-zA-Z]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 189
    sget-object v0, Lcom/mob/tools/utils/g$a;->q:Lcom/mob/tools/utils/g$a;

    return-object v0

    .line 192
    :cond_f
    invoke-static {}, Lcom/mob/tools/utils/g$a;->values()[Lcom/mob/tools/utils/g$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 193
    invoke-virtual {v3}, Lcom/mob/tools/utils/g$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mob/tools/utils/DH$SyncMtd;->getManufacturer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    return-object v3

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_11
    sget-object v0, Lcom/mob/tools/utils/g$a;->r:Lcom/mob/tools/utils/g$a;

    return-object v0

    .line 184
    :cond_12
    :goto_1
    sget-object v0, Lcom/mob/tools/utils/g$a;->o:Lcom/mob/tools/utils/g$a;

    return-object v0

    .line 167
    :cond_13
    :goto_2
    sget-object v0, Lcom/mob/tools/utils/g$a;->f:Lcom/mob/tools/utils/g$a;

    return-object v0

    .line 162
    :cond_14
    :goto_3
    sget-object v0, Lcom/mob/tools/utils/g$a;->d:Lcom/mob/tools/utils/g$a;

    return-object v0

    .line 159
    :cond_15
    :goto_4
    sget-object v0, Lcom/mob/tools/utils/g$a;->c:Lcom/mob/tools/utils/g$a;

    return-object v0

    .line 155
    :cond_16
    :goto_5
    sget-object v0, Lcom/mob/tools/utils/g$a;->b:Lcom/mob/tools/utils/g$a;

    return-object v0

    .line 151
    :cond_17
    :goto_6
    sget-object v0, Lcom/mob/tools/utils/g$a;->a:Lcom/mob/tools/utils/g$a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/mob/tools/utils/g;->c()Lcom/mob/tools/utils/g$a;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/mob/tools/utils/g$1;->a:[I

    invoke-virtual {v0}, Lcom/mob/tools/utils/g$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "019(djdkdlffdgdiZg=dcdldcdifi1jgdFecdldidc"

    .line 128
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "021,fiecfidl0gAej2fAdlZgYejdfdcdfdhddDf[djfididk3e"

    .line 124
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "023Ddjdkdlffdgdi_gRdcdl e9dgffdiFdCdldjdkdfdlYcSdkdcLf"

    .line 117
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "015)djdkdlffdgdi;g>dcdldjdkdfdldidc"

    .line 119
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "018=djdkdlffdgdi<gRdcdldgdidd,fMdjfididkGe"

    .line 113
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "020?djdkdlMcid$dlecdgCe.dkfidldd:f?djfididk@e"

    .line 109
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "0145djdkdldjdkdfdldd f0djfididk]e"

    .line 105
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "020;djdkdlfidf,d-dj[iTdifi2de1dldd]fRdjfididk:e"

    .line 101
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "024%djdkdlffdgdiDg1dcdldd>fBdjfididkTeMdldj;fgfdCfi$f"

    .line 97
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const-string v0, "022Ddjdkdlffdgdi0g]dcdlfi5fe@fi*fRdldd5f)djfididkJe"

    .line 93
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const-string v0, "023;djdkdlZgfiJdddldj5fgfd8fi,f[dldd)fPdjfididkZe"

    .line 89
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    const-string v0, "027Gdjdkdldddidddkdldkfidlffdgdi_gRdcdldcdifiDjgd>ecdldidc"

    .line 82
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "018AdjdkdldddidddkdldkfidlddSf(djfididk.e"

    .line 84
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    const-string v0, "024+djdkdlffdgdiGg=dcdldd:fDdjfididk?eMdldk?jjXdkdjdkdf"

    .line 78
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    const-string v0, "028NdjdkdlffdgdiAgRdcdlddGf3djfididkZe+dldiNecOdjUfLdf%feidg"

    .line 74
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    const-string v0, "019PdjdkdlffdgdiIg3dcdldcdifi.jgd7ecdldidc"

    .line 69
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    const-string v0, "021Gdjdkdlffdgdi0g9dcdldd9f5djfididkLeUdl5fGdfdgdi"

    .line 64
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    const-string v0, "023Wdjdkdldfdidgdidldgdidldd.f?djfididk@e2dl*edKdf9f"

    .line 60
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "019,djdkdlffdgdiZg$dcdldcdifi3jgd^ecdldidc"

    .line 132
    invoke-static {v0}, Lcom/mob/commons/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
