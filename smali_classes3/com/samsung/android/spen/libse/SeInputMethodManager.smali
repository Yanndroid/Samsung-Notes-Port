.class public Lcom/samsung/android/spen/libse/SeInputMethodManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/InputMethodManagerInterface;


# instance fields
.field public instance:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public isAccessoryKeyboardState()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    throw v0
.end method

.method public isInputMethodShown()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeInputMethodManager;->instance:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    throw v0
.end method
