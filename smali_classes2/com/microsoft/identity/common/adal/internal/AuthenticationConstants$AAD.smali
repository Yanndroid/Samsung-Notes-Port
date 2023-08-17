.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$AAD;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AAD"
.end annotation


# static fields
.field public static final ADAL_BROKER_VERSION:Ljava/lang/String; = "x-client-brkrver"

.field public static final ADAL_ID_CPU:Ljava/lang/String; = "x-client-CPU"

.field public static final ADAL_ID_DM:Ljava/lang/String; = "x-client-DM"

.field public static final ADAL_ID_OS_VER:Ljava/lang/String; = "x-client-OS"

.field public static final ADAL_ID_PLATFORM:Ljava/lang/String; = "x-client-SKU"

.field public static final ADAL_ID_PLATFORM_VALUE:Ljava/lang/String; = "Android"

.field public static final ADAL_ID_VERSION:Ljava/lang/String; = "x-client-Ver"

.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "x-app-name"

.field public static final APP_VERSION:Ljava/lang/String; = "x-app-ver"

.field public static final AUTHORIZATION_URI:Ljava/lang/String; = "authorization_uri"

.field public static final CLIENT_REQUEST_ID:Ljava/lang/String; = "client-request-id"

.field public static final CORRELATION_ID:Ljava/lang/String; = "correlation_id"

.field public static final LOGIN_HINT:Ljava/lang/String; = "login_hint"

.field public static final QUERY_PROMPT:Ljava/lang/String; = "prompt"

.field public static final QUERY_PROMPT_REFRESH_SESSION_VALUE:Ljava/lang/String; = "refresh_session"

.field public static final QUERY_PROMPT_VALUE:Ljava/lang/String; = "login"

.field public static final REALM:Ljava/lang/String; = "realm"

.field public static final REQUEST_ID_HEADER:Ljava/lang/String; = "x-ms-request-id"

.field public static final RESOURCE:Ljava/lang/String; = "resource"

.field public static final RETURN_CLIENT_REQUEST_ID:Ljava/lang/String; = "return-client-request-id"

.field public static final WEB_UI_CANCEL:Ljava/lang/String; = "access_denied"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
