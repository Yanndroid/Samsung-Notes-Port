.class public Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 72\u00020\u0001:\u00017B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u0013H\u0014J\u0008\u0010\u0015\u001a\u00020\u0013H\u0014J\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001a\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\nJ\u001a\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u000bH\u0004J\u0010\u0010#\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u000bH\u0002J\u0012\u0010$\u001a\u00020\u00132\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0008\u0010%\u001a\u00020\u0013H\u0014J\u0010\u0010&\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010\'\u001a\u00020\u0013H\u0014JP\u0010(\u001a\u00020\u00132\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020,2\u0006\u0010/\u001a\u00020,2\u0006\u00100\u001a\u00020,2\u0006\u00101\u001a\u00020,2\u0006\u00102\u001a\u00020,2\u0006\u00103\u001a\u00020,H\u0016J\u0012\u00104\u001a\u00020\u00132\u0008\u00105\u001a\u0004\u0018\u000106H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0004R$\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\nX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "facade",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V",
        "mFacade",
        "getMFacade",
        "()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;",
        "setMFacade",
        "mHideAnimationArray",
        "Landroid/util/SparseArray;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;",
        "getMHideAnimationArray",
        "()Landroid/util/SparseArray;",
        "setMHideAnimationArray",
        "(Landroid/util/SparseArray;)V",
        "mPreTouchListener",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;",
        "clearModels",
        "",
        "closeCallbacks",
        "closeSubViewModels",
        "getData",
        "",
        "id",
        "",
        "getMenuHideAnimation",
        "hasTouchPosition",
        "",
        "rect",
        "Landroid/graphics/Rect;",
        "motionEvent",
        "Landroid/view/MotionEvent;",
        "isAvailableRunAnimation",
        "hideAnimationData",
        "isAvailableStopAnimation",
        "onActionCanceled",
        "onActionDown",
        "onActionMove",
        "onActionUp",
        "onLayoutChange",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "perform",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;",
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
.field private static final BINDING_ID_HIDE_MENU:Ljava/lang/String; = "menuHideAnimation"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mHideAnimationArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPreTouchListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->Companion:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$Companion;

    const-string v0, "MenuHideViewModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    new-instance p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$mPreTouchListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel$mPreTouchListener$1;-><init>(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mPreTouchListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mPreTouchListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->setPreTouchListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->perform$lambda-0(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;)V

    return-void
.end method

.method private final hasTouchPosition(Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isAvailableStopAnimation(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->getLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->getRunAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static final perform$lambda-0(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;)V
    .locals 11

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mView:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mLeft:I

    iget v4, p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mTop:I

    iget v5, p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mRight:I

    iget v6, p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mBottom:I

    iget v7, p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldLeft:I

    iget v8, p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldTop:I

    iget v9, p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldRight:I

    iget v10, p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mOldBottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->setPreTouchListener(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mPreTouchListener:Lcom/samsung/android/support/senl/addons/base/model/canvas/view/IPreTouchListener;

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method public closeCallbacks()V
    .locals 0

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "menuHideAnimation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->getMenuHideAnimation()Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getMFacade()Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    return-object v0
.end method

.method public final getMHideAnimationArray()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final getMenuHideAnimation()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final isAvailableRunAnimation(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hideAnimationData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->getLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->getLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->getRunAnimation()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onActionCanceled(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onActionDown()V
    .locals 0

    return-void
.end method

.method public onActionMove(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->isAvailableRunAnimation(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->getLayoutRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->hasTouchPosition(Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->setRunAnimation(Z)V

    const-string v2, "menuHideAnimation"

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onActionUp()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->isAvailableStopAnimation(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->setRunAnimation(Z)V

    const-string v3, "menuHideAnimation"

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [I

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iget-object p4, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p4}, Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;->getViewPositionInWindow()[I

    move-result-object p4

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 p5, 0x0

    aget p6, p2, p5

    iget p7, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p6, p7

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget p7, p4, p5

    sub-int/2addr p6, p7

    const/4 p7, 0x1

    aget p2, p2, p7

    iget p8, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p8

    aget p4, p4, p7

    sub-int/2addr p2, p4

    invoke-virtual {p3, p6, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget-object p4, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;

    const-string p4, " : "

    if-nez p2, :cond_1

    new-instance p2, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;

    invoke-direct {p2, p3, p5}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;-><init>(Landroid/graphics/Rect;Z)V

    iget-object p5, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p5, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onLayoutChange : create - "

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;->setLayoutRect(Landroid/graphics/Rect;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onLayoutChange : update - "

    :goto_0
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "action_layoutChange"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v1, Lv3/a;

    invoke-direct {v1, p0, p1}, Lv3/a;-><init>(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final setMFacade(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mFacade:Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;

    return-void
.end method

.method public final setMHideAnimationArray(Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/HideAnimationData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->mHideAnimationArray:Landroid/util/SparseArray;

    return-void
.end method
