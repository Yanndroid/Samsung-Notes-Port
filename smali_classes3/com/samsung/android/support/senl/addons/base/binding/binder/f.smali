.class public final synthetic Lcom/samsung/android/support/senl/addons/base/binding/binder/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/f;->a:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/f;->a:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;->a(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$TouchBinding;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
