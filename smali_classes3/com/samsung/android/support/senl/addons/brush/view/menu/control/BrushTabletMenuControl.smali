.class public final Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;
.super Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000b\u001a\u00020\u0005H\u0002J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\u0005H\u0016J\u0008\u0010\u0011\u001a\u00020\u0005H\u0004J\u0008\u0010\u0012\u001a\u00020\u0005H\u0004\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;",
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;",
        "prev",
        "(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V",
        "disableSmartTipPopup",
        "",
        "getBrushLayoutInfo",
        "Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;",
        "loadColorMenuPosition",
        "",
        "loadPenMenuPosition",
        "saveMenuPosition",
        "setMenuInfo",
        "",
        "info",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "setSmartTipPopup",
        "showSmartTipForPenView",
        "updateSmartTipForPenView",
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
.field private static final BRUSH_V6:Ljava/lang/String; = "_brush_v6"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COLOR_MENU_POSITION:Ljava/lang/String; = "COLOR_MENU_POSITION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PEN_MENU_POSITION:Ljava/lang/String; = "PEN_MENU_POSITION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;->setSmartTipPopup$lambda-0(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;)V

    return-void
.end method

.method private final loadColorMenuPosition()I
    .locals 3

    const-string v0, "_brush_v6"

    const-string v1, "COLOR_MENU_POSITION"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private final loadPenMenuPosition()I
    .locals 3

    const-string v0, "_brush_v6"

    const-string v1, "PEN_MENU_POSITION"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private final saveMenuPosition()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMBrushMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result v0

    const-string v1, "_brush_v6"

    const-string v2, "COLOR_MENU_POSITION"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMBrushMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v0

    const-string v2, "PEN_MENU_POSITION"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static final setSmartTipPopup$lambda-0(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMTipPopup()Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;->updateSmartTipForPenView()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;->showSmartTipForPenView()V

    return-void
.end method


# virtual methods
.method public disableSmartTipPopup()V
    .locals 2

    const-string v0, "BrushMenuSmartTip"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->setSmartTipsPreference(Ljava/lang/String;I)V

    return-void
.end method

.method public getBrushLayoutInfo()Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->style:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penViewType:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->moveable:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->isOpened:Z

    const v1, 0x3f133333    # 0.575f

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penWidthRatio:F

    const v1, 0x3e11eb85    # 0.1425f

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penHeightRatio:F

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;->loadPenMenuPosition()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->penAlign:I

    const v2, 0x3eca3d71    # 0.395f

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->colorWidthRatio:F

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->colorHeightRatio:F

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;->loadColorMenuPosition()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->colorAlign:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;->spaceRatio:F

    return-object v0
.end method

.method public setMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)Z
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->setMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;->saveMenuPosition()V

    :cond_1
    return p1
.end method

.method public setSmartTipPopup()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lx3/f;

    invoke-direct {v1, p0}, Lx3/f;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showSmartTipForPenView()V
    .locals 4

    const-string v0, "BrushMenuSmartTip"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->getSmartTipsPreference(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :try_start_0
    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->setMTipPopup(Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMTipPopup()Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lcom/samsung/android/support/senl/addons/R$string;->brush_menu_smart_tip:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMTipPopup()Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lcom/samsung/android/support/senl/addons/R$color;->brush_smart_tip_text:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setMessageTextColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMTipPopup()Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lcom/samsung/android/support/senl/addons/R$color;->brush_smart_tip_background:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMTipPopup()Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setExpanded(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;->updateSmartTipForPenView()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMTipPopup()Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->show(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;->disableSmartTipPopup()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final updateSmartTipForPenView()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v4, v3, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMBrushMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMBrushMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/2addr v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    add-int/2addr v4, v5

    const/4 v2, 0x1

    aget v2, v3, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMBrushMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMBrushMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    sget v1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_smart_tip_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMTipPopup()Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setTargetPosition(II)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getMTipPopup()Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->update()V

    return-void
.end method
