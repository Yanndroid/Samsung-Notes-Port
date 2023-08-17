.class public final synthetic Lcom/samsung/android/support/senl/addons/base/binding/binder/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/a;->a:Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/a;->a:Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/binding/binder/a;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->a(Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;Ljava/lang/Object;J)V

    return-void
.end method
