.class public Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_SHOW_BOARD:Ljava/lang/String; = "com.samsung.android.honeyboard.action.SHOW_BOARD"

.field public static final EXTRA_KEY_BOARD:Ljava/lang/String; = "board"

.field public static final EXTRA_VALUE_BOARD_EAGLE_EYE:Ljava/lang/String; = "eagle_eye"

.field public static final EXTRA_VALUE_BOARD_HBD_TRANSLATE:Ljava/lang/String; = "translation"

.field public static final TAG:Ljava/lang/String; = "InputMethodCompat"

.field private static sInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;


# instance fields
.field private mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static hasSoftKey()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory;->hasSoftKey()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public canShowHoneyBoardSIP(Landroid/content/Context;Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "InputMethodCompat"

    if-eqz v1, :cond_1

    const-string p1, "canShowHoneyBoardSIP# cannot show clipboard, caused by isKeyguardLocked is true."

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isShowImeWithHardKeyboardEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "canShowHoneyBoardSIP# isShowImeWithHardKeyboardEnabled is false"

    goto :goto_0

    :cond_2
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->isHoneyBoardSIP(Landroid/content/Context;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    const-string p1, "canShowHoneyBoardSIP# view focus or imm.isActive() has problem."

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method

.method public configShowNavigationBar(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->configShowNavigationBar(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public forceHideSoftInput(Landroid/content/Context;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->forceHideSoftInput(Landroid/view/inputmethod/InputMethodManager;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getInputMethodWindowVisibleHeight(Landroid/content/Context;)I
    .locals 5

    const-string v0, "InputMethodCompat"

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInputMethodWindowVisibleHeight"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    return p1

    :catch_0
    :try_start_2
    const-string p1, "getCurrentSIPHeight() : IllegalAccessException"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string p1, "getCurrentSIPHeight() : InvocationTargetException"
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    const-string p1, "getCurrentSIPHeight() : NoSuchMethodException"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public getKeyboardSettingsSelectedLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->getKeyboardSettingsSelectedLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNavigationBarHeight(Landroid/content/Context;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getNavigationBarHeightIgnoreHasSoftKey(Landroid/content/Context;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->configShowNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->getNavigationBarHeightIgnoreHasSoftKey(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hideNavigationBar(Landroid/content/Context;Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->hideNavigationBar(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hideSoftInput(Landroid/content/Context;Landroid/view/View;)Z
    .locals 2

    const-string v0, "InputMethodCompat"

    const-string v1, "hideSoftInput"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public hideSoftInput(Landroid/content/Context;Landroid/view/View;Landroid/os/ResultReceiver;)Z
    .locals 2

    const-string v0, "InputMethodCompat"

    const-string v1, "HideSoftInput"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public isEnabledMobileKeyboard(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isInputMethodShown(Landroid/content/Context;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->isInputMethodShown(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result p1

    return p1
.end method

.method public isKeyboardConnected(Landroid/content/Context;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->isKeyboardConnected(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result p1

    return p1
.end method

.method public isNavigationBarHidden(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->isNavigationBarHidden(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isPenDetectionSettingOn(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->isPenDetectionSettingOn(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isShowImeWithHardKeyboardEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isShowImeWithHardKeyboardEnabled(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isKeyboardConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public isShowImeWithHardKeyboardEnabledForDexDualMode(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isShowImeWithHardKeyboardEnabledForDex(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isKeyboardConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public minimizeSoftInput(Landroid/content/Context;Landroid/view/View;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-interface {v1, v2, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->minimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)Z

    :cond_1
    :goto_0
    return v0
.end method

.method public showNavigationBar(Landroid/content/Context;Landroid/view/View;I)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;->showNavigationBar(Landroid/content/Context;Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public showSoftInput(Landroid/content/Context;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "InputMethodCompat"

    const-string v1, "ShowSoftInput# Bundle"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-nez p1, :cond_0

    const-string p1, "ShowSoftInput# Bundle# InputMethodManager is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "com.samsung.android.honeyboard.action.SHOW_BOARD"

    invoke-virtual {p1, p2, v0, p3}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public showSoftInput(Landroid/content/Context;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->showSoftInput(Landroid/content/Context;Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method public showSoftInput(Landroid/content/Context;Landroid/view/View;Landroid/os/ResultReceiver;)Z
    .locals 2

    const-string v0, "InputMethodCompat"

    const-string v1, "ShowSoftInput# ResultReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isShowImeWithHardKeyboardEnabled(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public showSoftInput(Landroid/content/Context;Landroid/view/View;Z)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSoftInput# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodCompat"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_1

    const-string p1, "showSoftInput# InputMethodManager is null"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isShowImeWithHardKeyboardEnabledForDexDualMode(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isShowImeWithHardKeyboardEnabled(Landroid/content/Context;)Z

    move-result p1

    :goto_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p2, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method
