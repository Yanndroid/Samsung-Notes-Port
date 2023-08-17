.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/UnsubscribeSuggestion;
.super Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UnsubscribeSuggestion"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/UnsubscribeSuggestion;->TAG:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/UnsubscribeSuggestion;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;->mParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->getSubscribeId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->notifyContextAwarenessStarted()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->with(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/DeepSky;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getSuggestionRequest()Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;->mParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->getSubscribeId()I

    move-result v4

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;->createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;->unsubscribeSuggestion(ILandroid/app/PendingIntent;)Z

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->UNSUBSCRIBE_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setRequest(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;->UNSUBSCRIBE_SUGGESTION_SUCCESS:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setResponse(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;->UNSUBSCRIBE_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setRequest(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Request;)V

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;->UNSUBSCRIBE_SUGGESTION_FAIL:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/ContextAwarenessResult;->setResponse(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult$Response;)V

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/UnsubscribeSuggestion;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessListenerManager;->notifyContextAwarenessFinished(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/IContextAwarenessResult;)V

    return-void
.end method
