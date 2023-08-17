.class public final Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;
.super Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B+\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;",
        "Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;",
        "context",
        "Landroid/content/Context;",
        "mainModel",
        "Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "(Landroid/content/Context;Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V",
        "mLayoutVM",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;",
        "mLifeCycleObserver",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;",
        "close",
        "",
        "getLifeCycleObserver",
        "updateLayouts",
        "instanceModel",
        "menuSizeInjector",
        "Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mLayoutVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper$Companion;

    const-string v0, "BrushBindHelper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;-><init>(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;)V

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/view/injector/BrushModelInjector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "context.resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/BrushModelInjector;-><init>(Landroid/content/res/Resources;)V

    check-cast p2, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->setInjector(Lcom/samsung/android/support/senl/addons/brush/model/IBrushModelInjector;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->setMenuSizeInjector(Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/util/CommonUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/addons/brush/model/InstanceModel;->setStatusHeight(I)V

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->getSaveViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;->setSettingsModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->getSubMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;->setSettingsModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSpenFacade()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V

    new-instance v2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSpenFacade()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;)V

    sget-object v3, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewModelBindUtil;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewModelBindUtil;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v4, Lcom/samsung/android/support/senl/addons/R$layout;->brush_fragment_main:I

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v3, p3, v4, p4, v5}, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewModelBindUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Lcom/samsung/android/support/senl/addons/base/binding/binder/BinderBuilder;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;

    invoke-direct {p4}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;-><init>()V

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BinderBuilder;->setCustomBindingFactory(Lcom/samsung/android/support/senl/addons/base/binding/binder/IBindingFactory;)Lcom/samsung/android/support/senl/addons/base/binding/binder/BinderBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BinderBuilder;->build()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->setMMainBinding(Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;)V

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->updateLayouts(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p3, "brushmainvm"

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->getSubMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    move-result-object p3

    const-string/jumbo p4, "submenuvm"

    invoke-virtual {p2, p4, p3}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->getPreviewImageViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/PreviewImageViewModel;

    move-result-object p3

    const-string p4, "previewvm"

    invoke-virtual {p2, p4, p3}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->getPenupViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/penup/PenupViewModel;

    move-result-object p3

    const-string p4, "penupvm"

    invoke-virtual {p2, p4, p3}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->getSaveViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushSaveViewModel;

    move-result-object p3

    const-string p4, "brushsavevm"

    invoke-virtual {p2, p4, p3}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->getPanningViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;

    move-result-object p3

    const-string p4, "panningvm"

    invoke-virtual {p2, p4, p3}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->addViewModel(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p3, "brushmenuhidevm"

    invoke-virtual {p2, p3, v2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->addViewModel(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p3, "brushsettingsvm"

    invoke-virtual {p2, p3, v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/BrushSettingsViewModel;->getSettingPopupHiderViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/setting/popup/SettingPopupHiderViewModel;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo p4, "settingpopuphidervm"

    invoke-virtual {p2, p4, p3}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->addViewModel(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->getRoot()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/addons/R$id;->brush_palette_menu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.samsung.android.support.senl.addons.brush.view.menu.BrushMenuContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->close()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->close()V

    return-void
.end method

.method public getLifeCycleObserver()Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    return-object v0
.end method

.method public bridge synthetic getLifeCycleObserver()Lcom/samsung/android/support/senl/addons/base/viewmodel/ILifeCycleObserver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->getLifeCycleObserver()Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    move-result-object v0

    return-object v0
.end method

.method public final updateLayouts(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "instanceModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->mLayoutVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->removeViewModel(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->mLayoutVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->getRoot()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/addons/R$id;->brush_palette_menu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.samsung.android.support.senl.addons.brush.view.menu.BrushMenuContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->init()V

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    new-instance v1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;

    new-instance v2, Lcom/samsung/android/support/senl/addons/brush/view/pen/PenViewModelFactory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getPenModelList()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModelList;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/addons/brush/view/pen/PenViewModelFactory;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;-><init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModelFactory;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    new-instance v2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getColorModelsManager()Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    move-result-object v3

    invoke-direct {v2, p2, p1, v1, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModelList;Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorMenuViewModel;->setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getBrushCanvasViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSpenFacade()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushFacade;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;->setFacade(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/AbsFacade;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getColorGradationViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSettingsModel()Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/ColorGradationViewModel;->setSettingModel(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "brushlayoutvm"

    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getSubMenuLayoutViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    move-result-object p2

    const-string/jumbo v0, "submenulayoutvm"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;->getMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/MenuLayoutViewModel;->getBrushCanvasViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/canvas/BrushCanvasViewModel;

    move-result-object p2

    const-string v0, "brushcanvasvm"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->setViewModel(Ljava/lang/String;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->addViewModel(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->mLayoutVM:Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    return-void
.end method
