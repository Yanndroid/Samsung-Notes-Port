.class public Lcom/microsoft/identity/common/internal/ui/webview/ExpectedPage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public mCallback:Lcom/microsoft/identity/common/internal/ui/webview/OnPageLoadedCallback;

.field public mExpectedPageUrlStartsWith:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/ui/webview/OnPageLoadedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/ExpectedPage;->mExpectedPageUrlStartsWith:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/ExpectedPage;->mCallback:Lcom/microsoft/identity/common/internal/ui/webview/OnPageLoadedCallback;

    return-void
.end method
