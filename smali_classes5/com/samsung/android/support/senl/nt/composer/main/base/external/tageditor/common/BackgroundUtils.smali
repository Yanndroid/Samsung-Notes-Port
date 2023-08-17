.class public Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIM_AMOUNT_CLEAR:F = 0.0f

.field private static final DIM_AMOUNT_DEFAULT:F = 0.6f

.field private static mDimmed:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBackground(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;->mDimmed:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;->getDimAmount()F

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;->applyDimBackgroundInternal(Landroid/view/Window;F)V

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;->applyStatusbarDimBG(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method private static applyDimBackgroundInternal(Landroid/view/Window;F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private static applyStatusbarDimBG(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static clearDimBackgroundInternal(Landroid/view/Window;F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private static getDimAmount()F
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;->mDimmed:Z

    if-eqz v0, :cond_0

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static resetBackground(Landroid/view/Window;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;->mDimmed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;->mDimmed:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;->getDimAmount()F

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/common/BackgroundUtils;->clearDimBackgroundInternal(Landroid/view/Window;F)V

    :cond_0
    return-void
.end method
