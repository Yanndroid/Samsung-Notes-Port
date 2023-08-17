.class Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showGotoSettingsSnackBar(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$postActionsWhenDenied:[Ljava/lang/Runnable;


# direct methods
.method public constructor <init>([Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$1;->val$postActionsWhenDenied:[Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$1;->val$postActionsWhenDenied:[Ljava/lang/Runnable;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/PermissionUtils;->showDetailsSettingsDialog(Landroid/content/Context;)V

    return-void
.end method
