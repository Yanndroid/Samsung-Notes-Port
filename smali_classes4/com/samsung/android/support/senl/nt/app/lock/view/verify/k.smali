.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/view/verify/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/k;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/k;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    return-void
.end method
