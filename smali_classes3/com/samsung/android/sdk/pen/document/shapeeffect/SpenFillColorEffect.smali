.class public Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;
.super Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;,
        Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;
    }
.end annotation


# static fields
.field public static final COLOR_GRADIENT:I = 0x1

.field public static final COLOR_SOLID:I = 0x0

.field public static final GRADIENT_LINEAR:I = 0x0

.field public static final GRADIENT_PATH:I = 0x3

.field public static final GRADIENT_RADIAL:I = 0x1

.field public static final GRADIENT_RECTANGULAR:I = 0x2


# instance fields
.field private mAngle:I

.field private final mColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mColorType:I

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentId:I

.field private mGradientType:I

.field private mIsRotatable:Z

.field private mPosition:Landroid/graphics/PointF;

.field private mSolidColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mSolidColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mGradientType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mCurrentId:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mAngle:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mPosition:Landroid/graphics/PointF;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mIsRotatable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$1;-><init>(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mComparator:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->resetGradientColor()V

    new-instance v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;-><init>()V

    const v1, -0xffff01

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->color:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->position:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->appendGradientColor(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;)I

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->color:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->position:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->appendGradientColor(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;)I

    return-void
.end method

.method private getContainer(I)Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;

    iget v2, v1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;->id:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private newId()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mCurrentId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mCurrentId:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mCurrentId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mCurrentId:I

    return v0
.end method

.method private resetGradientColor()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public appendGradientColor(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;)I
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;-><init>(Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$1;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->newId()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;->id:I

    new-instance v1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;->color:Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;

    iget v2, p1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->color:I

    iput v2, v1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->color:I

    iget p1, p1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->position:F

    iput p1, v1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->position:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget p1, v0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;->id:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : Maximum count of gradient colors is 10"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "gradientColor is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColorType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorType:I

    return v0
.end method

.method public getGradientColor(I)Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->getContainer(I)Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;->color:Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "id does not exist"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGradientColorCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGradientColorId(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;

    iget p1, p1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;->id:I

    return p1
.end method

.method public getGradientPosition()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mPosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getGradientType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mGradientType:I

    return v0
.end method

.method public getLinearGradientAngle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mAngle:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mSolidColor:I

    return v0
.end method

.method public isGradientRotatable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mIsRotatable:Z

    return v0
.end method

.method public removeGradientColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->getContainer(I)Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientContainer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "E_INVALID_STATE : There are colors less than 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorType(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid color type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGradientColor(ILcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->getGradientColor(I)Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p2, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->color:I

    iput v0, p1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->color:I

    iget p2, p2, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->position:F

    iput p2, p1, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect$GradientColor;->position:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mColorList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGradientPosition(Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mPosition:Landroid/graphics/PointF;

    return-void
.end method

.method public setGradientRotatable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mIsRotatable:Z

    return-void
.end method

.method public setGradientType(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mGradientType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid gradient type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLinearGradientAngle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mAngle:I

    return-void
.end method

.method public setSolidColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;->mSolidColor:I

    return-void
.end method
