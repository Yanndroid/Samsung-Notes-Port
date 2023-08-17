.class public Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARROW_SIZE_BIG:I = 0x2

.field public static final ARROW_SIZE_NORMAL:I = 0x0

.field public static final ARROW_SIZE_SMALL:I = 0x1

.field public static final ARROW_TYPE_ARROW:I = 0x1

.field public static final ARROW_TYPE_DIAMOND_ARROW:I = 0x4

.field public static final ARROW_TYPE_NONE:I = 0x0

.field public static final ARROW_TYPE_OPEN_ARROW:I = 0x2

.field public static final ARROW_TYPE_OVAL_ARROW:I = 0x5

.field public static final ARROW_TYPE_STEALTH_ARROW:I = 0x3

.field public static final CAP_TYPE_BUTT:I = 0x0

.field public static final CAP_TYPE_ROUND:I = 0x1

.field public static final CAP_TYPE_SQUARE:I = 0x2

.field public static final COMPOUND_TYPE_DOUBLE:I = 0x1

.field public static final COMPOUND_TYPE_SIMPLE:I = 0x0

.field public static final COMPOUND_TYPE_THICK_THIN:I = 0x2

.field public static final COMPOUND_TYPE_THIN_THICK:I = 0x3

.field public static final COMPOUND_TYPE_TRIPLE:I = 0x4

.field public static final DASH_TYPE_DASH:I = 0x3

.field public static final DASH_TYPE_DASH_DOT:I = 0x4

.field public static final DASH_TYPE_LONG_DASH:I = 0x5

.field public static final DASH_TYPE_LONG_DASH_DOT:I = 0x6

.field public static final DASH_TYPE_LONG_DASH_DOT_DOT:I = 0x7

.field public static final DASH_TYPE_ROUND_DOT:I = 0x1

.field public static final DASH_TYPE_SOLID:I = 0x0

.field public static final DASH_TYPE_SQUARE_DOT:I = 0x2

.field public static final JOIN_TYPE_BEVEL:I = 0x2

.field public static final JOIN_TYPE_MITER:I = 0x0

.field public static final JOIN_TYPE_ROUND:I = 0x1


# instance fields
.field private mBeginArrowSize:I

.field private mBeginArrowType:I

.field private mCapType:I

.field private mCompoundType:I

.field private mDashType:I

.field private mEndArrowSize:I

.field private mEndArrowType:I

.field private mJoinType:I

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mWidth:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mCompoundType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mBeginArrowType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mBeginArrowSize:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mJoinType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mEndArrowType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mEndArrowSize:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mCapType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mDashType:I

    return-void
.end method


# virtual methods
.method public getBeginArrowSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mBeginArrowSize:I

    return v0
.end method

.method public getBeginArrowType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mBeginArrowType:I

    return v0
.end method

.method public getCapType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mCapType:I

    return v0
.end method

.method public getCompoundType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mCompoundType:I

    return v0
.end method

.method public getDashType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mDashType:I

    return v0
.end method

.method public getEndArrowSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mEndArrowSize:I

    return v0
.end method

.method public getEndArrowType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mEndArrowType:I

    return v0
.end method

.method public getJoinType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mJoinType:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mWidth:F

    return v0
.end method

.method public setBeginArrow(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mBeginArrowType:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mBeginArrowSize:I

    return-void
.end method

.method public setCapType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mCapType:I

    return-void
.end method

.method public setCompoundType(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Type is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mCompoundType:I

    return-void
.end method

.method public setDashType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mDashType:I

    return-void
.end method

.method public setEndArrow(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mEndArrowType:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mEndArrowSize:I

    return-void
.end method

.method public setJoinType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mJoinType:I

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenLineStyleEffect;->mWidth:F

    return-void
.end method
