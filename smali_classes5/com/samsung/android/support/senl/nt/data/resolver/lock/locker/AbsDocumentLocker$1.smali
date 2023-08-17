.class Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->updateDatabase(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;

.field public final synthetic val$accountGuid:Ljava/lang/String;

.field public final synthetic val$lockType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;->val$lockType:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;->val$accountGuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocUuid:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;->val$lockType:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->encryptContents(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesLockDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocUuid:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;->val$lockType:I

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;->val$accountGuid:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->updateLockTypeAndLockGuid(Ljava/lang/String;IIJLjava/lang/String;)V

    return-void
.end method
