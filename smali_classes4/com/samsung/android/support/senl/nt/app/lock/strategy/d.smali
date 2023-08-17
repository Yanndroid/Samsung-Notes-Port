.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/strategy/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;

.field public final synthetic b:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/d;->a:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/d;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/d;->a:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/d;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->c(Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;[Ljava/lang/String;)V

    return-void
.end method
