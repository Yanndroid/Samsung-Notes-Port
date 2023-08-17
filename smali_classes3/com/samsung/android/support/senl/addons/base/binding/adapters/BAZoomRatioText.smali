.class public final Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;",
        "",
        "()V",
        "DELAY_TIME",
        "",
        "mZoomTextHandler",
        "Landroid/os/Handler;",
        "setZoomRatioText",
        "",
        "view",
        "Landroid/widget/TextView;",
        "value",
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
.field private static final DELAY_TIME:I = 0x3e8

.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mZoomTextHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;->setZoomRatioText$lambda-1(Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic b(Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;->setZoomRatioText$lambda-1$lambda-0(Landroid/widget/TextView;)V

    return-void
.end method

.method private static final setZoomRatioText$lambda-1(Landroid/widget/TextView;)V
    .locals 3

    const-string v0, "$view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/addons/R$integer;->base_editor_sub_menu_anim_duration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/binding/adapters/d;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/d;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static final setZoomRatioText$lambda-1$lambda-0(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "$view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public setZoomRatioText(Landroid/widget/TextView;I)V
    .locals 4
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/addons/R$string;->base_zoom_percent:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/16 p2, 0x25

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;->mZoomTextHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    sput-object p2, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;->mZoomTextHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    sget-object p2, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAZoomRatioText;->mZoomTextHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/c;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/c;-><init>(Landroid/widget/TextView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
