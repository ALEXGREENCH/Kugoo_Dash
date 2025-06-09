.class public Lcom/mob/mcl/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:I

.field public final b:I

.field public c:J

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/mob/mcl/c/e;->a:I

    .line 45
    iput p2, p0, Lcom/mob/mcl/c/e;->b:I

    .line 46
    iput-wide p3, p0, Lcom/mob/mcl/c/e;->c:J

    .line 47
    iput-object p5, p0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mob/mcl/c/e;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/mob/mcl/c/e;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 65
    invoke-static {p0}, Lcom/mob/mcl/c/e;->b(Ljava/nio/ByteBuffer;)Lcom/mob/mcl/c/e;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method static b(Ljava/nio/ByteBuffer;)Lcom/mob/mcl/c/e;
    .locals 3

    .line 77
    invoke-static {p0}, Lcom/mob/mcl/c/e;->c(Ljava/nio/ByteBuffer;)Lcom/mob/mcl/c/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget v1, v0, Lcom/mob/mcl/c/e;->a:I

    if-lez v1, :cond_1

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    iget v1, v0, Lcom/mob/mcl/c/e;->a:I

    new-array v1, v1, [B

    .line 83
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object p0, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method static c(Ljava/nio/ByteBuffer;)Lcom/mob/mcl/c/e;
    .locals 9

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    const/16 v0, 0x270f

    if-le v5, v0, :cond_1

    return-object v2

    .line 99
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 100
    new-instance p0, Lcom/mob/mcl/c/e;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/mob/mcl/c/e;-><init>(IIJLjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a()[B
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/mob/mcl/c/e;->b()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    iget v1, p0, Lcom/mob/mcl/c/e;->a:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 54
    iget v1, p0, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    iget-wide v1, p0, Lcom/mob/mcl/c/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 56
    iget-object v1, p0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "UTF-8"

    .line 57
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/mob/mcl/c/e;->a:I

    add-int/lit8 v0, v0, 0x11

    return v0
.end method
