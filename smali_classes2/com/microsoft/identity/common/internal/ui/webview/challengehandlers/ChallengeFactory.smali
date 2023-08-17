.class public final Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/ChallengeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNtlmChallenge(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;-><init>(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
