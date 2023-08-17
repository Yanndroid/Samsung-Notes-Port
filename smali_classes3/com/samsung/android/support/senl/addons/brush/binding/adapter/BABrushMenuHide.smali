.class public final Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BABrushMenuHide;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BABrushMenuHide;",
        "",
        "()V",
        "runMenuHideAnimation",
        "",
        "view",
        "Landroid/view/View;",
        "viewAnimation",
        "Landroid/util/SparseArray;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;",
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
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BABrushMenuHide;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BABrushMenuHide;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BABrushMenuHide;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BABrushMenuHide;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BABrushMenuHide;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runMenuHideAnimation(Landroid/view/View;Landroid/util/SparseArray;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    if-eqz v4, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    return-void

    :cond_3
    check-cast v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getColorView()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    move-result-object p1

    const-string v1, "containerView as SpenSettingBrushLayout).colorView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAViewHideAnimation;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAViewHideAnimation;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->getAnimationType()I

    move-result v1

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAViewHideAnimation;->runAnimation(Landroid/view/View;I)V

    :cond_4
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAViewHideAnimation;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAViewHideAnimation;

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->getAnimationType()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAViewHideAnimation;->runAnimation(Landroid/view/View;I)V

    :cond_5
    :goto_2
    return-void
.end method
