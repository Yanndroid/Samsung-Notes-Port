.class public Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;
.super Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
.source "SourceFile"


# static fields
.field public static STROKE_LINECAP_TYPE_BUTT:B = 0x1t

.field public static STROKE_LINECAP_TYPE_NONE:B = 0x0t

.field public static STROKE_LINECAP_TYPE_ROUND:B = 0x2t

.field public static STROKE_LINECAP_TYPE_SQUARE:B = 0x3t


# instance fields
.field public linecap:B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    sget-byte v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_BUTT:B

    iput-byte v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    sget-byte v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_BUTT:B

    iput-byte v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1

    iget-byte v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method
