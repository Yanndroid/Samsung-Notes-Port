.class public Lcom/microsoft/identity/common/java/AuthenticationConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/AuthenticationConstants$LocalBroadcasterFields;,
        Lcom/microsoft/identity/common/java/AuthenticationConstants$LocalBroadcasterAliases;,
        Lcom/microsoft/identity/common/java/AuthenticationConstants$SdkPlatformFields;,
        Lcom/microsoft/identity/common/java/AuthenticationConstants$OAuth2Scopes;,
        Lcom/microsoft/identity/common/java/AuthenticationConstants$Broker;,
        Lcom/microsoft/identity/common/java/AuthenticationConstants$AAD;,
        Lcom/microsoft/identity/common/java/AuthenticationConstants$OAuth2;,
        Lcom/microsoft/identity/common/java/AuthenticationConstants$Browser;,
        Lcom/microsoft/identity/common/java/AuthenticationConstants$BrokerResponse;,
        Lcom/microsoft/identity/common/java/AuthenticationConstants$UIRequest;
    }
.end annotation


# static fields
.field public static final CHARSET_ASCII:Ljava/nio/charset/Charset;

.field public static final CHARSET_UTF8:Ljava/nio/charset/Charset;

.field public static final DEFAULT_EXPIRATION_TIME_SEC:I = 0xe10

.field public static final DEFAULT_SCOPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENCODING_ASCII_STRING:Ljava/lang/String; = "ASCII"

.field public static final ENCODING_UTF8:Ljava/nio/charset/Charset;

.field public static final ENCODING_UTF8_STRING:Ljava/lang/String; = "UTF-8"

.field public static final HTTPS_PROTOCOL_STRING:Ljava/lang/String; = "https"

.field public static final SP800_108_LABEL:Ljava/lang/String; = "AzureAD-SecureConversation"


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lcom/microsoft/identity/common/java/AuthenticationConstants;->ENCODING_UTF8:Ljava/nio/charset/Charset;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/AuthenticationConstants;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    const-string v0, "ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/AuthenticationConstants;->CHARSET_ASCII:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "openid"

    const-string v2, "offline_access"

    const-string v3, "profile"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/AuthenticationConstants;->DEFAULT_SCOPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
