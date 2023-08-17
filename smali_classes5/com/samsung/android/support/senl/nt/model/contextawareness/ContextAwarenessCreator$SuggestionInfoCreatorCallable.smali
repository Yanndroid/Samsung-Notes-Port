.class Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator$SuggestionInfoCreatorCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestionInfoCreatorCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator$SuggestionInfoCreatorCallable;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;Lcom/samsung/android/support/senl/nt/model/contextawareness/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator$SuggestionInfoCreatorCallable;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator$SuggestionInfoCreatorCallable;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator$SuggestionInfoCreatorCallable;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;->a(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfoFactory;->makeSuggestionInfo(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
