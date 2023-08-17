.class Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodCompatPureImpl"
.end annotation


# static fields
.field private static final KEYBOARD_BT:I = 0x2

.field private static final KEYBOARD_USB:I = 0x4

.field private static MOBILEKEYBOARD_COVERED_YES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InputMethodDelegatePureImpl"

.field private static forceHideSoftInput:Ljava/lang/reflect/Method;

.field private static isAccessoryKeyboardState:Ljava/lang/reflect/Method;

.field private static isInputMethodShown:Ljava/lang/reflect/Method;

.field private static minimizeSoftInput:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public configShowNavigationBar(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public forceHideSoftInput(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 3

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->forceHideSoftInput:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "forceHideSoftInput"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->forceHideSoftInput:Ljava/lang/reflect/Method;

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->forceHideSoftInput:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodDelegatePureImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getKeyboardSettingsSelectedLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNavigationBarHeight(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getNavigationBarHeightIgnoreHasSoftKey(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hideNavigationBar(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public isEnabledMobileKeyboard(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "InputMethodDelegatePureImpl"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :try_start_0
    const-class v1, Landroid/content/res/Configuration;

    const-string v2, "mobileKeyboardCovered"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    sget v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->MOBILEKEYBOARD_COVERED_YES:I

    if-ne p1, v1, :cond_0

    const-string p1, "isEnabledMobileKeyboard return true"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "isEnabledMobileKeyboard does not support mobileKeyboardCoverd field"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "isEnabledMobileKeyboard return false"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isHoneyBoardSIP(Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isInputMethodShown(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->isInputMethodShown:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isInputMethodShown"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->isInputMethodShown:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->isInputMethodShown:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInputMethodShown, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InputMethodDelegatePureImpl"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v0
.end method

.method public isKeyboardConnected(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 5

    const-string v0, "InputMethodDelegatePureImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    sget-object v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->isAccessoryKeyboardState:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isAccessoryKeyboardState"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->isAccessoryKeyboardState:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->isAccessoryKeyboardState:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->isAccessoryKeyboardState:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAccessoryKeyboardState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    move v1, p1

    goto :goto_0

    :catch_0
    const-string p1, "Fail to invoke isAccessoryKeyboardState"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public isNavigationBarHidden(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    invoke-static {p1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isPenDetectionSettingOn(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public minimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z
    .locals 7

    const-string v0, "minimizeSoftInput"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    sget-object v3, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->minimizeSoftInput:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->minimizeSoftInput:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v3, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$InputMethodCompatPureImpl;->minimizeSoftInput:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    aput-object p2, v4, v2

    const/16 p2, 0x16

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "InputMethodDelegatePureImpl"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public showNavigationBar(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
