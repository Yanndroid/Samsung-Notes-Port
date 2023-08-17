.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/strategy/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/i;->a:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/i;->a:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->d(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;)V

    return-void
.end method
