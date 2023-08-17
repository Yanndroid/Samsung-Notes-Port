.class Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity;->checkPermission()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity;

.field public final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/PermissionUtils;->showAllFilesAccessPermission(Landroid/app/Activity;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity;

    const/16 v1, 0x66

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity$1;->val$permissions:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroid/app/Activity;IZ[Ljava/lang/String;)V

    return-void
.end method
