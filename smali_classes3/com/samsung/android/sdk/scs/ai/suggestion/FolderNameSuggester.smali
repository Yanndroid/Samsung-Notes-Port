.class public Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggester;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderNameSuggester"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProviderExecutor:Lcom/samsung/android/sdk/scs/ai/suggestion/SuggestionProviderExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggester;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/suggestion/SuggestionProviderExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/suggestion/SuggestionProviderExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggester;->mProviderExecutor:Lcom/samsung/android/sdk/scs/ai/suggestion/SuggestionProviderExecutor;

    return-void
.end method


# virtual methods
.method public suggest(Ljava/util/List;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "FolderNameSuggester"

    const-string/jumbo v1, "suggest() executed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggestionRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggester;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggestionRunnable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggestionRunnable;->setPackageNames(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggester;->mProviderExecutor:Lcom/samsung/android/sdk/scs/ai/suggestion/SuggestionProviderExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    return-object p1
.end method
