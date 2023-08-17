.class public Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;
.super Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
.source "SourceFile"


# instance fields
.field public strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const v0, 0x3e99999a    # 0.3f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    :cond_0
    return-void
.end method

.method public getSPRSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void
.end method
