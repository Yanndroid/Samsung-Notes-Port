.class Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach;

.field public final synthetic val$penDetectMode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach$1;->val$penDetectMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.notes"

    const-string v5, "com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pen_intent_com"

    const-string v5, "pen_detach"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/Task;->createIntent(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/StartPenDetach$1;->val$penDetectMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/task/Task;->setPenDetectMode(I)V

    return-void
.end method
