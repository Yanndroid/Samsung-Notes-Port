.class Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemHoneyboardImpl;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemPOSImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMethodCompatSemHoneyboardImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemPOSImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/j;)V

    const-string v0, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/InputMethodCompatImplFactory$InputMethodCompatSemImpl;->mSamsungKeyboardSettingsProvider:Ljava/lang/String;

    return-void
.end method
