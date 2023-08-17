.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/d;->a:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/d;->a:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/d;->b:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->c(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;I)V

    return-void
.end method
