.class public final Lcom/samsung/android/support/senl/addons/brush/view/BrushView;
.super Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/BrushView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 62\u00020\u0001:\u00016B\u0005\u00a2\u0006\u0002\u0010\u0002J(\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u0006H\u0002J\u0008\u0010\u0015\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\u0012\u0010\u0018\u001a\u00020\u00132\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0012\u0010\u001b\u001a\u00020\r2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0014J\u0008\u0010!\u001a\u00020\u0013H\u0002J\u0008\u0010\"\u001a\u00020\u0006H\u0002J\u0010\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%H\u0016J\u0012\u0010&\u001a\u00020\u00132\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\"\u0010\'\u001a\u00020\u00132\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u001a2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J&\u0010-\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010.\u001a\u00020\u0013H\u0016J\u0008\u0010/\u001a\u00020\u0013H\u0016J\u0008\u00100\u001a\u00020\u0013H\u0016J\u0008\u00101\u001a\u00020\u0013H\u0002J\u0008\u00102\u001a\u00020\u0006H\u0016J\u0010\u00103\u001a\u00020\u00132\u0006\u00104\u001a\u00020\u0006H\u0016J\u0008\u00105\u001a\u00020\u0013H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/BrushView;",
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;",
        "()V",
        "mBindHelper",
        "Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;",
        "mIsContextMenuRegistered",
        "",
        "mIsTablet",
        "mRotationSettingObserver",
        "Landroid/database/ContentObserver;",
        "bindingViewModel",
        "Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;",
        "model",
        "Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "changeMenu",
        "",
        "changeViewType",
        "closeRotation",
        "coverView",
        "show",
        "createContextMenu",
        "root",
        "Landroid/view/View;",
        "createModel",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getContextMenuId",
        "",
        "resId",
        "initRotation",
        "isAutoRotateEnabled",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "onCreateContextMenu",
        "menu",
        "Landroid/view/ContextMenu;",
        "v",
        "menuInfo",
        "Landroid/view/ContextMenu$ContextMenuInfo;",
        "onCreateView",
        "onDestroy",
        "onDestroyView",
        "onResume",
        "releaseContextMenu",
        "requestChangeView",
        "requestFinish",
        "isSaved",
        "updateViewType",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/BrushView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG_PERFORMANCE:Ljava/lang/String; = "BrushPerformance"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VIEW_CONVERTING_COVER_VIEW:I = 0x1

.field private static final VIEW_CONVERTING_PENDING_SAVE:I = 0x0

.field public static final VIEW_CONVERTING_RECREATE_MENU_ONLY:I = 0x3

.field public static final VIEW_CONVERTING_RECREATE_VIEW_ONLY:I = 0x2

.field private static VIEW_CONVERTING_TYPE:I


# instance fields
.field private mBindHelper:Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsContextMenuRegistered:Z

.field private mIsTablet:Z

.field private mRotationSettingObserver:Landroid/database/ContentObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/BrushView$Companion;

    const-string v0, "BrushView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->VIEW_CONVERTING_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;-><init>()V

    return-void
.end method

.method public static final synthetic access$enableRotation(Lcom/samsung/android/support/senl/addons/brush/view/BrushView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->enableRotation(Z)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getVIEW_CONVERTING_TYPE$cp()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->VIEW_CONVERTING_TYPE:I

    return v0
.end method

.method public static final synthetic access$isAutoRotateEnabled(Lcom/samsung/android/support/senl/addons/brush/view/BrushView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->isAutoRotateEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setVIEW_CONVERTING_TYPE$cp(I)V
    .locals 0

    sput p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->VIEW_CONVERTING_TYPE:I

    return-void
.end method

.method private final changeMenu()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMModel()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mBindHelper:Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMModel()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->updateLayouts(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/util/SystemLogManager;->updateLogManager()V

    :cond_1
    return-void
.end method

.method private final changeViewType()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->checkTabletMode(Landroid/app/Activity;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mIsTablet:Z

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI mode is changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mIsTablet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mIsTablet:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->updateViewType()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final closeRotation()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;->getSUPPORT_LOCK_ROTATION()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mRotationSettingObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->enableRotation(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mRotationSettingObserver:Landroid/database/ContentObserver;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final coverView(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/samsung/android/support/senl/addons/R$drawable;->brush_blind_drawable:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private final createContextMenu(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/addons/R$id;->brush_canvas_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mIsContextMenuRegistered:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mIsContextMenuRegistered:Z

    :cond_1
    return-void
.end method

.method private final initRotation()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;->getSUPPORT_LOCK_ROTATION()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    const-string v1, "Rotation feature is off..."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/addons/brush/view/BrushView$initRotation$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView$initRotation$1;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/BrushView;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mRotationSettingObserver:Landroid/database/ContentObserver;

    :try_start_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->isAutoRotateEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->enableRotation(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    const-string v1, "Failed registering observer for rotation. Rotation is not enabled."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final isAutoRotateEnabled()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    :goto_0
    return v1
.end method

.method private final releaseContextMenu()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mIsContextMenuRegistered:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/support/senl/addons/R$id;->brush_canvas_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mIsContextMenuRegistered:Z

    :cond_0
    return-void
.end method

.method private final updateViewType()V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->VIEW_CONVERTING_TYPE:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->changeMenu()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMModel()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->pendingSaveForRecreatedView()V

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->coverView(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMModel()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->pendingSaveForRecreatedView()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_5
    return-void
.end method


# virtual methods
.method public bindingViewModel(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindingViewModel - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->updateWindowSize()V

    new-instance p1, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMModel()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mBindHelper:Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;->getLifeCycleObserver()Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->setLifeCycleObserver(Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mBindHelper:Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;

    return-object p1
.end method

.method public createModel(Landroid/os/Bundle;)Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
    .locals 10
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;

    new-instance v1, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenPluginManager;->initialize(Lcom/samsung/android/sdk/pen/pen/SpenPenManager;)V

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/ColorModelInjector;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v8, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMSDataHandler()Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    move-result-object v2

    invoke-direct {v8, v2, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;Z)V

    const-string v0, "internal_path"

    const-string v2, "brush_output_thumbnail_path"

    const-string v3, "brush_input_thumbnail_path"

    const-string v4, "brush_input_painting_doc_path"

    const-string v9, "brush_output_painting_doc_path"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/addons/base/utils/FileUtils;->isExistedFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/addons/base/utils/FileUtils;->isExistedFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object p1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v7, v0

    move-object v5, v1

    move-object v6, v2

    move-object v3, v4

    move-object v4, p1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    move-object v6, v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    goto :goto_3

    :cond_4
    move-object v3, v5

    move-object v4, v3

    move-object v6, v4

    move-object v7, v6

    :goto_3
    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->setPathInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    const-string v0, "createModel. false"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createModel. test "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public getContextMenuId(I)I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/R$id;->brush_undo_btn:I

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    const-string v0, "onContextItemSelected brush_undo"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbba

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/addons/R$id;->brush_redo_btn:I

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    const-string v0, "onContextItemSelected brush_redo"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbbb

    goto :goto_0

    :cond_1
    const/16 p1, 0xbb9

    :goto_0
    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->changeViewType()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "BrushPerformance"

    const-string v1, "onCreate start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, savedInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->checkTabletMode(Landroid/app/Activity;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mIsTablet:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1    # Landroid/view/ContextMenu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ContextMenu$ContextMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    sget p2, Lcom/samsung/android/support/senl/addons/R$id;->brush_undo_btn:I

    sget p3, Lcom/samsung/android/support/senl/addons/R$string;->base_string_undo:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    const-string p3, "menu.add(Menu.NONE, R.id\u2026.string.base_string_undo)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/samsung/android/support/senl/addons/R$id;->brush_redo_btn:I

    sget v1, Lcom/samsung/android/support/senl/addons/R$string;->base_string_redo:I

    invoke-interface {p1, v0, p3, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const-string p3, "menu.add(Menu.NONE, R.id\u2026.string.base_string_redo)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMLifeCycleObserver()Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type com.samsung.android.support.senl.addons.brush.viewmodel.BrushMainViewModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->getSubMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getUndoEnabled()Z

    move-result p3

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMLifeCycleObserver()Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMainViewModel;->getSubMenuViewModel()Lcom/samsung/android/support/senl/addons/brush/viewmodel/submenu/SubMenuViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/base/viewmodel/AbsUndoRedoViewModel;->getRedoEnabled()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x1020002

    invoke-virtual {p3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView, y offset is : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->createContextMenu(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->initRotation()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->mBindHelper:Lcom/samsung/android/support/senl/addons/brush/view/BrushBindHelper;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMLifeCycleObserver()Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMLifeCycleObserver()Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;->onDestroy()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->setMLifeCycleObserver(Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;)V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->onDestroy()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->releaseContextMenu()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->closeRotation()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->onResume()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->coverView(Z)V

    return-void
.end method

.method public requestChangeView()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->changeViewType()Z

    move-result v0

    return v0
.end method

.method public requestFinish(Z)V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestFinish. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMModel()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.samsung.android.support.senl.addons.brush.model.BrushModel"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;->getSaveModel()Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->requestFinish(Z)V

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->getInputThumbnailPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->getOutputThumbnailPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->getInputPaintingDocPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushSaveModel;->getOutputPaintingDocPath()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_3

    if-nez v2, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v6, "brush_input_painting_doc_path"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "brush_output_painting_doc_path"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "brush_input_thumbnail_path"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "brush_output_thumbnail_path"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestFinish. thumbnailPath. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestFinish. paintingDocPath. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->requestSetResult(ILandroid/content/Intent;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->requestFinish(Z)V

    return-void
.end method
