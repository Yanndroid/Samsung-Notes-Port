.class public final Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;",
        "",
        "()V",
        "getPivotByColorMenuAlign",
        "",
        "info",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "isColorPopupStartOrTop",
        "",
        "align",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPivotByColorMenuAlign(Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;->getPivotByColorMenuAlign(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$isColorPopupStartOrTop(Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;->isColorPopupStartOrTop(I)Z

    move-result p0

    return p0
.end method

.method private final getPivotByColorMenuAlign(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result p1

    const/16 v1, 0x9

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method private final isColorPopupStartOrTop(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
