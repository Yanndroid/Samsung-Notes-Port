.class public Lq0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x30d40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    add-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public A(ILcom/samsung/android/sdk/pen/base/SpenRectD;)V
    .locals 4

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    iget-wide v1, p2, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x8

    iget-wide v2, p2, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x10

    iget-wide v2, p2, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x18

    iget-wide v1, p2, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public B(ILandroid/graphics/RectF;)V
    .locals 3

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x4

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x8

    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0xc

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public C(ILjava/lang/String;)I
    .locals 6

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lq0/a;->s(IS)V

    const/4 p1, 0x2

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Lq0/a;->r(II)V

    add-int/lit8 v0, p1, 0x2

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, p2, v1

    iget-object v4, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v0, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    move v0, v5

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p1

    return v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WRITE_STD_STRING - value is invalid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(ILjava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-16LE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to encoding, text = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "WDocBuffer"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    array-length p2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    aget-byte v2, v0, v1

    iget-object v3, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, p1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    move p1, v4

    goto :goto_1

    :cond_1
    :goto_2
    return-void
.end method

.method public E()[B
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public F(I)V
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_1
    iget-object p1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public b(I)B
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public c(I)S
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public d(I)I
    .locals 2

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    return p1
.end method

.method public e(I)I
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public f(I)F
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public g(I)J
    .locals 2

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(I)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public i(I[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    aput-byte p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    move p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(I)Lcom/samsung/android/sdk/pen/base/SpenPointD;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/base/SpenPointD;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/base/SpenPointD;-><init>()V

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    return-object v0
.end method

.method public k(I)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0xc

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public l(I)Lcom/samsung/android/sdk/pen/base/SpenRectD;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/base/SpenRectD;-><init>()V

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x10

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x18

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    return-object v0
.end method

.method public m(I)Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0xc

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public n(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lq0/a;->d(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, v0}, Lq0/a;->o(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o(II)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-array p2, p2, [B

    invoke-virtual {p0, p1, p2}, Lq0/a;->i(I[B)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public p(II)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    mul-int/lit8 p2, p2, 0x2

    new-array v1, p2, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    iget-object v3, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    aput-byte p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    move p1, v4

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-16LE"

    invoke-direct {p1, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    const-string p1, "WDocBuffer"

    const-string p2, "Fail to decoding to text"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public q(II)V
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public r(II)V
    .locals 2

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public s(IS)V
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public t(IF)V
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public u(II)V
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public v(IJ)V
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public w(ILandroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x4

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public x(I[B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int v2, p1, v0

    aget-byte v3, p2, v0

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y(ILcom/samsung/android/sdk/pen/base/SpenPointD;)V
    .locals 3

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    iget-wide v1, p2, Lcom/samsung/android/sdk/pen/base/SpenPointD;->x:D

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x8

    iget-wide v1, p2, Lcom/samsung/android/sdk/pen/base/SpenPointD;->y:D

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public z(ILandroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x4

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x8

    iget v2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lq0/a;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0xc

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method
