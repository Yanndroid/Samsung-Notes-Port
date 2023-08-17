.class public Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker_LifecycleAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/GeneratedAdapter;


# instance fields
.field public final mReceiver:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker_LifecycleAdapter;->mReceiver:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    return-void
.end method


# virtual methods
.method public callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V
    .locals 1

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_2

    if-eqz v0, :cond_1

    const/4 p3, 0x4

    const-string v0, "onStateEvent"

    invoke-virtual {p4, v0, p3}, Landroidx/lifecycle/MethodCallsLogger;->approveCall(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker_LifecycleAdapter;->mReceiver:Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->onStateEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_2
    return-void
.end method
