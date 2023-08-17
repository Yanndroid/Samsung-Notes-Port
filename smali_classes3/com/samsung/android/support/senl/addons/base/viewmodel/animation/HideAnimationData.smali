.class public Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\n\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0005R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation;",
        "rect",
        "Landroid/graphics/Rect;",
        "isRun",
        "",
        "(Landroid/graphics/Rect;Z)V",
        "mHideAnimation",
        "mLayoutRect",
        "getAnimationType",
        "",
        "getLayoutRect",
        "getRunAnimation",
        "setLayoutRect",
        "",
        "setRunAnimation",
        "animation",
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


# instance fields
.field private mHideAnimation:Z

.field private mLayoutRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->mLayoutRect:Landroid/graphics/Rect;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->mHideAnimation:Z

    return-void
.end method


# virtual methods
.method public getAnimationType()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->mHideAnimation:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation;->Companion:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;->getTYPE_ANIMATION_HIDE()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation;->Companion:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/IMenuHideAnimation$Companion;->getTYPE_ANIMATION_SHOW()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLayoutRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->mLayoutRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRunAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->mHideAnimation:Z

    return v0
.end method

.method public final setLayoutRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->mLayoutRect:Landroid/graphics/Rect;

    return-void
.end method

.method public final setRunAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->mHideAnimation:Z

    return-void
.end method
