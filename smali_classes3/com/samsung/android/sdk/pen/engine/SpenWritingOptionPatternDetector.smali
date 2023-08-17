.class public Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;,
        Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$Listener;
    }
.end annotation


# static fields
.field private static final PATTERN_EXPIRED_TIME:J = 0x1770L

.field private static final TAG:Ljava/lang/String; = "OptionPatternDetector"

.field private static mPattern:[Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;


# instance fields
.field private mListener:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$Listener;

.field private final mPatternMatchingData:[Z

.field private final mPatternStartTime:[J

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->LeftTop:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->Right:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->Top:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->Left:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    const/4 v5, 0x3

    aput-object v4, v0, v5

    sget-object v5, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->RightBottom:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    const/4 v6, 0x4

    aput-object v5, v0, v6

    sget-object v6, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->Center:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    const/4 v7, 0x5

    aput-object v6, v0, v7

    sget-object v7, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->LeftBottom:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    const/4 v8, 0x6

    aput-object v7, v0, v8

    sget-object v8, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->Bottom:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    const/4 v9, 0x7

    aput-object v8, v0, v9

    sget-object v9, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->RightTop:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    const/16 v10, 0x8

    aput-object v9, v0, v10

    const/16 v10, 0x9

    aput-object v1, v0, v10

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v4, v0, v1

    const/16 v1, 0xd

    aput-object v5, v0, v1

    const/16 v1, 0xe

    aput-object v6, v0, v1

    const/16 v1, 0xf

    aput-object v7, v0, v1

    const/16 v1, 0x10

    aput-object v8, v0, v1

    const/16 v1, 0x11

    aput-object v9, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPattern:[Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPattern:[Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPatternMatchingData:[Z

    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPatternStartTime:[J

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mViewWidth:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mViewHeight:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$Listener;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method


# virtual methods
.method public checkPatternElement(Landroid/view/MotionEvent;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mViewWidth:I

    int-to-double v3, v2

    const-wide v5, 0x3fd51eb851eb851fL    # 0.33

    mul-double/2addr v3, v5

    cmpg-double v3, v0, v3

    const-wide v7, 0x3fe51eb851eb851fL    # 0.66

    if-gez v3, :cond_2

    float-to-double v0, p1

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mViewHeight:I

    int-to-double v2, p1

    mul-double/2addr v2, v5

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->LeftTop:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    return-object p1

    :cond_0
    int-to-double v2, p1

    mul-double/2addr v2, v7

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->Left:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    return-object p1

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->LeftBottom:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    return-object p1

    :cond_2
    int-to-double v2, v2

    mul-double/2addr v2, v7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    float-to-double v0, p1

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mViewHeight:I

    int-to-double v2, p1

    mul-double/2addr v2, v5

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->Top:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    return-object p1

    :cond_3
    int-to-double v2, p1

    mul-double/2addr v2, v7

    cmpg-double p1, v0, v2

    if-gez p1, :cond_4

    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->Center:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    return-object p1

    :cond_4
    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->Bottom:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    return-object p1

    :cond_5
    float-to-double v0, p1

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mViewHeight:I

    int-to-double v2, p1

    mul-double/2addr v2, v5

    cmpg-double v2, v0, v2

    if-gez v2, :cond_6

    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->RightTop:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    return-object p1

    :cond_6
    int-to-double v2, p1

    mul-double/2addr v2, v7

    cmpg-double p1, v0, v2

    if-gez p1, :cond_7

    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->Right:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    return-object p1

    :cond_7
    sget-object p1, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;->RightBottom:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    return-object p1
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$Listener;

    return-void
.end method

.method public matchPattern(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;)Z
    .locals 9

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPattern:[Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPatternMatchingData:[Z

    add-int/lit8 v4, v0, -0x1

    aget-boolean v5, v3, v4

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPattern:[Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    aget-object v5, v5, v0

    if-ne p1, v5, :cond_0

    move v2, v1

    :cond_0
    aput-boolean v2, v3, v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPatternStartTime:[J

    aget-wide v3, v2, v4

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPattern:[Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    array-length v0, v0

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPatternStartTime:[J

    aput-wide v3, v0, v2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPatternMatchingData:[Z

    sget-object v6, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mPattern:[Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    aget-object v7, v6, v2

    if-ne p1, v7, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    aput-boolean p1, v5, v2

    array-length p1, v6

    sub-int/2addr p1, v1

    aget-wide v7, v0, p1

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x1770

    cmp-long p1, v3, v7

    if-gez p1, :cond_3

    array-length p1, v6

    sub-int/2addr p1, v1

    aget-boolean p1, v5, p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1

    :cond_4
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->checkPatternElement(Landroid/view/MotionEvent;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->matchPattern(Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$PatternElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$Listener;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$Listener;->onPatternMatched()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setViewSize(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mViewWidth:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector;->mViewHeight:I

    return-void
.end method
