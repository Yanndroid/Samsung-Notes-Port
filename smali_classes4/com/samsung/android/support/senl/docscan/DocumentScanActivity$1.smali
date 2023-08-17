.class Lcom/samsung/android/support/senl/docscan/DocumentScanActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity$1;->this$0:Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity$1;->this$0:Lcom/samsung/android/support/senl/docscan/DocumentScanActivity;

    new-instance v2, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/docscan/DocumentScanActivity$1$1;-><init>(Lcom/samsung/android/support/senl/docscan/DocumentScanActivity$1;)V

    const/4 v3, 0x1

    invoke-static {v1, v3, v2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroid/app/Activity;ILjava/lang/Runnable;[Ljava/lang/String;)V

    return-void
.end method
