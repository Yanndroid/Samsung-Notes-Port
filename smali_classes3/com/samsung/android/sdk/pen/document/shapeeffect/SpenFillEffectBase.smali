.class public Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_COLOR:I = 0x1

.field public static final TYPE_IMAGE:I = 0x2

.field public static final TYPE_PATTERN:I = 0x3


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;->mType:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;->mType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Type is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createFillEffect(I)Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillImageEffect;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillColorEffect;-><init>()V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;->mType:I

    return v0
.end method
