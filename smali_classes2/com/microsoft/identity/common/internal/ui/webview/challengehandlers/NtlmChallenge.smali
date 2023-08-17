.class public Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHandler:Landroid/webkit/HttpAuthHandler;

.field private mHost:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->mHandler:Landroid/webkit/HttpAuthHandler;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->mView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->mHost:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->mRealm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/webkit/HttpAuthHandler;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->mHandler:Landroid/webkit/HttpAuthHandler;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->mView:Landroid/webkit/WebView;

    return-object v0
.end method
