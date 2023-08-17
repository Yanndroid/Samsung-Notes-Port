.class public final Lcom/microsoft/identity/common/java/AuthenticationConstants$AAD;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AAD"
.end annotation


# static fields
.field public static final AAD_VERSION:Ljava/lang/String; = "ver"

.field public static final AAD_VERSION_V1:Ljava/lang/String; = "1.0"

.field public static final AAD_VERSION_V2:Ljava/lang/String; = "2.0"

.field public static final APP_LINK_KEY:Ljava/lang/String; = "app_link"

.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "x-app-name"

.field public static final APP_VERSION:Ljava/lang/String; = "x-app-ver"

.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final BEARER:Ljava/lang/String; = "Bearer"

.field public static final CLIENT_REQUEST_ID:Ljava/lang/String; = "client-request-id"

.field public static final CORRELATION_ID:Ljava/lang/String; = "correlation_id"

.field public static final DEVICE_REGISTRATION_REDIRECT_URI_HOSTNAME:Ljava/lang/String; = "wpj"

.field public static final LOGIN_HINT:Ljava/lang/String; = "login_hint"

.field public static final QUERY_PROMPT_VALUE:Ljava/lang/String; = "login"

.field public static final REALM:Ljava/lang/String; = "realm"

.field public static final REDIRECT_PREFIX:Ljava/lang/String; = "msauth"

.field public static final REQUEST_ID_HEADER:Ljava/lang/String; = "x-ms-request-id"

.field public static final RESOURCE:Ljava/lang/String; = "resource"

.field public static final RETURN_CLIENT_REQUEST_ID:Ljava/lang/String; = "return-client-request-id"

.field public static final UPN_TO_WPJ_KEY:Ljava/lang/String; = "username"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
