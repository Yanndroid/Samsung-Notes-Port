.class public Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_PAIR_NOT_SUPPORTED_ONEUI_VER:I = 0x1388

.field public static final MULTIWINDOW_MODE_FREEFORM:I = 0x1

.field public static final MULTIWINDOW_MODE_NONE:I = 0x0

.field public static final MULTIWINDOW_MODE_SPLIT_SCREEN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManagerCompat"

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;


# instance fields
.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isTabletLayout(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/samsung/android/support/senl/cm/base/R$integer;->isTablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addWindowFlag(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IZ)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, p4

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addWindowFlag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerCompat"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p4, v0

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p5, :cond_1

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public canAllowByRegion(Ljava/lang/String;II)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->canAllowByRegion(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public clearWindowFlag(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IZ)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearWindowFlag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerCompat"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p4, p4

    and-int/2addr p4, v0

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p5, :cond_1

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public controlIndicatorBar(Landroid/app/Activity;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->controllIndicatorBar(Landroid/app/Activity;I)Z

    move-result p1

    return p1
.end method

.method public controllIndicatorBar(Landroid/app/Activity;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isTabletLayout(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setHideIndicatorBar(Landroid/app/Activity;Z)Z

    move-result p1

    return p1

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setHideIndicatorBar(Landroid/app/Activity;Z)Z

    move-result p1

    return p1
.end method

.method public exitMultiWindow(Landroid/app/Activity;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->exitMultiWindow(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public getCaptionHeight(Landroid/app/Activity;)I
    .locals 5

    const-string v0, "getCaptionHeight"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "com.android.internal.policy.DecorView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mDecorCaptionView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v3, "com.android.internal.widget.DecorCaptionView"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_2
    :goto_0
    return v1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    :goto_1
    const-string v2, "WindowManagerCompat"

    invoke-static {v2, v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public getMultiWindowMode(Landroid/app/Activity;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result p1

    return p1
.end method

.method public getMultiWindowMode(Landroid/content/res/Configuration;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->getMultiWindowMode(Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

.method public getPairWindowMode(Landroid/app/Activity;)I
    .locals 6

    const-string v0, "check pair type : "

    const-string v1, "WindowManagerCompat"

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getOneUIVersion()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x1388

    if-lt v2, v4, :cond_0

    return v3

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    :try_start_0
    const-class v2, Landroid/content/Intent;

    const-string v4, "getPairWindowingMode"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v3
.end method

.method public getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFreeFormWindow(Landroid/app/Activity;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public isMultiWindowMode(Landroid/app/Activity;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public isPairWindowingMode(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getPairWindowMode(Landroid/app/Activity;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result p1

    return p1
.end method

.method public setExtensionFlagDozeMode(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->setExtensionFlagDozeMode(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setExtensionFlagMultiWindowHandlerHidden(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->setExtensionFlagMultiWindowHandlerHidden(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setForceHideFloatingMultiWindow(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->setForceHideFloatingMultiWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public setHideIndicatorBar(Landroid/app/Activity;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->semIsPopOver(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_3

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p2, p2, -0x401

    goto :goto_0

    :cond_3
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p2, p2, 0x400

    :goto_0
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/16 p2, 0x1b

    if-le v1, p2, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    return v0
.end method

.method public setResizeFullscreenWindowOnSoftInput(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->setResizeFullscreenWindowOnSoftInput(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public setSensitivePalmRecognitionEnabled(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;->setSensitivePalmRecognitionEnabled(Landroid/app/Activity;)V

    return-void
.end method

.method public setShowWhenLocked(Landroid/app/Activity;ZZ)V
    .locals 14

    move/from16 v0, p2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowWhenLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManagerCompat"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    invoke-virtual/range {p1 .. p2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const/high16 v7, 0x80000

    move-object v3, p0

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->addWindowFlag(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    const/high16 v12, 0x80000

    move-object v8, p0

    move/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->clearWindowFlag(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setTurnScreenOn(Landroid/app/Activity;ZZ)V
    .locals 14

    move/from16 v0, p2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTurnScreenOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManagerCompat"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    invoke-virtual/range {p1 .. p2}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const/high16 v7, 0x200000

    move-object v3, p0

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->addWindowFlag(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    const/high16 v12, 0x200000

    move-object v8, p0

    move/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->clearWindowFlag(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IZ)V

    :cond_3
    :goto_0
    return-void
.end method
