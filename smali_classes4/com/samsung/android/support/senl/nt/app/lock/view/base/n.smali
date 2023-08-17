.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/view/base/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/n;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/n;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/n;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/n;->b:Z

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->b(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;Z)V

    return-void
.end method
