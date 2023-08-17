.class public final synthetic Lcom/samsung/android/support/senl/addons/base/binding/binder/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/d;->a:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/d;->a:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;->b(Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion$LongClickBinding;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
