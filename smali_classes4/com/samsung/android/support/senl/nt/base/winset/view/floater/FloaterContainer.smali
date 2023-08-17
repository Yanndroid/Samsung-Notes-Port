.class public Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;
    }
.end annotation


# instance fields
.field private mElevation:F

.field private mFloaters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mTouchDownedFloaterIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mTouchDownedFloaterIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mElevation:F

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mTouchDownedFloaterIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mElevation:F

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mTouchDownedFloaterIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mElevation:F

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mTouchDownedFloaterIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mElevation:F

    invoke-direct {p0, p2, p3, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mTouchDownedFloaterIndex:I

    return-void
.end method

.method private applyAttributes(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->giveIdIfNone(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->applyElevationToChild(Landroid/view/View;)V

    return-void
.end method

.method private applyElevationToChild(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mElevation:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->checkOutBounds(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->getFloater()Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;

    move-result-object p0

    return-object p0
.end method

.method private checkOutBounds(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;->getEnabledDocking()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;->dropAction()V

    :cond_1
    return-void
.end method

.method private findFloaterAt(FF)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;

    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;->contains(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFloater()Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mTouchDownedFloaterIndex:I

    if-ltz v1, :cond_1

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private giveIdIfNone(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    return-void
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 4

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer$FloaterGestureListener;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/a;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/R$styleable;->FloaterContainer:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/base/R$styleable;->FloaterContainer_floaterElevation:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mElevation:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addFloater(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->applyAttributes(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->applyAttributes(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->applyAttributes(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->applyAttributes(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->applyAttributes(Landroid/view/View;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->findFloaterAt(FF)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->getFloater()Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->checkOutBounds(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;)V

    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mTouchDownedFloaterIndex:I

    :cond_2
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->mFloaters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/IFloater;->onFieldSizeChanged()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
