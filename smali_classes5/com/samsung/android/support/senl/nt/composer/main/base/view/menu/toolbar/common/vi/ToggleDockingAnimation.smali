.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DAMPING_RATIO:F = 0.39f

.field private static final DEFAULT_STIFFNESS:I = 0x190

.field public static TAG:Ljava/lang/String;


# instance fields
.field private scaleAnimator:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;

.field private targetViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ToggleDockingAnimation"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->targetViewRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;)V

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$Contract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->scaleAnimator:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;

    return-void
.end method

.method private getDockingSize(Landroid/view/View;)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_hw_floating_menu_docking_toggle_btn_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method private getFloatingSize(Landroid/view/View;)F
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_hw_floating_menu_floating_toggle_btn_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    return p1
.end method

.method private getScaleFactor(FF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    mul-float/2addr p2, v0

    return p2
.end method

.method private scaleDown(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->getFloatingSize(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->getDockingSize(Landroid/view/View;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->getScaleFactor(FF)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->scaleAnimator:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;

    const/high16 v2, 0x43c80000    # 400.0f

    const v3, 0x3ec7ae14    # 0.39f

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->runScaleAnimation(Landroid/view/View;FFF)V

    return-void
.end method

.method private scaleUp(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->getDockingSize(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->getFloatingSize(Landroid/view/View;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->getScaleFactor(FF)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->scaleAnimator:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;

    const/high16 v2, 0x43c80000    # 400.0f

    const v3, 0x3ec7ae14    # 0.39f

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->runScaleAnimation(Landroid/view/View;FFF)V

    return-void
.end method


# virtual methods
.method public resetView(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->targetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->getDockingSize(Landroid/view/View;)F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->getFloatingSize(Landroid/view/View;)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public update(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->targetViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->scaleUp(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/ToggleDockingAnimation;->scaleDown(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
