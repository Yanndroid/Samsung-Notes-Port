.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;IZLcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$TaskResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareDialogTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "ShareDialogTask"

    return-object v0
.end method
