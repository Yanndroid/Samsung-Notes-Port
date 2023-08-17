.class public final Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/IPopupWindowProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;",
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/IPopupWindowProperties;",
        "activity",
        "Landroid/app/Activity;",
        "popupFlag",
        "",
        "(Landroid/app/Activity;I)V",
        "mCloseButton",
        "Landroid/view/View;",
        "mIsCloseEnabled",
        "",
        "mOffset",
        "addCustomCloseButton",
        "",
        "close",
        "dispatchTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "isCloseButtonTouched",
        "removeTransparentButton",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCloseButton:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsCloseEnabled:Z

.field private mOffset:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->Companion:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController$Companion;

    const-string v0, "PopupWindowController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mOffset:I

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->removeTransparentButton(Landroid/app/Activity;)V

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->addCustomCloseButton(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method private final addCustomCloseButton(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "close_window"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCustomCloseButton, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mCloseButton:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private final isCloseButtonTouched(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mCloseButton:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mOffset:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mCloseButton:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mCloseButton:Landroid/view/View;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mOffset:I

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mOffset:I

    neg-int v4, v2

    neg-int v2, v2

    iget-object v5, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mCloseButton:Landroid/view/View;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mOffset:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mCloseButton:Landroid/view/View;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mOffset:I

    add-int/2addr v6, v7

    invoke-direct {v0, v4, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aget v1, v3, v1

    const/4 v2, 0x1

    aget v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private final removeTransparentButton(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "trans_window"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTransparentButton, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mCloseButton:Landroid/view/View;

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->isCloseButtonTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mIsCloseEnabled:Z

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mIsCloseEnabled:Z

    move v1, v0

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mIsCloseEnabled:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->mIsCloseEnabled:Z

    :cond_3
    :goto_0
    return v1
.end method
