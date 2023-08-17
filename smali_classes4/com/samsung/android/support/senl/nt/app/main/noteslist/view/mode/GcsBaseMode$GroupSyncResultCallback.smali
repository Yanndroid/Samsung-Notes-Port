.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupSyncResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupSyncResultCallback"
.end annotation


# instance fields
.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback;Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$GroupSyncResultCallback;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
