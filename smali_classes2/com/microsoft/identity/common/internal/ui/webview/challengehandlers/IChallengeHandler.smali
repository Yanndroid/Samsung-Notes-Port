.class public interface abstract Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/IChallengeHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericChallenge:",
        "Ljava/lang/Object;",
        "GenericResponse:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract processChallenge(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericChallenge;)TGenericResponse;"
        }
    .end annotation
.end method
