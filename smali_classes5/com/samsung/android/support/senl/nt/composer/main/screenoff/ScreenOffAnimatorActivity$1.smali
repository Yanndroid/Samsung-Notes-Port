.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityLifeCycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;->ACTIVITY_POST_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/ExposedActivityFinishFeature;->isActivityPostResumedSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;->ACTIVITY_RESUMED:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffAnimatorActivity$FinishReason;)V

    :cond_1
    return-void
.end method
