.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/view/base/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

.field public final synthetic b:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/m;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/m;->b:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/m;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/m;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->a(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method
