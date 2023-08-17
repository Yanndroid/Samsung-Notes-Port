.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/livesharing/CoDoingSessionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoDoingSessionDelegateImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)V

    return-void
.end method


# virtual methods
.method public onCoDoingStateChanged(Lcom/google/android/livesharing/CoDoingState;)V
    .locals 2
    .param p1    # Lcom/google/android/livesharing/CoDoingState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCoDoingStateChanged# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingGoogleClientDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$500(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "onCoDoingStateChanged# call onStateChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$500(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;-><init>(Lcom/google/android/livesharing/CoDoingState;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;->onStateChanged(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V

    :cond_0
    return-void
.end method

.method public onCoDoingStateQuery()Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/android/livesharing/CoDoingState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$500(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    move-result-object v0

    const-string v1, "LS$LiveSharingGoogleClientDelegate"

    if-nez v0, :cond_0

    const-string v0, "onCoDoingStateQuery# CoDoingDelegate is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$500(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;->onStateQuery()Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    const-string v0, "onCoDoingStateQuery# LiveSharingData is empty"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoDoingStateQuery# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;->getCoDoingState()Lcom/google/android/livesharing/CoDoingState;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
