.class public abstract Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 `2\u00020\u0001:\u0001`B\u0011\u0008\u0000\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010=\u001a\u00020>2\u0008\u0010?\u001a\u0004\u0018\u00010@J\u0008\u0010A\u001a\u00020>H\u0016J\u0008\u0010B\u001a\u00020>H\u0016J\n\u0010C\u001a\u0004\u0018\u00010DH&J\u0010\u0010E\u001a\u00020>2\u0008\u0010?\u001a\u0004\u0018\u00010@J\u001a\u0010F\u001a\u00020>2\u0006\u0010G\u001a\u00020H2\u0008\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u0010\u0010K\u001a\u00020>2\u0008\u0010L\u001a\u0004\u0018\u00010\u0008J\u000e\u0010M\u001a\u00020>2\u0006\u0010N\u001a\u00020\u0005J\u0010\u0010O\u001a\u00020>2\u0008\u0010P\u001a\u0004\u0018\u00010\nJ\u0012\u0010Q\u001a\u00020\u00052\u0008\u0010R\u001a\u0004\u0018\u00010\u000cH\u0014J\u0010\u0010S\u001a\u00020>2\u0008\u0010T\u001a\u0004\u0018\u00010\u0012J\u0008\u0010U\u001a\u00020>H\u0016J\u0018\u0010V\u001a\u00020>2\u0006\u0010W\u001a\u0002062\u0006\u0010X\u001a\u00020\u0005H\u0002J\u000e\u0010V\u001a\u00020>2\u0006\u0010X\u001a\u00020\u0005J\u0006\u0010Y\u001a\u00020>J\u000e\u0010Y\u001a\u00020>2\u0006\u0010Z\u001a\u00020:J\u000e\u0010Y\u001a\u00020>2\u0006\u0010W\u001a\u00020[J\u0018\u0010\\\u001a\u00020>2\u0008\u0010R\u001a\u0004\u0018\u00010\u000c2\u0006\u0010]\u001a\u00020^J\u0018\u0010_\u001a\u00020>2\u0010\u0010-\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010[\u0018\u00010.R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\'\u001a\u0004\u0018\u00010(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R8\u00100\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010/\u0018\u00010.2\u0010\u0010-\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010/\u0018\u00010.8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u0016\u00105\u001a\u0004\u0018\u0001068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0016\u00109\u001a\u0004\u0018\u00010:8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<\u00a8\u0006a"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;",
        "",
        "prev",
        "(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V",
        "isPenMenuOpen",
        "",
        "()Z",
        "mBrushLayoutViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;",
        "mBrushMenuHideViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;",
        "mBrushMenuInfo",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "getMBrushMenuInfo",
        "()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "setMBrushMenuInfo",
        "(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)V",
        "mBrushSettingsViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;",
        "mColorActionListener",
        "Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;",
        "mColorButtonListener",
        "Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;",
        "mColorChangeListener",
        "Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;",
        "mColorSwipeListener",
        "Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;",
        "mColorView",
        "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;",
        "mPenActionListener",
        "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;",
        "mPenView",
        "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;",
        "getMPenView",
        "()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;",
        "setMPenView",
        "(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;)V",
        "mSubMenuLayoutViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;",
        "mTipPopup",
        "Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;",
        "getMTipPopup",
        "()Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;",
        "setMTipPopup",
        "(Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;)V",
        "list",
        "",
        "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
        "recentPalette",
        "getRecentPalette",
        "()Ljava/util/List;",
        "setRecentPalette",
        "(Ljava/util/List;)V",
        "selectedColorModel",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "getSelectedColorModel",
        "()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
        "selectedPenViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;",
        "getSelectedPenViewModel",
        "()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;",
        "addRecentColor",
        "",
        "hsvColor",
        "",
        "close",
        "disableSmartTipPopup",
        "getBrushLayoutInfo",
        "Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;",
        "selectNextRecentColor",
        "setBrushLayout",
        "brushLayout",
        "Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;",
        "listener",
        "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;",
        "setBrushLayoutViewModel",
        "brushLayoutViewModel",
        "setColorViewVisibility",
        "isOpened",
        "setMenuHideViewModel",
        "menuHideViewModel",
        "setMenuInfo",
        "info",
        "setSettingsViewModel",
        "settingsViewModel",
        "setSmartTipPopup",
        "updateCurrentColorView",
        "color",
        "needAnim",
        "updateCurrentPenView",
        "penViewModel",
        "",
        "updateMenuInfo",
        "view",
        "Landroid/view/View;",
        "updatePaletteList",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mBrushMenuHideViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mBrushSettingsViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mColorActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mColorButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mColorSwipeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mPenActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSubMenuLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl$Companion;

    const-string v0, "BrushMenuControl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    iget-object v0, p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuHideViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuHideViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;

    iget-object v0, p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mSubMenuLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mSubMenuLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    iget-object p1, p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushSettingsViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushSettingsViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;

    :cond_0
    new-instance p1, Lx3/e;

    invoke-direct {p1, p0}, Lx3/e;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;

    new-instance p1, Lx3/a;

    invoke-direct {p1, p0}, Lx3/a;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    new-instance p1, Lx3/c;

    invoke-direct {p1, p0}, Lx3/c;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    new-instance p1, Lx3/d;

    invoke-direct {p1, p0}, Lx3/d;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorSwipeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;

    new-instance p1, Lx3/b;

    invoke-direct {p1, p0}, Lx3/b;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;I[F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorChangeListener$lambda-4(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;I[F)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorActionListener$lambda-3(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;I)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenActionListener$lambda-2(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;IIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorButtonListener$lambda-6(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;IIZ)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorSwipeListener$lambda-5(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;II)V

    return-void
.end method

.method private final getSelectedColorModel()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getSelectedPenViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getPenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Smudge"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getCurrentPage()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getSelectedIndices()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    const v2, -0x19191a

    const/high16 v3, 0x400000

    or-int/2addr v0, v3

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;-><init>(II)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getSelectedColor()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    move-result-object v0

    return-object v0
.end method

.method private final getSelectedPenViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getPenViewModelList()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getPenViewModelList()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getSelectedViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static final mColorActionListener$lambda-3(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;I)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onColorButtonClick. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->disableSmartTipPopup()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushSettingsViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;->onPaletteSettingClick()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getRecentVM()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->onClickColorPicker()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorGradationViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->onColorGradationClick()V

    :cond_5
    :goto_0
    return-void
.end method

.method private static final mColorButtonListener$lambda-6(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;IIZ)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onColorSelected. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->disableSmartTipPopup()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->selectColorButton(IIZ)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView()V

    return-void
.end method

.method private static final mColorChangeListener$lambda-4(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;I[F)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onColorChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->HSVToColor([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->setMainColorAndPosition([FI)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView()V

    return-void
.end method

.method private static final mColorSwipeListener$lambda-5(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;II)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPaletteSwipe. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->swipePalettes(II)V

    return-void
.end method

.method private static final mPenActionListener$lambda-2(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;Ljava/lang/String;Z)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPenClicked. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->disableSmartTipPopup()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->getPenCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->getSelectedPenPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->setPenPopupAlign(II)V

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getPenViewModelList()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->onPenClicked(Ljava/lang/String;Z)V

    return-void
.end method

.method private final updateCurrentColorView(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;Z)V
    .locals 4

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;->getHSV()[F

    move-result-object p1

    const/high16 v1, 0x100000

    const/high16 v2, 0x400000

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getSelectedIndices()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->getUiInfo(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/high16 v2, -0x100000

    and-int/2addr v2, v0

    if-ne v2, v1, :cond_2

    move v0, v1

    :cond_2
    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentColorView. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->HSVToColor([F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setColor(I[FZ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final addRecentColor([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->addRecentColor([F)Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setOnActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setOnColorButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setOnPaletteSwipeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->setActionListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->dismiss(Z)V

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    :cond_4
    return-void
.end method

.method public disableSmartTipPopup()V
    .locals 0

    return-void
.end method

.method public abstract getBrushLayoutInfo()Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final getMBrushMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    return-object v0
.end method

.method public final getMPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    return-object v0
.end method

.method public final getMTipPopup()Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    return-object v0
.end method

.method public final getRecentPalette()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->getRecentColor()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final isPenMenuOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getPenViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final selectNextRecentColor([F)V
    .locals 4
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->getPalette()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setPalette(I)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->HSVToColor([F)I

    move-result v2

    const/high16 v3, 0x100000

    invoke-direct {v0, v2, p1, v3}, Lcom/samsung/android/support/senl/addons/base/model/color/ColorModel;-><init>(I[FI)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentColorView(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView()V

    :cond_1
    return-void
.end method

.method public setBrushLayout(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "brushLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getPenView()Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->getColorView()Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenActionListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->setActionListener(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface$OnActionListener;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setOnActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setOnColorButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorButtonListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorSwipeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setOnPaletteSwipeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;)V

    :cond_1
    return-void
.end method

.method public final setBrushLayoutViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getSubMenuLayoutViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mSubMenuLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    return-void
.end method

.method public final setColorViewVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->setPenViewMode(Z)V

    :cond_2
    return-void
.end method

.method public final setMBrushMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    return-void
.end method

.method public final setMPenView(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    return-void
.end method

.method public final setMTipPopup(Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    return-void
.end method

.method public final setMenuHideViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuHideViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;

    return-void
.end method

.method public setMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)Z
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->isEquals(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMenuInfo. "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mSubMenuLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->setBrushMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final setRecentPalette(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setRecentColor(Ljava/util/List;)Z

    :goto_0
    return-void
.end method

.method public final setSettingsViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushSettingsViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;

    return-void
.end method

.method public setSmartTipPopup()V
    .locals 0

    return-void
.end method

.method public final updateCurrentColorView(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getSelectedColorModel()Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentColorView(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;Z)V

    :cond_0
    return-void
.end method

.method public final updateCurrentPenView()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getSelectedPenViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;)V

    :cond_0
    return-void
.end method

.method public final updateCurrentPenView(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getSelectedPenViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->setColor(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;)V

    :cond_0
    return-void
.end method

.method public final updateCurrentPenView(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurrentPenView. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->getSelectedPenPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getPenClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->getColor()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->setPenInfo(Ljava/lang/String;I)Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->getPenCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;->getSelectedPenPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->setPenPopupAlign(II)V

    return-void
.end method

.method public final updateMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;Landroid/view/View;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->setMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateMenuInfo."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mSubMenuLayoutViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    if-eqz p1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/addons/R$id;->brush_sub_menu_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->setLayoutRect(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/util/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuHideViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mPenView:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenLayoutInterface;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, p2

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;->setLayoutRect(ILandroid/graphics/Rect;I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuHideViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, p2

    :goto_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mBrushMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object p2

    :cond_5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2, p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;->setLayoutRect(ILandroid/graphics/Rect;I)V

    :cond_6
    return-void
.end method

.method public final updatePaletteList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->mColorView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorLayout;->setPaletteList(Ljava/util/List;)Z

    :cond_0
    return-void
.end method
