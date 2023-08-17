.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;->onFinish(IILjava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$errorCount:I

.field public final synthetic val$successCount:I

.field public final synthetic val$total:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;ILandroid/app/Activity;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;->val$errorCount:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;->val$total:I

    iput p5, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;->val$successCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTipCardProgress:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;->removeTipCard(I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;->val$errorCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_imported_corrupted_files:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;->val$total:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;->val$successCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    iget v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;->val$errorCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5, v5}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method
