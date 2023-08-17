.class public abstract Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/IBaseActivity;
.implements Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLECommand;
.implements Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/IPopupWindowProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/AbsToolActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008&\u0018\u0000 L2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001LB\u0005\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0014J\u001a\u0010\u0016\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\tH\u0002J\u0008\u0010\u001a\u001a\u00020\u0014H\u0016J\u0008\u0010\u001b\u001a\u00020\u0014H\u0014J\"\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\tH\u0002J\u0008\u0010 \u001a\u00020\tH\u0014J\u0008\u0010!\u001a\u00020\u0014H\u0014J\n\u0010\"\u001a\u0004\u0018\u00010\u001cH$J\u0012\u0010#\u001a\u00020\t2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J \u0010&\u001a\u00020\u00122\u0006\u0010\'\u001a\u00020\u00122\u0006\u0010(\u001a\u00020\t2\u0006\u0010)\u001a\u00020\tH\u0002J\u000e\u0010*\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010+H$J\n\u0010,\u001a\u0004\u0018\u00010\u001fH\u0016J\n\u0010-\u001a\u0004\u0018\u00010\u001fH$J\u0008\u0010.\u001a\u00020\u0014H\u0002J\u0008\u0010/\u001a\u00020\u0014H\u0014J\u0012\u00100\u001a\u00020\t2\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u0010\u00103\u001a\u00020\u00142\u0006\u00104\u001a\u000205H\u0016J\u0012\u00106\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u001c\u00106\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u0008\u00109\u001a\u00020\u0014H\u0016J\u0018\u0010:\u001a\u00020\t2\u0006\u0010;\u001a\u00020\u00122\u0006\u0010<\u001a\u00020=H\u0016J\u0018\u0010>\u001a\u00020\t2\u0006\u0010;\u001a\u00020\u00122\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010?\u001a\u00020\u00142\u0006\u00101\u001a\u000202H\u0014J\u0008\u0010@\u001a\u00020\u0014H\u0014J\u0010\u0010A\u001a\u00020\u00142\u0006\u0010B\u001a\u00020\tH\u0016J\u0008\u0010C\u001a\u00020\u0014H\u0002J\u0012\u0010D\u001a\u00020\u00142\u0008\u0010E\u001a\u0004\u0018\u00010\u0007H\u0014J\u0012\u0010F\u001a\u00020\u00142\u0008\u0010G\u001a\u0004\u0018\u00010\u001cH\u0014J\u0010\u0010H\u001a\u00020\u00142\u0006\u0010I\u001a\u00020\tH\u0014J\u0008\u0010J\u001a\u00020\u0014H\u0002J\u0008\u0010K\u001a\u00020\u0014H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\tX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/IBaseActivity;",
        "Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLECommand;",
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/IPopupWindowProperties;",
        "()V",
        "mEventListener",
        "Lcom/samsung/android/support/senl/addons/base/model/IEventListener;",
        "mIsEnableFullMode",
        "",
        "mIsInvalidCreateCase",
        "getMIsInvalidCreateCase",
        "()Z",
        "setMIsInvalidCreateCase",
        "(Z)V",
        "mPopupWindowController",
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;",
        "mPopupWindowFlag",
        "",
        "addPopupWindowFlags",
        "",
        "flags",
        "addView",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "storeModel",
        "bringToFront",
        "changeView",
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;",
        "fragment",
        "tag",
        "",
        "checkInvalidCreateCase",
        "controlIndicatorBar",
        "createView",
        "dispatchTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "getBLEEventId",
        "keycode",
        "withCtrl",
        "withShift",
        "getConcreteClass",
        "Ljava/lang/Class;",
        "getOpenUUID",
        "getViewTag",
        "hideSystemUI",
        "initialize",
        "isCallForceClosed",
        "intent",
        "Landroid/content/Intent;",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "persistentState",
        "Landroid/os/PersistableBundle;",
        "onDetachedFromWindow",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "onNewIntent",
        "onResume",
        "onWindowFocusChanged",
        "hasFocus",
        "printDisplayInfo",
        "setEventListener",
        "listener",
        "setExtraArgumentToView",
        "view",
        "setFullMode",
        "enable",
        "setPopupWindowProperties",
        "showSystemUI",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/AbsToolActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mEventListener:Lcom/samsung/android/support/senl/addons/base/model/IEventListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsEnableFullMode:Z

.field private mIsInvalidCreateCase:Z

.field private mPopupWindowController:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPopupWindowFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->Companion:Lcom/samsung/android/support/senl/addons/base/AbsToolActivity$Companion;

    const-string v0, "AbsToolActivity"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMEventListener$p(Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;)Lcom/samsung/android/support/senl/addons/base/model/IEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mEventListener:Lcom/samsung/android/support/senl/addons/base/model/IEventListener;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final addView(Landroid/os/Bundle;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->getViewTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0, p2}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->changeView(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;Ljava/lang/String;Z)Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->setEventListener(Lcom/samsung/android/support/senl/addons/base/model/IEventListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->controlIndicatorBar()V

    return-void
.end method

.method private final changeView(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;Ljava/lang/String;Z)Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string/jumbo v1, "supportFragmentManager.beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    sget-object v4, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeView isCreated/isAdded : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    sget-object p3, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->Companion:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;

    invoke-virtual {p3, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;->storeInstanceModel(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;)V

    :cond_2
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->setEventListener(Lcom/samsung/android/support/senl/addons/base/model/IEventListener;)V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->createView()Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->setExtraArgumentToView(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$id;->fragment_container:I

    invoke-virtual {v0, p1, p3, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object p3
.end method

.method private final getBLEEventId(IZZ)I
    .locals 0

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    const/16 p2, 0x1d

    if-eq p1, p2, :cond_2

    const/16 p2, 0x20

    if-eq p1, p2, :cond_1

    const/16 p2, 0x2f

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x64

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method private final hideSystemUI()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1f06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private final isCallForceClosed(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    const-string v1, "isCallForceClosed : null intent "

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string/jumbo v1, "tool_force_finish"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallForceClosed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private final printDisplayInfo()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "density = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DPI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setPopupWindowProperties()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mPopupWindowFlag:I

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mPopupWindowFlag:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mPopupWindowController:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;

    :cond_0
    return-void
.end method

.method private final showSystemUI()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public addPopupWindowFlags(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mPopupWindowFlag:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mPopupWindowFlag:I

    return-void
.end method

.method public bringToFront()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    const-string v1, "bring to front : activity is destroyed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    const-string v1, "bring to front"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->getConcreteClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public changeView()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->addView(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public checkInvalidCreateCase()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data_handler_class"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    const-string v2, "checkInvalidCreateCase : cannot create data handler"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    const-string v2, "checkInvalidCreateCase : empty argument"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkInvalidCreateCase : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public controlIndicatorBar()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setHideIndicatorBar(Landroid/app/Activity;Z)Z

    return-void
.end method

.method public abstract createView()Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mPopupWindowController:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->getViewTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->onDispatchEvent(I)V

    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public abstract getConcreteClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final getMIsInvalidCreateCase()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mIsInvalidCreateCase:Z

    return v0
.end method

.method public getOpenUUID()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "sdoc_uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public abstract getViewTag()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public initialize()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/UtilManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/UtilManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/addons/base/UtilManager;->onCreate(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

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

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->controlIndicatorBar()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->isCallForceClosed(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    const-string v1, "Force close is enabled, but brush is just created!!. Ignored close command"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->checkInvalidCreateCase()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mIsInvalidCreateCase:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->initialize()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->printDisplayInfo()V

    sget v0, Lcom/samsung/android/support/senl/addons/R$layout;->base_activity_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->addView(Landroid/os/Bundle;Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->setPopupWindowProperties()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity$onCreate$1;-><init>(Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/PersistableBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->initialize()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/UtilManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/UtilManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/UtilManager;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mPopupWindowController:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mPopupWindowController:Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/popupwindow/PopupWindowController;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mEventListener:Lcom/samsung/android/support/senl/addons/base/model/IEventListener;

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mEventListener:Lcom/samsung/android/support/senl/addons/base/model/IEventListener;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/IKeyListener;->onKeyDown(IZZ)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->getBLEEventId(IZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mEventListener:Lcom/samsung/android/support/senl/addons/base/model/IEventListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/addons/base/model/bleremote/IBLEListener;->onBLEEvent(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mEventListener:Lcom/samsung/android/support/senl/addons/base/model/IEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/IKeyListener;->onKeyUp(IZZ)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->isCallForceClosed(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v1, "tool_force_finish_with_save"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mEventListener:Lcom/samsung/android/support/senl/addons/base/model/IEventListener;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/IEventListener;->onFinishDocumentByUser(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getVersionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    const-string v0, "onWindowFocusChanged() - forceHideSoftInput"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->forceHideSoftInput(Landroid/content/Context;)Z

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mIsEnableFullMode:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->hideSystemUI()V

    :cond_1
    return-void
.end method

.method public setEventListener(Lcom/samsung/android/support/senl/addons/base/model/IEventListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/IEventListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mEventListener:Lcom/samsung/android/support/senl/addons/base/model/IEventListener;

    return-void
.end method

.method public setExtraArgumentToView(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setFullMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mIsEnableFullMode:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mIsEnableFullMode:Z

    sget-object p1, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mIsEnableFullMode:Z

    if-eqz v1, :cond_0

    const-string v1, "full"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "show system UI"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mIsEnableFullMode:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->hideSystemUI()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->showSystemUI()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setMIsInvalidCreateCase(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->mIsInvalidCreateCase:Z

    return-void
.end method
