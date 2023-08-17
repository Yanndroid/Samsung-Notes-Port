.class public Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;
.super Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
.source "SourceFile"


# instance fields
.field public miterLimit:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void
.end method
