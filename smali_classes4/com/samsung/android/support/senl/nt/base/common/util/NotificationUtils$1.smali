.class Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->checkedNotificationPermissions(Landroidx/fragment/app/Fragment;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field public final synthetic val$requestCode:I


# direct methods
.method public constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils$1;->val$requestCode:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkNotificationPermissions# to get POST_NOTIFICATIONS permission : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils$1;->val$requestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils$1;->val$fragment:Landroidx/fragment/app/Fragment;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils$1;->val$requestCode:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getPermissionsForPostNotification()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void
.end method
