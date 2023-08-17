.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/e;->a:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;

    iput-wide p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/e;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/e;->a:Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/e;->b:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;->a(Lcom/samsung/android/support/senl/nt/app/lock/presenter/verify/VerifyPasswordPresenter$1;J)V

    return-void
.end method
