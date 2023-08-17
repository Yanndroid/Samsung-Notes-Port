.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V",
        "perform",
        "",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;",
        "setLayoutRect",
        "id",
        "",
        "rect",
        "Landroid/graphics/Rect;",
        "statusBar",
        "Companion",
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
.field private static final BINDING_ID_ON_LAYOUT_CHANGE:Ljava/lang/String; = "onLayoutChange"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel$Companion;

    const-string v0, "BrushMenuHideViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    return-void
.end method


# virtual methods
.method public perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 11
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getBindId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "onLayoutChange"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mView:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mLeft:I

    iget v4, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mTop:I

    iget v5, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mRight:I

    iget v6, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mBottom:I

    iget v7, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldLeft:I

    iget v8, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldTop:I

    iget v9, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldRight:I

    iget v10, v0, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldBottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V

    return-void
.end method

.method public final setLayoutRect(ILandroid/graphics/Rect;I)V
    .locals 6
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->getViewPositionInWindow()[I

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget v3, p2, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    aput v3, v1, v4

    iget v3, p2, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    aput v3, v1, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {v2, v4, v4, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    aget p2, v1, v4

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v3, v0, v4

    sub-int/2addr p2, v3

    aget v1, v1, v5

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    aget v0, v0, v5

    sub-int/2addr v1, v0

    add-int/2addr v1, p3

    invoke-virtual {v2, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->getMHideAnimationArray()Landroid/util/SparseArray;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;

    const-string p3, " : "

    if-nez p2, :cond_1

    new-instance p2, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;

    invoke-direct {p2, v2, v4}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;-><init>(Landroid/graphics/Rect;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->getMHideAnimationArray()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLayoutRect : create - "

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->setLayoutRect(Landroid/graphics/Rect;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLayoutRect : update - "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
