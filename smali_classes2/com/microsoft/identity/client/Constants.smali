.class final Lcom/microsoft/identity/client/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/Constants$MsalInternalError;,
        Lcom/microsoft/identity/client/Constants$MsalErrorMessage;,
        Lcom/microsoft/identity/client/Constants$UIResponse;
    }
.end annotation


# static fields
.field public static final AUTHORIZATION_FINAL_URL:Ljava/lang/String; = "com.microsoft.aad.adal:BrowserFinalUrl"

.field public static final CUSTOM_TAB_REDIRECT:Ljava/lang/String; = "com.microsoft.identity.customtab.redirect"

.field public static final REQUEST_ID:Ljava/lang/String; = "com.microsoft.aad.adal:RequestId"

.field public static final REQUEST_URL_KEY:Ljava/lang/String; = "com.microsoft.identity.request.url.key"

.field public static final TELEMETRY_REQUEST_ID:Ljava/lang/String; = "com.microsoft.identity.telemetry.request.id"

.field public static final WEBVIEW_SELECTION:Ljava/lang/String; = "com.microsoft.identity.webview.selection"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
