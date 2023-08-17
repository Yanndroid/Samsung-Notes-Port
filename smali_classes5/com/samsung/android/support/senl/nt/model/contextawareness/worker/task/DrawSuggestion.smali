.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DrawSuggestion;
.super Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DrawSuggestion"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DrawSuggestion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "suggestions"

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DrawSuggestion;->TAG:Ljava/lang/String;

    const-string v2, "run"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->notifyContextAwarenessStarted()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;->mParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;->getValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/ContextAwarenessFeature;->isSupportedDonationApp(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setSuggestionItem(Lcom/samsung/android/app/sdk/deepsky/contract/suggestion/SuggestionItem;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->DRAW_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->makeSuggestionInfo(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setRequest(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;->DRAW_SUGGESTION_SUCCESS:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setResponse(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->DRAW_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setRequest(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;->DRAW_SUGGESTION_FAIL:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setResponse(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->notifyContextAwarenessFinished(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->DRAW_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setRequest(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;)V

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;->DRAW_SUGGESTION_FAIL:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setResponse(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;)V

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DrawSuggestion;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->notifyContextAwarenessFinished(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V

    return-void
.end method
