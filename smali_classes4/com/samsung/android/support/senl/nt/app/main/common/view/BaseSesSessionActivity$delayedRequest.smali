.class Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$delayedRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "delayedRequest"
.end annotation


# instance fields
.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$delayedRequest;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$delayedRequest;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->i(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->onSesSessionConnected()Z

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->f(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;)Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->f(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;)Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$SesUiAllListener;->onConnected()V

    :cond_0
    return-void
.end method
