.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/view/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/a;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/a;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->b(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;Landroid/content/DialogInterface;)V

    return-void
.end method
