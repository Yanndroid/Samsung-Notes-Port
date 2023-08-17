.class public Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;
.super Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
.source "SourceFile"


# instance fields
.field public dx:F

.field public dy:F

.field public radius:F

.field public shadowColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dy:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dx:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->radius:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->shadowColor:I

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 1

    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->radius:F

    iput p2, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dx:F

    iput p3, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dy:F

    iput p4, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->shadowColor:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->radius:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dx:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dy:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    iget v1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->radius:F

    iput v1, v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->radius:F

    iget v1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dx:F

    iput v1, v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dx:F

    iget v1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dy:F

    iput v1, v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dy:F

    iget v1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->shadowColor:I

    iput v1, v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->shadowColor:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    move-result-object v0

    return-object v0
.end method

.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->radius:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dx:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dy:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->shadowColor:I

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->radius:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dx:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dy:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method
