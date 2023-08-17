.class Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;->showHttpAuthDialog(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;

.field public final synthetic val$methodTag:Ljava/lang/String;

.field public final synthetic val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

.field public final synthetic val$passwordView:Landroid/widget/EditText;

.field public final synthetic val$usernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;Ljava/lang/String;Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$methodTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

    iput-object p4, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$usernameView:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$passwordView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$methodTag:Ljava/lang/String;

    const-string p2, "Proceeding with user supplied username and password."

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->getHandler()Landroid/webkit/HttpAuthHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$usernameView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$3;->val$passwordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
