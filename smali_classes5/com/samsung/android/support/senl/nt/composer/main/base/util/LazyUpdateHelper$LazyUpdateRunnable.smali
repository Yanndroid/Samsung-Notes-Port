.class Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LazyUpdateRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public mInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;->mInfo:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/util/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;->mInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$Callback;->onLazyUpdate(Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;->mInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
