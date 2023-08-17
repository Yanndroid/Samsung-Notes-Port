.class public interface abstract Lcom/microsoft/identity/common/java/ui/webview/authorization/IAuthorizationCompletionCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onChallengeResponseReceived(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)V
    .param p1    # Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
        .annotation build Ledu/umd/cs/findbugs/annotations/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setPKeyAuthStatus(Z)V
.end method
