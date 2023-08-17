.class Lcom/samsung/android/app/notes/MemoApplication$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/MemoApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/MemoApplication;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/MemoApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/MemoApplication$7;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->isSupportedInAppCollaborationAsClient()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/MemoApplication$7;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->initContinuityService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
