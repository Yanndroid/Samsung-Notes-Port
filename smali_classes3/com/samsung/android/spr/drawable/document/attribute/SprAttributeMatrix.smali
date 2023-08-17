.class public Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;
.super Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
.source "SourceFile"


# instance fields
.field private final mIntrinsic:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

.field public matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    check-cast v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Matrix;)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    check-cast v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;-><init>(B)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    check-cast v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    move-result-object v0

    return-object v0
.end method

.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprMatrix;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprMatrix;->toSPR(Ljava/io/DataOutputStream;Landroid/graphics/Matrix;)V

    return-void
.end method
