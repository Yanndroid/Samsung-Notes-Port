.class Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils;->isSaveAsPermissionGranted(Landroid/app/Activity;Landroidx/fragment/app/Fragment;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field public final synthetic val$permissionCode:I

.field public final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/app/Activity;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$2;->val$permissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$2;->val$fragment:Landroidx/fragment/app/Fragment;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$2;->val$permissionCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSaveDirectoryPickerActivityForResult# to request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$2;->val$permissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentPickerUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->FEATURE_ENABLED_MANAGE_EXTERNAL_STORAGE:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$2;->val$activity:Landroid/app/Activity;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/PermissionUtils;->showAllFilesAccessPermission(Landroid/app/Activity;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$2;->val$fragment:Landroidx/fragment/app/Fragment;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$2;->val$permissionCode:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$2;->val$permissions:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void
.end method
