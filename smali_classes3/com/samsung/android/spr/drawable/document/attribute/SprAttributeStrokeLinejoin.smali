.class public Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;
.super Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
.source "SourceFile"


# static fields
.field public static STROKE_LINEJOIN_TYPE_BEVEL:B = 0x3t

.field public static STROKE_LINEJOIN_TYPE_MITER:B = 0x1t

.field public static STROKE_LINEJOIN_TYPE_NONE:B = 0x0t

.field public static STROKE_LINEJOIN_TYPE_ROUND:B = 0x2t


# instance fields
.field public linejoin:B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    sget-byte v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    iput-byte v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    sget-byte v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    iput-byte v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method
