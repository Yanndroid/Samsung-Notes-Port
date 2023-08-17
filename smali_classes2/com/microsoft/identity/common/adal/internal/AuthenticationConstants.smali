.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$SdkPlatformFields;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$TelemetryEvents;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$AuthorizationIntentAction;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$AuthorizationIntentKey;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$IntuneContentProviderCall;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$CompanyPortalContentProviderCall;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerAccountManagerOperation;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$OAuth2Scopes;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$Broker;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$AAD;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$OAuth2;,
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$Browser;
    }
.end annotation


# static fields
.field public static final ADAL_PACKAGE_NAME:Ljava/lang/String; = "com.microsoft.aad.adal"

.field public static final BUNDLE_MESSAGE:Ljava/lang/String; = "Message"

.field public static final CHARSET_ASCII:Ljava/nio/charset/Charset;

.field public static final CHARSET_UTF8:Ljava/nio/charset/Charset;

.field public static final DEFAULT_EXPIRATION_TIME_SEC:I = 0xe10

.field public static final ENCODING_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final MS_FAMILY_ID:Ljava/lang/String; = "1"

.field public static final ONE_POINT_ZERO:Ljava/lang/String; = "1.0"

.field public static final SP800_108_LABEL:Ljava/lang/String; = "AzureAD-SecureConversation"

.field private static final TAG:Ljava/lang/String; = "AuthenticationConstants"

.field public static final TWO_POINT_ZERO:Ljava/lang/String; = "2.0"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    const-string v0, "ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;->CHARSET_ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;->TAG:Ljava/lang/String;

    return-object v0
.end method
