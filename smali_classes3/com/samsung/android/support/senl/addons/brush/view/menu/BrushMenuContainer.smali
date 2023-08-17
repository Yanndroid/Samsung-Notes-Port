.class public Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushMenuView;
.implements Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushEraserView;
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$Companion;,
        Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;,
        Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 K2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0003KLMB\u0011\u0008\u0016\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B\u001b\u0008\u0016\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB#\u0008\u0016\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0012\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u000101H\u0002J\u0006\u00102\u001a\u00020/J\u0006\u00103\u001a\u00020/J\u0008\u00104\u001a\u00020/H\u0014J\u0010\u00105\u001a\u00020/2\u0006\u00106\u001a\u000207H\u0014J\u0012\u00108\u001a\u00020/2\u0008\u00109\u001a\u0004\u0018\u00010:H\u0016J\u0008\u0010;\u001a\u00020/H\u0002J\u0010\u0010<\u001a\u00020/2\u0006\u0010=\u001a\u00020>H\u0016J\u0012\u0010?\u001a\u00020/2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0016J\u0012\u0010B\u001a\u00020/2\u0008\u0010C\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010D\u001a\u00020/2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0016J\u0012\u0010G\u001a\u00020/2\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0008\u0010J\u001a\u00020/H\u0002R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0018\u00010#R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0008\u0018\u00010%R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020+8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-\u00a8\u0006N"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;",
        "Landroid/widget/RelativeLayout;",
        "Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushMenuView;",
        "Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushEraserView;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mBrushMainViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;",
        "mBrushMenuControl",
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;",
        "mColorGradationViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;",
        "mColorMenuCallback",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;",
        "mColorMenuViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;",
        "mColorPickerViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;",
        "mColorRecentViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;",
        "mMainCallback",
        "mPenListCallback",
        "mPenViewModeChangeListener",
        "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;",
        "mPenViewModelList",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;",
        "mSettingLayoutChangeListener",
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;",
        "mSettingLayoutChildChangeListener",
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;",
        "mSpenSettingBrushLayout",
        "Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;",
        "mSubMenuViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;",
        "menuInfo",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "getMenuInfo",
        "()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "applyRecentColor",
        "",
        "hsvColor",
        "",
        "close",
        "init",
        "onAttachedToWindow",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onRotationChanged",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;",
        "release",
        "setEraserSelection",
        "selection",
        "",
        "setLayoutViewModel",
        "layoutViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;",
        "setMainViewModel",
        "mainViewModel",
        "setMenuHideViewModel",
        "menuHideViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;",
        "setSettingsViewModel",
        "settingsViewModel",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;",
        "updateMenuTopPosition",
        "Companion",
        "SettingLayoutChangeListener",
        "SettingLayoutChildChangeListener",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mBrushMainViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorGradationViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mColorRecentViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mMainCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mPenListCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mPenViewModeChangeListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPenViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingLayoutChangeListener:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSettingLayoutChildChangeListener:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSubMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$Companion;

    const-string v0, "BrushMenuContainer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/a;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/a;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModeChangeListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mPenListCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mPenListCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mMainCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/a;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/a;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModeChangeListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mPenListCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mPenListCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mMainCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/a;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/a;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModeChangeListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mPenListCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mPenListCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mMainCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mMainCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModeChangeListener$lambda-0(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;I)V

    return-void
.end method

.method public static final synthetic access$applyRecentColor(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->applyRecentColor([F)V

    return-void
.end method

.method public static final synthetic access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    return-object p0
.end method

.method public static final synthetic access$getMColorMenuViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    return-object p0
.end method

.method public static final synthetic access$getMColorPickerViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    return-object p0
.end method

.method public static final synthetic access$getMColorRecentViewModel$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorRecentViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    return-object p0
.end method

.method public static final synthetic access$getMPenViewModelList$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    return-object p0
.end method

.method public static final synthetic access$getMSpenSettingBrushLayout$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    return-object p0
.end method

.method public static final synthetic access$getMenuInfo(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->getMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final applyRecentColor([F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    if-eqz v0, :cond_0

    const/high16 v1, 0x100000

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->setMainColorAndPosition([FI)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->selectNextRecentColor([F)V

    :cond_1
    return-void
.end method

.method private final getMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->isPenMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuInfo;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;Z)V

    return-object v0
.end method

.method private static final mPenViewModeChangeListener$lambda-0(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;I)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->setColorViewVisibility(Z)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->getMenuInfo()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const-string v1, "rootView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private final release()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSettingLayoutChangeListener:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->setChildLayoutChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->setChildActionListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSettingLayoutChangeListener:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSettingLayoutChildChangeListener:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;

    return-void
.end method

.method private final updateMenuTopPosition()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/ScreenUtils;->getWindowType(Landroid/app/Activity;)I

    move-result v0

    const/4 v2, 0x2

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_menu_top_margin_on_split_window:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getScreenModel()Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->removeRotationChangeListener(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;)Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorRecentViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorRecentViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorGradationViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorGradationViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMainViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mMainCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMainViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSubMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSubMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    :cond_6
    return-void
.end method

.method public final init()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->release()V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->TAG:Ljava/lang/String;

    const-string v2, "initialized"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushTabletMenuControl;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushPhoneMenuControl;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushPhoneMenuControl;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSettingLayoutChangeListener:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSettingLayoutChildChangeListener:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->getBrushLayoutInfo()Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenBrushLayoutInfo;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getRadius()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getStrokeSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getStrokeColor()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->setChildRoundedBackground(IIII)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSettingLayoutChangeListener:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSettingLayoutChildChangeListener:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->setChildLayoutChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSettingLayoutChildChangeListener:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->setChildActionListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModeChangeListener:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->setBrushLayout(Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->updateMenuTopPosition()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->updateMenuTopPosition()V

    return-void
.end method

.method public onRotationChanged(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSpenSettingBrushLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;->getTargetAngle()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->setChildRotation(I)V

    :cond_1
    return-void
.end method

.method public setEraserSelection(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getEraserViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLayoutViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setLayoutViewModel fail"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setLayoutViewModel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->setBrushLayoutViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getPenViewModelList()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    if-eqz v2, :cond_2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSubMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->getEraserSelection()Z

    move-result v1

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenViewModelList:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;->getEraserViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentPenView(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    if-eqz v1, :cond_6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_6
    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getScreenModel()Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;->addRotationChangeListener(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode$OnRotationChangeListener;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getSelectedIndices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updatePaletteList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateCurrentColorView(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getRecentVM()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorRecentViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    if-eqz v1, :cond_7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorRecentViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_7
    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorRecentViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->getRecentVM()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorRecentViewModel;->getRecentPaletteList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->setRecentPalette(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorGradationViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorGradationViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorGradationViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_8
    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorGradationViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    return-void
.end method

.method public setMainViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMainViewModel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMainViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMainViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mMainCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMainViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mMainCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMainViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->getSubMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSubMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSubMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mSubMenuViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mPenListCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    return-void
.end method

.method public setMenuHideViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMenuHideViewModel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->setMenuHideViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;)V

    :cond_0
    return-void
.end method

.method public setSettingsViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSettingsViewModel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mBrushMenuControl:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->setSettingsViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;->getColorPickerViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorPickerViewModel:Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/ColorPickerViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->mColorMenuCallback:Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    return-void
.end method
