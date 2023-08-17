.class Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils;->startAttachActivityForResult(Landroidx/fragment/app/Fragment;ILjava/lang/Runnable;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field public final synthetic val$permissionCode:I

.field public final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$1;->val$fragment:Landroidx/fragment/app/Fragment;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$1;->val$permissionCode:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ContentPickerUtils"

    const-string v1, "to get permissions"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$1;->val$fragment:Landroidx/fragment/app/Fragment;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$1;->val$permissionCode:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$1;->val$permissions:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void
.end method
