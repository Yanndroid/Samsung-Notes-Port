.class public final Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0019\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0016R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\nR\u0014\u0010\u0015\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "layout",
        "Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;",
        "isOpen",
        "",
        "(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;Z)V",
        "colorAlign",
        "",
        "getColorAlign",
        "()I",
        "colorRect",
        "Landroid/graphics/Rect;",
        "getColorRect",
        "()Landroid/graphics/Rect;",
        "mColorAlign",
        "mColorRect",
        "mPenAlign",
        "mPenRect",
        "penAlign",
        "getPenAlign",
        "penRect",
        "getPenRect",
        "isEquals",
        "info",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PEN_ITEM_RATIO:F = 0.244f

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mColorAlign:I

.field private final mColorRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPenAlign:I

.field private final mPenRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo$Companion;

    const-string v0, "BrushMenuInfo"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;Z)V
    .locals 6
    .param p1    # Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mPenRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mColorRect:Landroid/graphics/Rect;

    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mPenAlign:I

    iput v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mColorAlign:I

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getPenRect(Landroid/graphics/Rect;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getPenAlign()I

    move-result p2

    const/4 v4, 0x1

    if-eq p2, v4, :cond_3

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    const v2, 0x3e79db23    # 0.244f

    if-nez p2, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v2

    float-to-int p2, p2

    iput p2, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget p2, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    sub-int/2addr p2, v2

    iput p2, v3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_3
    iget p2, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3f418937    # 0.756f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr p2, v2

    iput p2, v3, Landroid/graphics/Rect;->top:I

    :cond_4
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getColorRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getPenAlign()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mPenAlign:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getColorAlign()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mColorAlign:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getColorView()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BrushMenuInfo. rect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", align: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mPenAlign:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mColorAlign:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visibility: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getColorAlign()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mColorAlign:I

    return v0
.end method

.method public getColorRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mColorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPenAlign()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mPenAlign:I

    return v0
.end method

.method public getPenRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mPenRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isEquals(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mPenRect:Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mColorRect:Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mPenAlign:I

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;->mColorAlign:I

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result p1

    if-ne v1, p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method
