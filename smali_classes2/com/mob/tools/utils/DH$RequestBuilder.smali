.class public Lcom/mob/tools/utils/DH$RequestBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/DH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/DH$RequestBuilder$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/mob/tools/utils/DH$RequestBuilder$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    .line 69
    iput-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/mob/tools/utils/DH$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/DH$RequestBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a()Lcom/mob/tools/utils/DH$DHResponse;
    .locals 6

    .line 138
    new-instance v0, Lcom/mob/tools/utils/DH$DHResponse;

    invoke-direct {v0}, Lcom/mob/tools/utils/DH$DHResponse;-><init>()V

    const/4 v1, 0x0

    .line 139
    :goto_0
    iget-object v2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    .line 142
    :try_start_0
    iget-object v3, v2, Lcom/mob/tools/utils/DH$RequestBuilder$a;->a:Ljava/lang/String;

    iget-object v4, v2, Lcom/mob/tools/utils/DH$RequestBuilder$a;->a:Ljava/lang/String;

    iget-object v5, v2, Lcom/mob/tools/utils/DH$RequestBuilder$a;->b:[Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/mob/tools/utils/DH$RequestBuilder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/mob/tools/utils/DH$DHResponse;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 145
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 146
    iget-object v2, v2, Lcom/mob/tools/utils/DH$RequestBuilder$a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/mob/tools/utils/DH$DHResponse;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 148
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/utils/DH$RequestBuilder;)Lcom/mob/tools/utils/DH$DHResponse;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/mob/tools/utils/DH$RequestBuilder;->a()Lcom/mob/tools/utils/DH$DHResponse;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "gmpfo"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "params illegal: "

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 157
    array-length p1, p2

    if-ne p1, v1, :cond_0

    .line 158
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    .line 159
    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 160
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, v4, v4, p1, p2}, Lcom/mob/tools/b/a;->b(ZILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "gmpfofce"

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 165
    array-length p1, p2

    if-ne p1, v5, :cond_2

    .line 166
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 167
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/String;

    .line 168
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 169
    iget-object v1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    invoke-interface {v1, p1, v4, v0, p2}, Lcom/mob/tools/b/a;->b(ZILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 171
    :cond_2
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v0, "getMpfos"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    .line 174
    array-length p1, p2

    if-ne p1, v5, :cond_4

    .line 175
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 176
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/String;

    .line 177
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 178
    iget-object v1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    invoke-interface {v1, v4, p1, v0, p2}, Lcom/mob/tools/b/a;->b(ZILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 180
    :cond_4
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string v0, "cird"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 183
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "gsimt"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/mob/tools/b/a;->a(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "gsimtfce"

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_8

    .line 187
    array-length p1, p2

    if-ne p1, v3, :cond_8

    .line 188
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 189
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->a(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 191
    :cond_8
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string v0, "gbsi"

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 194
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/mob/tools/b/a;->b(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const-string v0, "gbsifce"

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_b

    .line 196
    array-length p1, p2

    if-ne p1, v3, :cond_b

    .line 197
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 198
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->b(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 200
    :cond_b
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string v0, "gstmpts"

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p2, :cond_d

    .line 203
    array-length p1, p2

    if-ne p1, v3, :cond_d

    .line 204
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    .line 205
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 207
    :cond_d
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string v0, "gscsz"

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->C()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const-string v0, "gcrie"

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 212
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/mob/tools/b/a;->c(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    const-string v0, "gcriefce"

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p2, :cond_11

    .line 214
    array-length p1, p2

    if-ne p1, v3, :cond_11

    .line 215
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 216
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->c(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 218
    :cond_11
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    const-string v0, "gcrnm"

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 221
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/mob/tools/b/a;->d(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    const-string v0, "gcrnmfce"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p2, :cond_14

    .line 223
    array-length p1, p2

    if-ne p1, v3, :cond_14

    .line 224
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 225
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->d(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 227
    :cond_14
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const-string v0, "gsnmd"

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 230
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->S()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    const-string v0, "gsnmdfp"

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p2, :cond_17

    .line 232
    array-length p1, p2

    if-ne p1, v3, :cond_17

    .line 233
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    .line 234
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 236
    :cond_17
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    const-string v0, "gneyp"

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 239
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/mob/tools/b/a;->f(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    const-string v0, "gneypnw"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 241
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->D()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    const-string v0, "gneypfce"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p2, :cond_1b

    .line 243
    array-length p1, p2

    if-ne p1, v3, :cond_1b

    .line 244
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 245
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->f(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 247
    :cond_1b
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    const-string v0, "cknavbl"

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 250
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->G()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1d
    const-string v0, "gnktpfs"

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 252
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->E()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    const-string v0, "gdtlnktpfs"

    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 254
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->F()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1f
    const-string v0, "gdvk"

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 256
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->Q()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_20
    const-string v0, "gdvkfc"

    .line 257
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz p2, :cond_21

    .line 258
    array-length p1, p2

    if-ne p1, v3, :cond_21

    .line 259
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 260
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->g(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 262
    :cond_21
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    const-string v0, "gpnmmt"

    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 265
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->U()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    const-string v0, "gpnmfp"

    .line 266
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz p2, :cond_24

    .line 267
    array-length p1, p2

    if-ne p1, v3, :cond_24

    .line 268
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    .line 269
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 271
    :cond_24
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    const-string v0, "gia"

    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz p2, :cond_26

    .line 274
    array-length p1, p2

    if-ne p1, v3, :cond_26

    .line 275
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 276
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1, v4}, Lcom/mob/tools/b/a;->a(ZZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 278
    :cond_26
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    const-string v0, "giafce"

    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz p2, :cond_28

    .line 281
    array-length p1, p2

    if-ne p1, v1, :cond_28

    .line 282
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 283
    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 284
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/b/a;->a(ZZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 286
    :cond_28
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    const-string v0, "gsl"

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 289
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->P()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_2a
    const-string v0, "gscpt"

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 291
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->R()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2b
    const-string v0, "gavti"

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 293
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2c
    const-string v0, "glctn"

    .line 294
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p2, :cond_2d

    .line 295
    array-length p1, p2

    if-ne p1, v5, :cond_2d

    .line 296
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 297
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 298
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 299
    iget-object v1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Lcom/mob/tools/b/a;->a(IIZ)Landroid/location/Location;

    move-result-object p1

    return-object p1

    .line 301
    :cond_2d
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    const-string v0, "gtecloc"

    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 304
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->p()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2f
    const-string v0, "gnbclin"

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 306
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->q()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_30
    const-string v0, "gdvtp"

    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 308
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->o()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_31
    const-string v0, "wmcwi"

    .line 309
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 310
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->r()Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_32
    const-string v0, "ipgist"

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p2, :cond_33

    .line 312
    array-length p1, p2

    if-ne p1, v3, :cond_33

    .line 313
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    .line 314
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->b(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 316
    :cond_33
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    const-string v0, "gcuin"

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 319
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->w()Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_35
    const-string v0, "gtydvin"

    .line 320
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 321
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->x()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_36
    const-string v0, "gqmkn"

    .line 322
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 323
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->y()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_37
    const-string v0, "gszin"

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 325
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->z()Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_38
    const-string v0, "gmrin"

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 327
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->A()Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_39
    const-string v0, "gmivsn"

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 329
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3a
    const-string v0, "cx"

    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 331
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->b()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3b
    const-string v0, "ckpd"

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 333
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3c
    const-string v0, "ubenbl"

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 335
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->h()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3d
    const-string v0, "dvenbl"

    .line 336
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 337
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3e
    const-string v0, "ckua"

    .line 338
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 339
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->f()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3f
    const-string v0, "vnmt"

    .line 340
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 341
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->e()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_40
    const-string v0, "degb"

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 343
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->d()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_41
    const-string v0, "iwpxy"

    .line 344
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 345
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_42
    const-string v0, "gflv"

    .line 346
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 347
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->J()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_43
    const-string v0, "gbsbd"

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 349
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->K()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_44
    const-string v0, "gbfspy"

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 351
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->L()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_45
    const-string v0, "gbplfo"

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 353
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->M()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_46
    const-string v0, "gdntp"

    .line 354
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 355
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->H()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_47
    const-string v0, "qritsvc"

    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    if-eqz p2, :cond_48

    .line 357
    array-length p1, p2

    if-ne p1, v1, :cond_48

    .line 358
    aget-object p1, p2, v4

    check-cast p1, Landroid/content/Intent;

    .line 359
    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 360
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/b/a;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 362
    :cond_48
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    const-string v0, "rsaciy"

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-eqz p2, :cond_4a

    .line 365
    array-length p1, p2

    if-ne p1, v1, :cond_4a

    .line 366
    aget-object p1, p2, v4

    check-cast p1, Landroid/content/Intent;

    .line 367
    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 368
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/b/a;->b(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1

    .line 370
    :cond_4a
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    const-string v0, "gpgif"

    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-eqz p2, :cond_4c

    .line 373
    array-length p1, p2

    if-ne p1, v1, :cond_4c

    .line 374
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    .line 375
    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 376
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, v4, v4, p1, p2}, Lcom/mob/tools/b/a;->a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1

    .line 378
    :cond_4c
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    const-string v0, "gpgiffcin"

    .line 380
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    if-eqz p2, :cond_4e

    .line 381
    array-length p1, p2

    if-ne p1, v5, :cond_4e

    .line 382
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 383
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/String;

    .line 384
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 385
    iget-object v1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    invoke-interface {v1, p1, v4, v0, p2}, Lcom/mob/tools/b/a;->a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1

    .line 387
    :cond_4e
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    const-string v0, "gpgifstrg"

    .line 389
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-eqz p2, :cond_50

    .line 390
    array-length p1, p2

    if-ne p1, v5, :cond_50

    .line 391
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 392
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/String;

    .line 393
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 394
    iget-object v1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    invoke-interface {v1, v4, p1, v0, p2}, Lcom/mob/tools/b/a;->a(ZILjava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1

    .line 396
    :cond_50
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    const-string v0, "giads"

    .line 398
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 399
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->N()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_52
    const-string v0, "gdvda"

    .line 400
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 401
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ab()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_53
    const-string v0, "gdvdtnas"

    .line 402
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 403
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ac()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_54
    const-string v0, "galtut"

    .line 404
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 405
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ad()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_55
    const-string v0, "gdvme"

    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 407
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ae()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_56
    const-string v0, "gcrup"

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 409
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->af()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_57
    const-string v0, "gcifm"

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 411
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ag()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_58
    const-string v0, "godm"

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 413
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ah()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_59
    const-string v0, "godhm"

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 415
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ai()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5a
    const-string v0, "galdm"

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 417
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->aj()Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_5b
    const-string v0, "gtaif"

    .line 418
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 419
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ak()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1

    :cond_5c
    const-string v0, "gtaifprm"

    .line 420
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    if-eqz p2, :cond_5d

    .line 421
    array-length p1, p2

    if-ne p1, v1, :cond_5d

    .line 422
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    .line 423
    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 424
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mob/tools/b/a;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1

    .line 426
    :cond_5d
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    const-string v0, "gtaifprmfce"

    .line 428
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    if-eqz p2, :cond_5f

    .line 429
    array-length p1, p2

    if-ne p1, v5, :cond_5f

    .line 430
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 431
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/String;

    .line 432
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 433
    iget-object v1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Lcom/mob/tools/b/a;->a(ZLjava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1

    .line 435
    :cond_5f
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    const-string v0, "gtbdt"

    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 438
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->am()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_61
    const-string v0, "gtscnin"

    .line 439
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 440
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->an()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_62
    const-string v0, "gtscnppi"

    .line 441
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 442
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ao()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_63
    const-string v0, "ishmos"

    .line 443
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 444
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ap()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_64
    const-string v0, "gthmosv"

    .line 445
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 446
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->aq()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_65
    const-string v0, "gthmosdtlv"

    .line 447
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 448
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ar()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_66
    const-string v0, "gthmpmst"

    .line 449
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 450
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->as()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_67
    const-string v0, "gthmepmst"

    .line 451
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 452
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->at()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_68
    const-string v0, "gtinnerlangmt"

    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 454
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->au()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_69
    const-string v0, "gtgramgendt"

    .line 455
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 456
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->av()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6a
    const-string v0, "gtelcmefce"

    .line 457
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 458
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 459
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 460
    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 461
    aget-object p2, p2, v5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 462
    iget-object v2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1, p2}, Lcom/mob/tools/b/a;->a(IIZZ)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_6b
    const-string v0, "gtmwfo"

    .line 463
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 464
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/mob/tools/b/a;->e(Z)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    :cond_6c
    const-string v0, "wmcwifce"

    .line 465
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    if-eqz p2, :cond_6d

    .line 466
    array-length p1, p2

    if-ne p1, v3, :cond_6d

    .line 467
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 468
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->e(Z)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 470
    :cond_6d
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    const-string v0, "gtaifok"

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 473
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->al()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_6f
    const-string v0, "gtmcdi"

    .line 474
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 475
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/mob/tools/b/a;->a(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_70
    const-string v0, "gtmcdifce"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    if-eqz p2, :cond_71

    .line 477
    array-length p1, p2

    if-ne p1, v3, :cond_71

    .line 478
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 479
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->a(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 481
    :cond_71
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    const-string v0, "gtmbcdi"

    .line 483
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 484
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/mob/tools/b/a;->b(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_73
    const-string v0, "gtmbcdifce"

    .line 485
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    if-eqz p2, :cond_74

    .line 486
    array-length p1, p2

    if-ne p1, v3, :cond_74

    .line 487
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 488
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->b(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 490
    :cond_74
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    const-string v0, "miwpy"

    .line 492
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 493
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_76
    const-string v0, "gtmnbclfo"

    .line 494
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 495
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->q()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_77
    const-string v0, "ctedebbing"

    .line 496
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 497
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->aw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_78
    const-string v0, "gteacifo"

    .line 498
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 499
    iget-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mob/tools/b/a;->ax()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_79
    const-string v0, "gtdm"

    .line 500
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    if-eqz p2, :cond_7a

    .line 501
    array-length p1, p2

    if-ne p1, v3, :cond_7a

    .line 502
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 503
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->h(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 505
    :cond_7a
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7b
    const-string v0, "gtlstactme"

    .line 507
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    if-eqz p2, :cond_7c

    .line 508
    array-length p1, p2

    if-ne p1, v3, :cond_7c

    .line 509
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    .line 510
    iget-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/mob/tools/b/c;->a(Landroid/content/Context;)Lcom/mob/tools/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/tools/b/c;->d()Lcom/mob/tools/b/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mob/tools/b/a;->f(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 512
    :cond_7c
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7d
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/mob/tools/utils/DH$DHResponder;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 130
    :try_start_0
    new-instance v0, Lcom/mob/tools/utils/DH$DHResponse;

    invoke-direct {v0}, Lcom/mob/tools/utils/DH$DHResponse;-><init>()V

    invoke-interface {p1, v0}, Lcom/mob/tools/utils/DH$DHResponder;->onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 132
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error from caller"

    invoke-virtual {v0, p1, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/DH$RequestBuilder;Lcom/mob/tools/utils/DH$DHResponder;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/DH$RequestBuilder;->a(Lcom/mob/tools/utils/DH$DHResponder;)V

    return-void
.end method


# virtual methods
.method public checkDebbing()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1418
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ctedebbing"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public checkNetworkAvailable()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 706
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "cknavbl"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public checkPad()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 956
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ckpd"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public checkUA()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 984
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ckua"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public cx()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 946
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "cx"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public debugable()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1002
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "degb"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public devEnable()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 976
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "dvenbl"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getACIfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1426
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gteacifo"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAInfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1230
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtaif"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAInfoForPkg(Ljava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1242
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "gtaifprm"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAInfoForPkgForce(ZLjava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1254
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "gtaifprmfce"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getALLD()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1220
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "galdm"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAdvertisingID()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 805
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gavti"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAppLastUpdateTime()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1160
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "galtut"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAppName()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 749
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gpnmmt"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAppNameForPkg(Ljava/lang/String;)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 760
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gpnmfp"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getBaseband()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1031
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gbsbd"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getBdT()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1271
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtbdt"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getBoardFromSysProperty()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1041
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gbfspy"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getBoardPlatform()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1051
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gbplfo"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getBssid()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 553
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gbsi"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getBssidForce(Z)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gbsifce"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getBtM()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public getCInfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1190
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gcifm"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCLoc()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 839
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtecloc"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCPUInfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 888
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gcuin"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCarrier()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gcrie"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCarrierForce(Z)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 630
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gcriefce"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCarrierName()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 640
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gcrnm"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCarrierNameForce(Z)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 645
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gcrnmfce"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCgroup()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1180
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gcrup"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCurrentWifiInfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 872
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "wmcwi"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDM(Z)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1434
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gtdm"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDataNtType()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1061
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gdntp"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDetailNetworkTypeForStatic()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 723
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gdtlnktpfs"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDeviceData()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1141
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gdvda"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDeviceDataNotAES()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1151
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gdvdtnas"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDeviceId()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public getDeviceKey()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 731
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gdvk"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDeviceKeyFromCache(Z)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 742
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gdvkfc"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDeviceName()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1170
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gdvme"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDeviceType()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 855
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gdvtp"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDrID()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public getFlavor()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1020
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gflv"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getGrammaticalGender()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1322
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtgramgendt"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getHmEPMState()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1306
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gthmepmst"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getHmOsDetailedVer()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1296
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gthmosdtlv"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getHmOsVer()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1291
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gthmosv"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getHmPMState()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1301
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gthmpmst"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getIA(Z)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 770
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gia"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getIAForce(ZZ)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 781
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "giafce"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getIMEI()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public getIMSI()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public getIPAddress()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1132
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "giads"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getInnerAppLanguage()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1314
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtinnerlangmt"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getLATime(Ljava/lang/String;)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1439
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gtlstactme"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getLocation(IIZ)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 831
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "glctn"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMIUIVersion()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 936
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gmivsn"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMbcdi()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1357
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtmbcdi"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMbcdiForce(Z)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1362
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gtmbcdifce"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMcdi()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1347
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtmcdi"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMcdiForce(Z)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1352
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gtmcdifce"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMemoryInfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 926
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gmrin"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMnbclfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1372
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtmnbclfo"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMpfo(Ljava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1384
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "gmpfo"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMpfof(ZLjava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1397
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "gmpfofce"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMpfos(ILjava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1410
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "getMpfos"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMwfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1332
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtmwfo"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMwfoForce(Z)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1337
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "wmcwifce"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMwlfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1342
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtaifok"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getNeighboringCellInfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 847
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gnbclin"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getNetworkType()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gneyp"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getNetworkTypeForStatic()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 714
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gnktpfs"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getNetworkTypeForce(Z)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 696
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gneypfce"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getNetworkTypeNew()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 688
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gneypnw"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getOD()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1200
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "godm"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getODH()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1210
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "godhm"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getPInfo(Ljava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1096
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "gpgif"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getPInfoForce(ZLjava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1109
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "gpgiffcin"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getPInfoStrategy(ILjava/lang/String;I)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1122
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "gpgifstrg"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getPosCommForce(IIZZ)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1327
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "gtelcmefce"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getQemuKernel()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 903
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gqmkn"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getSA()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 792
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gsl"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getSSID()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 534
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gsimt"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getSSIDForce(Z)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gsimtfce"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getScreenInch()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1276
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtscnin"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getScreenPpi()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1281
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtscnppi"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getScreenSize()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 615
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gscsz"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getSdcardState()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public getSerialno()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public getSignMD5()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 660
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gsnmd"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getSignMD5ForPkg(Ljava/lang/String;)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 671
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gsnmdfp"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getSimSerialNumber()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public getSizeInfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 916
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gszin"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getSystemProperties(Ljava/lang/String;)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 599
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "gstmpts"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getTTYDriversInfo()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 896
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "gtydvin"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getTopActivity()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public getUpM()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public isHmOs()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1286
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ishmos"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public isMwpy()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1367
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "miwpy"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 880
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x0

    const-string v3, "ipgist"

    invoke-direct {v1, v3, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public isRooted()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 524
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "cird"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public isWifiProxy()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 1010
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "iwpxy"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public queryIMEI()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public queryIMSI()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 0

    return-object p0
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1072
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "qritsvc"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public request(Lcom/mob/tools/utils/DH$DHResponder;)V
    .locals 8

    .line 74
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    sget-object v1, Lcom/mob/tools/c/a;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    .line 76
    sget-object v1, Lcom/mob/tools/c/a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    .line 77
    new-instance v7, Lcom/mob/tools/utils/DH$RequestBuilder$1;

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/mob/tools/utils/DH$RequestBuilder$1;-><init>(Lcom/mob/tools/utils/DH$RequestBuilder;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/mob/tools/utils/DH$DHResponder;Z)V

    if-eqz v0, :cond_1

    .line 115
    sget-object v0, Lcom/mob/commons/z;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 117
    :cond_1
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 120
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    if-eqz p1, :cond_2

    .line 122
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/DH$RequestBuilder;->a(Lcom/mob/tools/utils/DH$DHResponder;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;I)Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 4

    .line 1084
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x0

    const-string p2, "rsaciy"

    invoke-direct {v1, p2, v2, p1}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public usbEnable()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 966
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ubenbl"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public vpn()Lcom/mob/tools/utils/DH$RequestBuilder;
    .locals 5

    .line 992
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "vnmt"

    invoke-direct {v1, v4, v2, v3}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
