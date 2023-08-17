.class public Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$Callback;

.field public mHandler:Landroid/os/Handler;

.field public mLazyUpdateRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;

.field public mUpdateInterval:J


# direct methods
.method public constructor <init>(JLcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$Callback;)V
    .locals 0
    .param p3    # Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$Callback;)V

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mUpdateInterval:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$Callback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mUpdateInterval:J

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$Callback;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/util/a;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mLazyUpdateRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;

    return-void
.end method


# virtual methods
.method public updateValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mLazyUpdateRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mLazyUpdateRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mLazyUpdateRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper$LazyUpdateRunnable;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/LazyUpdateHelper;->mUpdateInterval:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
