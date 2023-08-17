.class public final Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J0\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J0\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J0\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J0\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\tH\u0002J\u0010\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u0006H\u0002J\u001a\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u001a\u0010#\u001a\u0004\u0018\u00010!2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u001a\u0010$\u001a\u0004\u0018\u00010!2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u001a\u0010%\u001a\u0004\u0018\u00010!2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u0016\u0010&\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001bJ \u0010&\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\tH\u0007J(\u0010&\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0004H\u0007J.\u0010&\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\tJ(\u0010&\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\tH\u0007J \u0010&\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010(\u001a\u0004\u0018\u00010\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;",
        "",
        "()V",
        "DEBUG",
        "",
        "TAG",
        "",
        "mAnimationMap",
        "Landroid/util/ArrayMap;",
        "",
        "Landroid/animation/AnimatorSet;",
        "addTranslationXAnimator",
        "",
        "view",
        "Landroid/view/View;",
        "animatorSet",
        "pivotType",
        "diff",
        "",
        "targetAngle",
        "addTranslationYAnimator",
        "addXAnimator",
        "addYAnimator",
        "convertStartAngle",
        "startAngle",
        "createRotateAnimation",
        "change",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;",
        "hideAnimation",
        "animationType",
        "debugLog",
        "content",
        "getTranslationX",
        "Landroid/animation/ValueAnimator;",
        "target",
        "getTranslationY",
        "getX",
        "getY",
        "setRotation",
        "animationMode",
        "description",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final mAnimationMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->mAnimationMap:Landroid/util/ArrayMap;

    const-string v0, "BARotationView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMAnimationMap$p()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->mAnimationMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private final addTranslationXAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;IFF)V
    .locals 6

    and-int/lit8 v0, p3, 0x4

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    cmpg-float p3, p5, v2

    if-nez p3, :cond_0

    move p3, v4

    goto :goto_0

    :cond_0
    move p3, v5

    :goto_0
    if-nez p3, :cond_2

    cmpg-float p3, p5, v1

    if-nez p3, :cond_1

    move p3, v4

    goto :goto_1

    :cond_1
    move p3, v5

    :goto_1
    if-eqz p3, :cond_3

    :cond_2
    neg-float p3, p4

    move v3, p3

    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->getTranslationX(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_5

    :cond_4
    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_9

    cmpg-float p3, p5, v2

    if-nez p3, :cond_5

    move p3, v4

    goto :goto_2

    :cond_5
    move p3, v5

    :goto_2
    if-nez p3, :cond_8

    cmpg-float p3, p5, v1

    if-nez p3, :cond_6

    move p3, v4

    goto :goto_3

    :cond_6
    move p3, v5

    :goto_3
    if-eqz p3, :cond_7

    goto :goto_4

    :cond_7
    move p4, v3

    :cond_8
    :goto_4
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->getTranslationX(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object p1

    move v3, p4

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "transX - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->debugLog(Ljava/lang/String;)V

    new-array p3, v4, [Landroid/animation/Animator;

    aput-object p1, p3, v5

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_a
    return-void
.end method

.method private final addTranslationYAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;IFF)V
    .locals 6

    and-int/lit8 v0, p3, 0x1

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    cmpg-float p3, p5, v2

    if-nez p3, :cond_0

    move p3, v5

    goto :goto_0

    :cond_0
    move p3, v4

    :goto_0
    if-nez p3, :cond_3

    cmpg-float p3, p5, v1

    if-nez p3, :cond_1

    move p3, v5

    goto :goto_1

    :cond_1
    move p3, v4

    :goto_1
    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move p4, v3

    :cond_3
    :goto_2
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->getTranslationY(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object p1

    move v3, p4

    goto :goto_5

    :cond_4
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_9

    cmpg-float p3, p5, v2

    if-nez p3, :cond_5

    move p3, v5

    goto :goto_3

    :cond_5
    move p3, v4

    :goto_3
    if-nez p3, :cond_7

    cmpg-float p3, p5, v1

    if-nez p3, :cond_6

    move p3, v5

    goto :goto_4

    :cond_6
    move p3, v4

    :goto_4
    if-eqz p3, :cond_8

    :cond_7
    neg-float p3, p4

    move v3, p3

    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->getTranslationY(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "transY - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->debugLog(Ljava/lang/String;)V

    new-array p3, v5, [Landroid/animation/Animator;

    aput-object p1, p3, v4

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_a
    return-void
.end method

.method private final addXAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;IFF)V
    .locals 5

    and-int/lit8 v0, p3, 0x4

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    cmpg-float p3, p5, v2

    if-nez p3, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v4

    :goto_0
    if-nez p3, :cond_3

    cmpg-float p3, p5, v1

    if-nez p3, :cond_1

    move p3, v3

    goto :goto_1

    :cond_1
    move p3, v4

    :goto_1
    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p3

    neg-float p3, p3

    goto :goto_3

    :cond_3
    :goto_2
    neg-float p3, p4

    :goto_3
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->getX(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_7

    :cond_4
    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_9

    cmpg-float p3, p5, v2

    if-nez p3, :cond_5

    move p3, v3

    goto :goto_4

    :cond_5
    move p3, v4

    :goto_4
    if-nez p3, :cond_8

    cmpg-float p3, p5, v1

    if-nez p3, :cond_6

    move p3, v3

    goto :goto_5

    :cond_6
    move p3, v4

    :goto_5
    if-eqz p3, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type android.view.View"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p4

    sub-float p4, p3, p4

    :cond_8
    :goto_6
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->getX(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object p1

    move p3, p4

    goto :goto_7

    :cond_9
    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_7
    if-eqz p1, :cond_a

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "X - "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->debugLog(Ljava/lang/String;)V

    new-array p3, v3, [Landroid/animation/Animator;

    aput-object p1, p3, v4

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_a
    return-void
.end method

.method private final addYAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;IFF)V
    .locals 6

    and-int/lit8 v0, p3, 0x1

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    cmpg-float p3, p5, v2

    if-nez p3, :cond_0

    move p3, v5

    goto :goto_0

    :cond_0
    move p3, v4

    :goto_0
    if-nez p3, :cond_3

    cmpg-float p3, p5, v1

    if-nez p3, :cond_1

    move p3, v5

    goto :goto_1

    :cond_1
    move p3, v4

    :goto_1
    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move p4, v3

    :cond_3
    :goto_2
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->getY(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object p1

    move v3, p4

    goto :goto_5

    :cond_4
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_9

    cmpg-float p3, p5, v2

    if-nez p3, :cond_5

    move p3, v5

    goto :goto_3

    :cond_5
    move p3, v4

    :goto_3
    if-nez p3, :cond_7

    cmpg-float p3, p5, v1

    if-nez p3, :cond_6

    move p3, v5

    goto :goto_4

    :cond_6
    move p3, v4

    :goto_4
    if-eqz p3, :cond_8

    :cond_7
    neg-float p3, p4

    move v3, p3

    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->getY(Landroid/view/View;F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Y - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->debugLog(Ljava/lang/String;)V

    new-array p3, v5, [Landroid/animation/Animator;

    aput-object p1, p3, v4

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_a
    return-void
.end method

.method private final convertStartAngle(FF)F
    .locals 2

    sub-float/2addr p2, p1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    neg-float p2, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2

    const/high16 p2, 0x43b40000    # 360.0f

    if-eqz v0, :cond_1

    sub-float/2addr p1, p2

    goto :goto_1

    :cond_1
    add-float/2addr p1, p2

    :cond_2
    :goto_1
    return p1
.end method

.method private final createRotateAnimation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZI)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "get requested size!"

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->debugLog(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    move v0, v2

    :cond_0
    if-lez v3, :cond_1

    move v1, v3

    :cond_1
    const/4 v8, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_4

    :cond_2
    const-string/jumbo v2, "zero size view!"

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v8}, Landroid/view/View;->measure(II)V

    if-nez v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_4
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;->getTargetAngle()I

    move-result v2

    int-to-float v9, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRotation()F

    move-result v2

    invoke-direct {p0, v2, v9}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->convertStartAngle(FF)F

    move-result v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotation fr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->debugLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "w/h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->debugLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/constructor/AndroidInstanceConstructor;->makeAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v12

    if-eqz p4, :cond_5

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0xc8

    :goto_0
    invoke-virtual {v12, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v13, v0, v1

    const-string v0, "animatorSet"

    const/4 v14, 0x1

    move/from16 v1, p5

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    if-ne v1, v14, :cond_6

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v3, p3

    move v4, v13

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->addXAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;IFF)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->addYAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;IFF)V

    goto :goto_1

    :cond_6
    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v3, p3

    move v4, v13

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->addTranslationXAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;IFF)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->addTranslationYAnimator(Landroid/view/View;Landroid/animation/AnimatorSet;IFF)V

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v10, v0, v8

    aput v9, v0, v14

    const-string v1, "rotation"

    invoke-static {v7, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v0, v1, v8

    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView$createRotateAnimation$1;

    invoke-direct {v0, v7}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView$createRotateAnimation$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->mAnimationMap:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private final debugLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final getTranslationX(Landroid/view/View;F)Landroid/animation/ValueAnimator;
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->isRTLMode()Z

    move-result v0

    if-eqz v0, :cond_0

    neg-float p2, p2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p2, v1, v0

    const-string/jumbo p2, "translationX"

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getTranslationY(Landroid/view/View;F)Landroid/animation/ValueAnimator;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p2, v1, v0

    const-string/jumbo p2, "translationY"

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getX(Landroid/view/View;F)Landroid/animation/ValueAnimator;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr p2, v0

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p2, v1, v0

    const-string/jumbo p2, "x"

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getY(Landroid/view/View;F)Landroid/animation/ValueAnimator;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p2, v0

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p2, v1, v0

    const-string/jumbo p2, "y"

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static final setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "change"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZ)V

    return-void
.end method

.method public static final setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;II)V
    .locals 7
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "change"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZI)V

    return-void
.end method

.method public static final setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZ)V
    .locals 7
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "change"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZI)V

    return-void
.end method


# virtual methods
.method public final setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "change"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rotation without pivot type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->debugLog(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZI)V

    return-void
.end method

.method public final setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZI)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "change"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->mAnimationMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->createRotateAnimation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZI)V

    return-void
.end method

.method public final setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "change"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rotation without pivot type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->debugLog(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;->getTargetAngle()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rotation - show description"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rotation - hide description"

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->hashCode()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->debugLog(Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZ)V

    return-void
.end method
