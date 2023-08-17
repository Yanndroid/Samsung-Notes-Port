.class Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->postToast(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
