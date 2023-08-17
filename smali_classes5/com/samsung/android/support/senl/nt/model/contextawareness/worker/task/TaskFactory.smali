.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/TaskFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTask(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/TaskFactory$1;->$SwitchMap$com$samsung$android$support$senl$nt$model$contextawareness$common$param$IContextAwarenessParam$Type:[I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->getType()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/InvalidTask;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/InvalidTask;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/UnsubscribeSuggestion;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/UnsubscribeSuggestion;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/AttachContent;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/AttachContent;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/ExecuteAction;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/ExecuteAction;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DrawSuggestion;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DrawSuggestion;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/RequestSuggestion;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/RequestSuggestion;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/SubscribeSuggestion;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/SubscribeSuggestion;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
