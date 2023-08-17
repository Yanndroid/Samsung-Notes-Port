.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/view/base/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/d;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/d;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->authenticate()V

    return-void
.end method
