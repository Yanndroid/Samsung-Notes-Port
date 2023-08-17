.class public Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/a;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceScreenWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SyncStateListener"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;->mPreferenceScreenWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onUpdate(ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;->mPreferenceScreenWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;ZLandroidx/preference/PreferenceScreen;ZLandroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;->mPreferenceScreenWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;->mPreferenceScreenWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
