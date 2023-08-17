.class public abstract Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;
.super Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
.source "SourceFile"


# static fields
.field public static final TYPE_ARGB:B = 0x1t

.field public static final TYPE_LINEAR_GRADIENT:B = 0x3t

.field public static final TYPE_LINK:B = 0x2t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_RADIAL_GRADIENT:B = 0x4t


# instance fields
.field public color:I

.field public colorType:B

.field public gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    return-void
.end method

.method public constructor <init>(BBI)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    iput-byte p2, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unexpected stroke type:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p3, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    :cond_2
    return-void
.end method

.method public constructor <init>(BBLcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    iput-byte p2, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    if-eqz p2, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unexpected stroke type:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    :cond_2
    return-void
.end method

.method public constructor <init>(BLcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    invoke-virtual {p0, p2}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->clone()Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;

    move-result-object v0

    return-object v0
.end method

.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;

    invoke-direct {v0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprRadialGradient;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown fill type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;

    invoke-direct {v0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    :goto_1
    return-void
.end method

.method public getSPRSize()I
    .locals 3

    iget-byte v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown fill type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->getSPRSize()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 2

    iget-byte v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown fill type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    return-void
.end method
