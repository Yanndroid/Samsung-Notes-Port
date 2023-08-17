.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreTaskResult"
.end annotation


# instance fields
.field private mRestoredFoldersCount:I

.field private mRestoredNotesCount:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRestoredCount()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;->mRestoredNotesCount:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;->mRestoredFoldersCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRestoredFoldersCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;->mRestoredFoldersCount:I

    return v0
.end method

.method public getRestoredNotesCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;->mRestoredNotesCount:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setRestoredFoldersCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;->mRestoredFoldersCount:I

    return-void
.end method

.method public setRestoredNotesCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;->mRestoredNotesCount:I

    return-void
.end method
