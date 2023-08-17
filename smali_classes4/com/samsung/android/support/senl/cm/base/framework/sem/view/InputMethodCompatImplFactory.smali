.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemPOSImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemHoneyboardImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_SAMSUNGKEYBOARD_PKG_NAME:Ljava/lang/String; = "com.sec.android.inputmethod"

.field private static final HONEYBOARD_SETTINGS_PROVIDER:Ljava/lang/String; = "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

.field private static final KEYBOARD_SETTINGS_PROVIDER:Ljava/lang/String; = "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

.field private static final SAMSUNG_HONEYBOARD_PKG_NAME:Ljava/lang/String; = "com.samsung.android.honeyboard"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    const-string v2, "com.sec.android.inputmethod"

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.honeyboard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemHoneyboardImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemHoneyboardImpl;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemPOSImpl;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemPOSImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/j;)V

    return-object p1

    :cond_1
    const/16 v0, 0x1c

    if-lt p1, v0, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemPOSImpl;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemPOSImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/j;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemImpl;-><init>()V

    return-object p1

    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;

    move-result-object p1

    return-object p1
.end method
