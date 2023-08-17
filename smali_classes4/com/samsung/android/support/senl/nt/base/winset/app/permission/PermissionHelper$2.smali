.class Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$2;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showGotoSettingsSnackBar(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$postActionsWhenDenied:[Ljava/lang/Runnable;


# direct methods
.method public constructor <init>([Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$2;->val$postActionsWhenDenied:[Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$2;->val$postActionsWhenDenied:[Ljava/lang/Runnable;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$2;->val$postActionsWhenDenied:[Ljava/lang/Runnable;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$2;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method
