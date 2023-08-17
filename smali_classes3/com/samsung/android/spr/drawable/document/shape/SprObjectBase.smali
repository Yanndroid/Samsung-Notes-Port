.class public abstract Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_CIRCLE:B = 0x1t

.field public static final TYPE_ELLIPSE:B = 0x2t

.field public static final TYPE_GROUP:B = 0x10t

.field public static final TYPE_LINE:B = 0x3t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_PATH:B = 0x4t

.field public static final TYPE_RECTANGLE:B = 0x5t

.field public static final TYPE_USE:B = 0x11t

.field private static final sCapArray:[Landroid/graphics/Paint$Cap;

.field private static final sJoinArray:[Landroid/graphics/Paint$Join;


# instance fields
.field public alpha:F

.field public fillPaint:Landroid/graphics/Paint;

.field public hasFillAnimation:Z

.field public hasStrokeAnimation:Z

.field public isVisibleFill:Z

.field public isVisibleStroke:Z

.field public mAttributeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mIntrinsic:Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

.field public final mType:B

.field public shadow:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

.field public strokePaint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->sCapArray:[Landroid/graphics/Paint$Cap;

    new-array v0, v0, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->sJoinArray:[Landroid/graphics/Paint$Join;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->alpha:F

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->hasFillAnimation:Z

    iput-object p0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mType:B

    return-void
.end method

.method private applyPreAttribute(Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-eq v2, v5, :cond_a

    const/16 v5, 0x23

    if-eq v2, v5, :cond_6

    const/16 v4, 0x40

    if-eq v2, v4, :cond_0

    const/16 v4, 0x61

    if-eq v2, v4, :cond_0

    const/16 v4, 0x70

    if-eq v2, v4, :cond_5

    const/16 v4, 0x25

    if-eq v2, v4, :cond_4

    const/16 v4, 0x26

    if-eq v2, v4, :cond_3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "is not supported type"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->sJoinArray:[Landroid/graphics/Paint$Join;

    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;

    iget-byte v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    sub-int/2addr v1, v3

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->sCapArray:[Landroid/graphics/Paint$Cap;

    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;

    iget-byte v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    sub-int/2addr v1, v3

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_0

    :cond_5
    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    goto/16 :goto_0

    :cond_6
    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    if-eqz v2, :cond_9

    if-eq v2, v3, :cond_8

    if-eq v2, v4, :cond_7

    if-eq v2, v8, :cond_7

    goto/16 :goto_0

    :cond_7
    iput-boolean v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_0

    :cond_8
    iput-boolean v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_9
    iput-boolean v7, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    goto/16 :goto_0

    :cond_a
    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->colorType:B

    if-eqz v2, :cond_d

    if-eq v2, v3, :cond_c

    if-eq v2, v4, :cond_b

    if-eq v2, v8, :cond_b

    goto/16 :goto_0

    :cond_b
    iput-boolean v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->shader:Landroid/graphics/Shader;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_0

    :cond_c
    iput-boolean v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_d
    iput-boolean v7, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private loadAttributeFromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_d

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readByte()B

    move-result v3

    iget-short v4, p1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMajorVersion:S

    const/16 v5, 0x3030

    if-lt v4, v5, :cond_0

    iget-short v4, p1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mMinorVersion:S

    const/16 v5, 0x3032

    if-lt v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readInt()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v3, :cond_c

    const/4 v5, 0x1

    if-eq v3, v5, :cond_b

    const/4 v5, 0x3

    if-eq v3, v5, :cond_a

    const/16 v5, 0x20

    if-eq v3, v5, :cond_9

    const/16 v5, 0x23

    if-eq v3, v5, :cond_8

    const/16 v5, 0x40

    if-eq v3, v5, :cond_7

    const/16 v5, 0x61

    if-eq v3, v5, :cond_6

    const/16 v5, 0x70

    if-eq v3, v5, :cond_5

    const/16 v5, 0x25

    if-eq v3, v5, :cond_4

    const/16 v5, 0x26

    if-eq v3, v5, :cond_3

    const/16 v5, 0x28

    if-eq v3, v5, :cond_2

    const/16 v5, 0x29

    if-eq v3, v5, :cond_1

    sget-object v5, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown attribute id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v3, v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->skip(J)J

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v4, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeMiterlimit;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v4, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeWidth;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v4, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinejoin;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v4, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStrokeLinecap;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    invoke-direct {v4, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeAnimatorSet;

    invoke-direct {v4, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeAnimatorSet;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p1, Lcom/samsung/android/spr/drawable/document/SprInputStream;->mAnimationObject:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    invoke-direct {v4, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;

    invoke-direct {v4, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-direct {v4, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeClipPath;

    invoke-direct {v4, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeClipPath;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    goto :goto_2

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeClip;

    invoke-direct {v4, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeClip;-><init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    :goto_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private saveAttributeToSPR(Ljava/io/DataOutputStream;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyAttribute(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;F)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/16 v3, 0x20

    const/high16 v4, 0x437f0000    # 255.0f

    if-eq v2, v3, :cond_4

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    const/16 v3, 0x61

    if-eq v2, v3, :cond_0

    const/16 v3, 0x25

    if-eq v2, v3, :cond_0

    const/16 v3, 0x26

    if-eq v2, v3, :cond_0

    const/16 v3, 0x28

    if-eq v2, v3, :cond_0

    const/16 v3, 0x29

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "is not supported type"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    :goto_2
    mul-float/2addr v4, p3

    float-to-int v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_6
    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeClipPath;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeClipPath;->link:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getReference(I)Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-byte v2, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mType:B

    if-eq v2, v3, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    goto/16 :goto_0

    :cond_7
    check-cast v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    iget v3, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->left:F

    iget v4, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->top:F

    iget v5, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->right:F

    iget v6, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;->bottom:F

    goto :goto_5

    :cond_8
    check-cast v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto/16 :goto_0

    :cond_9
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    check-cast v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;

    iget v4, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->left:F

    iget v5, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->top:F

    iget v6, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->right:F

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeEllipse;->bottom:F

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_4

    :cond_a
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    check-cast v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeCircle;

    iget v3, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeCircle;->cx:F

    iget v4, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeCircle;->cy:F

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeCircle;->cr:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :goto_4
    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_0

    :cond_b
    check-cast v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeClip;

    iget v3, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeClip;->left:F

    iget v4, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeClip;->top:F

    iget v5, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeClip;->right:F

    iget v6, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeClip;->bottom:F

    :goto_5
    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public clearShadowLayer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    return-void
.end method

.method public clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
    .locals 4

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    iget-object v3, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    :cond_2
    iget v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->alpha:F

    iput v1, v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->alpha:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->clone()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract draw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Canvas;FFF)V
.end method

.method public finalize()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->loadAttributeFromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    return-void
.end method

.method public getIntrinsic()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getSPRSize()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    invoke-virtual {v2}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getTotalAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract getTotalElementCount()I
.end method

.method public abstract getTotalSegmentCount()I
.end method

.method public preDraw(Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    .locals 7

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    iget-boolean v5, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    iget-object v6, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public preDraw(Lcom/samsung/android/spr/drawable/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;)V
    .locals 0

    iput-boolean p4, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    iput-boolean p5, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    iput-object p6, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/Paint;

    if-eqz p2, :cond_0

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    :goto_0
    move-object p2, p1

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_4

    new-instance p1, Landroid/graphics/Paint;

    if-eqz p3, :cond_3

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_5
    :goto_1
    move-object p3, p1

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->applyPreAttribute(Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    :cond_6
    iput-object p3, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public removeAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setShadowLayer()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleFill:Z

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->radius:F

    iget-boolean v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v0, v1

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    sub-float/2addr v0, v1

    const v1, 0x3f13cd36

    div-float/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->fillPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->shadow:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;

    iget v3, v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dx:F

    iget v4, v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dy:F

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->isVisibleStroke:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->radius:F

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->strokePaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dx:F

    iget v4, v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->dy:F

    iget v0, v0, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeShadow;->shadowColor:I

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_4
    :goto_1
    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->saveAttributeToSPR(Ljava/io/DataOutputStream;)V

    return-void
.end method
