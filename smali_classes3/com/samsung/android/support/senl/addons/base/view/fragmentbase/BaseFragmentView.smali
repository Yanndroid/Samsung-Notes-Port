.class public abstract Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/IEventListener;
.implements Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000 m2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001mB\u0005\u00a2\u0006\u0002\u0010\u0004J(\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0008\u0010 \u001a\u0004\u0018\u00010\u00122\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H$J\u0008\u0010%\u001a\u00020&H\u0016J\u0010\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0008H\u0002J\u0014\u0010)\u001a\u0004\u0018\u00010\u00122\u0008\u0010*\u001a\u0004\u0018\u00010+H$J\u0008\u0010,\u001a\u00020&H\u0002J\u0010\u0010-\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0008H\u0014J\u0010\u0010.\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0008H\u0003J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000200H\u0014J\n\u00102\u001a\u0004\u0018\u00010\u001aH\u0002J\u0010\u00103\u001a\u0002002\u0006\u00101\u001a\u000200H\u0014J\u0008\u00104\u001a\u00020\u0008H\u0014J\u0012\u00105\u001a\u00020\u00082\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0002J\u0010\u00106\u001a\u00020&2\u0006\u00107\u001a\u000200H\u0016J\u0008\u00108\u001a\u00020\u0008H\u0016J\u0010\u00109\u001a\u00020&2\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010<\u001a\u00020\u00082\u0006\u0010=\u001a\u00020>H\u0016J\u0012\u0010?\u001a\u00020&2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J&\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0008\u0010B\u001a\u00020&H\u0016J\u0008\u0010C\u001a\u00020&H\u0016J\u0010\u0010D\u001a\u00020&2\u0006\u00107\u001a\u000200H\u0016J\u0010\u0010E\u001a\u00020&2\u0006\u0010F\u001a\u00020\u0008H\u0016J \u0010G\u001a\u00020&2\u0006\u0010H\u001a\u0002002\u0006\u0010I\u001a\u00020\u00082\u0006\u0010J\u001a\u00020\u0008H\u0016J \u0010K\u001a\u00020&2\u0006\u0010H\u001a\u0002002\u0006\u0010I\u001a\u00020\u00082\u0006\u0010J\u001a\u00020\u0008H\u0016J\u0010\u0010L\u001a\u00020&2\u0006\u0010M\u001a\u00020\u0008H\u0016J\u0018\u0010N\u001a\u00020&2\u0006\u0010O\u001a\u0002002\u0006\u0010P\u001a\u000200H\u0014J\u0010\u0010Q\u001a\u00020\u00082\u0006\u0010=\u001a\u00020>H\u0016J\u0008\u0010R\u001a\u00020&H\u0016J\u000e\u0010S\u001a\u00020&2\u0006\u0010*\u001a\u00020+J\u0008\u0010T\u001a\u00020&H\u0016J\u0010\u0010U\u001a\u00020&2\u0006\u0010V\u001a\u00020+H\u0016J\u0008\u0010W\u001a\u00020&H\u0016J\u0008\u0010X\u001a\u00020&H\u0016J\u0010\u0010Y\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0008H\u0016J\u0008\u0010Z\u001a\u00020\u0008H\u0016J\u0008\u0010[\u001a\u00020&H\u0016J\u0010\u0010\\\u001a\u00020&2\u0006\u0010]\u001a\u00020\u0008H\u0016J\u001a\u0010^\u001a\u00020&2\u0006\u0010P\u001a\u0002002\u0008\u0010_\u001a\u0004\u0018\u00010`H\u0016J4\u0010^\u001a\u00020&2\u0006\u0010P\u001a\u0002002\u0006\u0010a\u001a\u0002002\u0008\u0010b\u001a\u0004\u0018\u00010c2\u0006\u0010d\u001a\u0002002\u0008\u0010_\u001a\u0004\u0018\u00010`H\u0016J\u001a\u0010e\u001a\u00020&2\u0006\u0010f\u001a\u0002002\u0008\u0010g\u001a\u0004\u0018\u00010hH\u0016J\u0010\u0010i\u001a\u00020&2\u0006\u0010j\u001a\u00020\u000cH\u0014J\u0008\u0010k\u001a\u00020&H\u0002J\u0008\u0010l\u001a\u00020&H\u0014R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/samsung/android/support/senl/addons/base/model/IEventListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;",
        "()V",
        "mBindHelper",
        "Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;",
        "mIsOnFinish",
        "",
        "mLayoutChangeListener",
        "Landroid/view/View$OnLayoutChangeListener;",
        "mLifeCycleObserver",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;",
        "getMLifeCycleObserver",
        "()Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;",
        "setMLifeCycleObserver",
        "(Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;)V",
        "mModel",
        "Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;",
        "getMModel",
        "()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;",
        "setMModel",
        "(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;)V",
        "mRotationListener",
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;",
        "mSDataHandler",
        "Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;",
        "getMSDataHandler",
        "()Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;",
        "setMSDataHandler",
        "(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V",
        "bindingViewModel",
        "model",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "bringToFront",
        "",
        "checkHideNavigationBar",
        "enable",
        "createModel",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "createRotationListener",
        "enableRotation",
        "enableRotationInner",
        "getContextMenuId",
        "",
        "resId",
        "getDataHandle",
        "getOptionMenuId",
        "isEnabledMenuItem",
        "makeModel",
        "onBLEEvent",
        "eventId",
        "onBack",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onContextItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onCreate",
        "onCreateView",
        "Landroid/view/View;",
        "onDestroy",
        "onDestroyView",
        "onDispatchEvent",
        "onFinishDocumentByUser",
        "save",
        "onKeyDown",
        "keycode",
        "withCtrl",
        "withShift",
        "onKeyUp",
        "onMultiWindowModeChanged",
        "isInMultiWindowMode",
        "onOptionMenuPropertyChanged",
        "id",
        "type",
        "onOptionsItemSelected",
        "onPause",
        "onRestoreInstanceState",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "onStart",
        "onStop",
        "requestBlockUserInput",
        "requestChangeView",
        "requestDismissSelectionToUser",
        "requestFinish",
        "isSaved",
        "requestSelectionToUser",
        "callback",
        "Lcom/samsung/android/support/senl/addons/base/model/uidialog/IDialogCallback;",
        "theme",
        "windowToken",
        "Landroid/os/IBinder;",
        "marginBottom",
        "requestSetResult",
        "resultCode",
        "intent",
        "Landroid/content/Intent;",
        "setLifeCycleObserver",
        "observer",
        "setOptionMenuCallback",
        "updateWindowSize",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private mBindHelper:Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsOnFinish:Z

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRotationListener:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSDataHandler:Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->Companion:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;

    const-string v0, "BaseFragmentView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->enableRotation$lambda-1(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;Z)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setSInstanceModel$cp(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->sInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->onCreateView$lambda-0(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private final checkHideNavigationBar(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->hideNavigationBar(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->updateDisallowTouchDownArea(ZI)V

    :cond_0
    return-void
.end method

.method private final createRotationListener()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationMode;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mRotationListener:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "getContext is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final enableRotation$lambda-1(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;Z)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->enableRotationInner(Z)V

    :cond_0
    return-void
.end method

.method private final enableRotationInner(Z)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable rotation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mRotationListener:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->createRotationListener()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mRotationListener:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->start(Landroid/content/Context;)V

    const-string p1, "enable rotation"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mRotationListener:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->stop()V

    const-string p1, "disable rotation"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mRotationListener:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " -> null listener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final getDataHandle()Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "data_handler_class"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.samsung.android.support.senl.addons.base.model.IDataHandler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    return-object v0

    :cond_1
    return-object v1
.end method

.method private final makeModel(Landroid/os/Bundle;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "makeModel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->sInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->getDataHandler()Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mSDataHandler:Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    sget-object v2, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->sInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    sput-object v3, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->sInstanceModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getDataHandle()Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mSDataHandler:Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;->onCreate(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_1
    const-string v2, "create model"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->createModel(Landroid/os/Bundle;)Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;->setArgument(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "onCreateView : load data from savedInstanceState"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/common/ISavableModel;->onLoadFromInstanceState(Landroid/os/Bundle;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeModel : failed create SDocHandler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static final onCreateView$lambda-0(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->updateWindowSize()V

    :cond_1
    return-void
.end method

.method private final setOptionMenuCallback()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$setOptionMenuCallback$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$setOptionMenuCallback$1;-><init>(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;->setOptionChangeCallback(Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$IOptionChangeCallback;)V

    :cond_0
    return-void
.end method

.method public static final storeInstanceModel(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;)V
    .locals 1
    .param p0    # Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->Companion:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;->storeInstanceModel(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;)V

    return-void
.end method


# virtual methods
.method public abstract bindingViewModel(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;
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
.end method

.method public bringToFront()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/IBaseActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/IBaseActivity;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/IBaseActivity;->bringToFront()V

    :cond_0
    return-void
.end method

.method public abstract createModel(Landroid/os/Bundle;)Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public enableRotation(Z)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->isOnMainUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->enableRotationInner(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "enableRotation : couldn\'t run on main thread"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lt3/b;

    invoke-direct {v1, p0, p1}, Lt3/b;-><init>(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getContextMenuId(I)I
    .locals 0

    const/16 p1, 0x3e8

    return p1
.end method

.method public final getMLifeCycleObserver()Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    return-object v0
.end method

.method public final getMModel()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    return-object v0
.end method

.method public final getMSDataHandler()Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mSDataHandler:Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    return-object v0
.end method

.method public getOptionMenuId(I)I
    .locals 1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3e9

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    :goto_0
    return p1
.end method

.method public isEnabledMenuItem()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBLEEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLEListener;->onBLEEvent(I)V

    :cond_0
    return-void
.end method

.method public onBack()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/IKeyListener;->onBack()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->updateWindowSize()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/ScreenUtils;->getWindowType(Landroid/app/Activity;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IWindowMode;->setWindowType(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mRotationListener:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->onConfigurationChanged(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "onContextItemSelected()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->isEnabledMenuItem()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getContextMenuId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;->onOptionItemSelected(I)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView - has null model"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->makeModel(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "onCreateView : failed create model"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->bindingViewModel(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mBindHelper:Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;->getRoot()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    :cond_3
    invoke-interface {v0, p2, p3}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;->onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->updateWindowSize()V

    new-instance p2, Lt3/a;

    invoke-direct {p2, p0}, Lt3/a;-><init>(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_6

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->checkHideNavigationBar(Z)V

    :cond_6
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mIsOnFinish:Z

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mBindHelper:Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mBindHelper:Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;->onDestroyView()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDispatchEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/IEventListener;->onDispatchEvent(I)V

    :cond_0
    return-void
.end method

.method public onFinishDocumentByUser(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/IEventListener;->onFinishDocumentByUser(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/base/model/IKeyListener;->onKeyDown(IZZ)V

    :cond_0
    return-void
.end method

.method public onKeyUp(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/addons/base/model/IKeyListener;->onKeyUp(IZZ)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "onMultiWindowModeChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;->onMultiWindowModeChanged(Z)V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->checkHideNavigationBar(Z)V

    return-void
.end method

.method public onOptionMenuPropertyChanged(II)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->isEnabledMenuItem()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getOptionMenuId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;->onOptionItemSelected(I)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mRotationListener:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->onPause()V

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mRotationListener:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/ScreenLockRotationListener;->onResume()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;->onStop()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestBlockUserInput(Z)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/support/senl/addons/base/view/inputblockcontainers/IInputIntercepter;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block User Input ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " / by TouchIntercept"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/support/senl/addons/base/view/inputblockcontainers/IInputIntercepter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/view/inputblockcontainers/IInputIntercepter;->ignoreInputEvent(Z)V

    :cond_0
    return-void
.end method

.method public requestChangeView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestDismissSelectionToUser()V
    .locals 0

    return-void
.end method

.method public requestFinish(Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mIsOnFinish:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string v0, "requestFinish"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mIsOnFinish:Z

    return-void
.end method

.method public requestSelectionToUser(IILandroid/os/IBinder;ILcom/samsung/android/support/senl/addons/base/model/uidialog/IDialogCallback;)V
    .locals 0
    .param p3    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/addons/base/model/uidialog/IDialogCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public requestSelectionToUser(ILcom/samsung/android/support/senl/addons/base/model/uidialog/IDialogCallback;)V
    .locals 0
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/uidialog/IDialogCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string p2, "requestSelectionToUser()"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestSetResult(ILandroid/content/Intent;)V
    .locals 3
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetResult resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setLifeCycleObserver(Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/ILifeCycleObserver;->setLifeCycleController(Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/base/utils/ScreenUtils;->getWindowType(Landroid/app/Activity;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IWindowMode;->setWindowType(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->setOptionMenuCallback()V

    return-void
.end method

.method public final setMLifeCycleObserver(Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mLifeCycleObserver:Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;

    return-void
.end method

.method public final setMModel(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    return-void
.end method

.method public final setMSDataHandler(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mSDataHandler:Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;

    return-void
.end method

.method public updateWindowSize()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateWindowSize"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/WindowManager;

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->configShowNavigationBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isNavigationBarHidden(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const-string/jumbo v3, "windowManager.defaultDisplay"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;-><init>(Landroid/view/Display;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->mModel:Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenMode;->updateScreenData(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;)V

    :cond_1
    return-void
.end method
