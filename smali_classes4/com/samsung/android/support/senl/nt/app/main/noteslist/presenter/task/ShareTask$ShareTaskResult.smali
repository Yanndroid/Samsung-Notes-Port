.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareTaskResult"
.end annotation


# instance fields
.field private exportedFileName:Ljava/lang/String;

.field private exportedItemCount:I

.field private intent:Landroid/content/Intent;

.field private isCancelled:Z

.field private isShare:Z

.field private mIsStorageExceed:Z

.field private shareType:I

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->mIsStorageExceed:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->tag:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isCancelled:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->tag:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getExportedFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->exportedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getExportedItemCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->exportedItemCount:I

    return v0
.end method

.method public getShareType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->shareType:I

    return v0
.end method

.method public getStorageExceed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->mIsStorageExceed:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isCancelled:Z

    return v0
.end method

.method public isShare()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare:Z

    return v0
.end method

.method public setCancelled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isCancelled:Z

    return-void
.end method

.method public setExportedFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->exportedFileName:Ljava/lang/String;

    return-void
.end method

.method public setExportedItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->exportedItemCount:I

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->intent:Landroid/content/Intent;

    return-void
.end method

.method public setIsShare(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->isShare:Z

    return-void
.end method

.method public setShareType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->shareType:I

    return-void
.end method

.method public setStorageExceed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$ShareTaskResult;->mIsStorageExceed:Z

    return-void
.end method
