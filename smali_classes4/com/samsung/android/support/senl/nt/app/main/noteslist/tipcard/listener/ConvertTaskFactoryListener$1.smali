.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;->updateTipCardAfterDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    iget-boolean v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mIsCancelled:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTipCardProgress:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;->removeTipCard(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTipCardProgress:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->getFailed()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardFailToConvertStorageError;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardFailToConvertStorageError;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    :cond_1
    return-void
.end method
