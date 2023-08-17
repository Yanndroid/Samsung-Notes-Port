.class Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Build_VERSION_CODES_P:I = 0x1c

.field private static TAG:Ljava/lang/String; = "PointerIconResolver"


# instance fields
.field private mBaseLocation:[I

.field private mPrevTargetViewId:I

.field private mTargetLocation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mBaseLocation:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mTargetLocation:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mPrevTargetViewId:I

    return-void
.end method

.method private contains(Landroid/view/View;II)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mTargetLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mTargetLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-gt v2, p2, :cond_0

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mTargetLocation:[I

    aget v0, p2, v3

    if-gt v0, p3, :cond_0

    aget p2, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    if-gt p3, p2, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method private needToResolvePointerIcon()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resolveTargetView(Landroid/view/View;II)Landroid/view/View;
    .locals 4

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->contains(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->resolveTargetView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p3

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->contains(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onResolvePointerIcon(Landroid/view/View;Landroid/view/MotionEvent;ILandroid/view/PointerIcon;)Landroid/view/PointerIcon;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->needToResolvePointerIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mBaseLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mBaseLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mBaseLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v1, v3

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->resolveTargetView(Landroid/view/View;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p4

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mPrevTargetViewId:I

    if-eq v0, p4, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetView :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mPrevTargetViewId:I

    :cond_0
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mTargetLocation:[I

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mBaseLocation:[I

    aget v0, p4, v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/pointericon/PointerIconResolver;->mTargetLocation:[I

    aget v2, v1, v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    aget p4, p4, v4

    aget v1, v1, v4

    sub-int/2addr p4, v1

    int-to-float p4, p4

    invoke-virtual {p2, v0, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p4
.end method
