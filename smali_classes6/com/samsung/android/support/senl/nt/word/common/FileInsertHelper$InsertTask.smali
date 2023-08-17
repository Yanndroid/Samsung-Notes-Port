.class Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InsertTask"
.end annotation


# instance fields
.field private final mediaFolder:Ljava/io/File;

.field private final taskName:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->taskName:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->mediaFolder:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$2;->$SwitchMap$com$samsung$android$support$senl$nt$word$common$FileInsertHelper$TaskName:[I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->taskName:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->mediaFolder:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->i(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->mediaFolder:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->g(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->mediaFolder:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->h(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->mediaFolder:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->f(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;->mediaFolder:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->e(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
