.class public final Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nH\u0002J\u001e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cJ\u001e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010J(\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0004J \u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000cH\u0002J(\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;",
        "",
        "()V",
        "mLastEvent",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;",
        "onShow",
        "",
        "view",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;",
        "target",
        "Landroid/view/View;",
        "type",
        "",
        "resetTranslation",
        "rotate",
        "hideAnimation",
        "",
        "setHeight",
        "margin",
        "h",
        "setRotationEvent",
        "event",
        "setSize",
        "w",
        "setWidth",
        "updateSize",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate$Companion;

    const-string v0, "RotationDelegate"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->setWidth$lambda-0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->setHeight$lambda-1(Landroid/view/View;)V

    return-void
.end method

.method private final resetTranslation(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private final setHeight(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;III)V
    .locals 3

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_1

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_0

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHeight - set bottom Margin: "

    :goto_0
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHeight - set top Margin: "

    goto :goto_0

    :cond_1
    :goto_1
    iput p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/view/popup/d;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/d;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private static final setHeight$lambda-1(Landroid/view/View;)V
    .locals 1

    const-string v0, "$target"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private final setSize(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;II)V
    .locals 2

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->resetTranslation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final setWidth(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;III)V
    .locals 3

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_1

    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWidth - set end Margin: "

    :goto_0
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWidth - set start Margin: "

    goto :goto_0

    :cond_1
    :goto_1
    iput p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/view/popup/c;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/c;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private static final setWidth$lambda-0(Landroid/view/View;)V
    .locals 1

    const-string v0, "$target"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private final updateSize(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;->getTargetAngle()I

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;->getTargetAngle()I

    move-result v3

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v3, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    invoke-direct {v0, v4}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->resetTranslation(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;->getHorizontalMargin()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v10, v5

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;->getVerticalMargin()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v12}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eqz v8, :cond_1

    if-nez v11, :cond_2

    :cond_1
    move v11, v4

    move v8, v13

    :cond_2
    sub-int v14, v9, v10

    sub-int/2addr v14, v5

    sub-int v15, v3, v6

    sub-int/2addr v15, v7

    sget-object v12, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calc H bound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calc V bound : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bound : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-le v8, v14, :cond_4

    if-le v13, v15, :cond_3

    sub-int v0, v15, v14

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v0, v14, v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->setWidth(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;III)V

    goto :goto_2

    :cond_4
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    if-ge v13, v8, :cond_5

    if-le v13, v15, :cond_7

    :cond_5
    if-le v14, v13, :cond_6

    neg-int v0, v13

    goto :goto_1

    :cond_6
    sub-int v0, v15, v14

    move v13, v14

    :goto_1
    invoke-direct {v1, v3, v0, v13, v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->setWidth(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;III)V

    :cond_7
    :goto_2
    if-le v11, v15, :cond_9

    if-le v4, v14, :cond_8

    sub-int v12, v14, v15

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    :goto_3
    invoke-direct {v1, v3, v12, v15, v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->setHeight(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;III)V

    goto :goto_5

    :cond_9
    if-ne v4, v11, :cond_a

    if-le v4, v14, :cond_d

    :cond_a
    if-le v15, v4, :cond_b

    neg-int v12, v4

    goto :goto_4

    :cond_b
    if-le v15, v14, :cond_c

    sub-int v12, v14, v15

    move v4, v15

    goto :goto_4

    :cond_c
    move v4, v15

    const/4 v12, 0x0

    :goto_4
    invoke-direct {v1, v3, v12, v4, v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->setHeight(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;III)V

    :cond_d
    :goto_5
    return-void

    :cond_e
    :goto_6
    move-object v3, v1

    move-object v1, v0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "update size : reset!"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-direct {v1, v3, v0, v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->setSize(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;II)V

    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;->updatePosition()V

    return-void
.end method


# virtual methods
.method public final onShow(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->updateSize(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZ)V

    :cond_0
    return-void
.end method

.method public final onShow(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;Landroid/view/View;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "target"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShow : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {p2, p1, p3, v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZ)V

    :cond_0
    return-void
.end method

.method public final rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;->getTargetAngle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->updateSize(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v0, p2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;I)V

    :cond_0
    return-void
.end method

.method public final rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;IZ)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reLayout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;->getTargetAngle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->updateSize(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v0, p2, p3}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;IZ)V

    :cond_0
    return-void
.end method

.method public final rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;Landroid/view/View;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rotate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;->getTargetAngle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {p2, p1, p3, v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;II)V

    :cond_0
    return-void
.end method

.method public final setRotationEvent(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->mLastEvent:Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;

    return-void
.end method
