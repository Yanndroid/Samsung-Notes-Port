.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->setConvertingItem(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

.field public final synthetic val$isConverting:Z

.field public final synthetic val$isLocked:Z

.field public final synthetic val$noteUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;ZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$isLocked:Z

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$isConverting:Z

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$noteUuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConvertingItem() - isLocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$isLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isConverting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$isConverting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$noteUuid:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$isConverting:Z

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->setUnlockConvertingState(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$noteUuid:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$isLocked:Z

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$isConverting:Z

    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;Ljava/lang/String;ZZ)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$isConverting:Z

    if-nez v0, :cond_0

    const-string v0, "setConvertingItem() - remove"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper$4;->val$noteUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->removeUnlockConvertingState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
