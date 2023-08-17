.class public final Lcom/microsoft/identity/client/exception/MsalClientException;
.super Lcom/microsoft/identity/client/exception/MsalException;
.source "SourceFile"


# static fields
.field public static final ADFS_AUTHORITY_VALIDATION_FAILED:Ljava/lang/String; = "adfs_authority_validation_failed"

.field public static final APP_MANIFEST_VALIDATION_ERROR:Ljava/lang/String; = "app_manifest_validation_error"

.field public static final AUTHORITY_VALIDATION_NOT_SUPPORTED:Ljava/lang/String; = "authority_validation_not_supported"

.field public static final BROKER_BIND_FAILURE:Ljava/lang/String; = "Failed to bind the service in broker app"

.field public static final BROKER_NOT_INSTALLED:Ljava/lang/String; = "broker_not_installed"

.field public static final CHROME_NOT_INSTALLED:Ljava/lang/String; = "chrome_not_installed"

.field public static final CURRENT_ACCOUNT_MISMATCH:Ljava/lang/String; = "current_account_mismatch"

.field public static final CURRENT_ACCOUNT_MISMATCH_ERROR_MESSAGE:Ljava/lang/String; = "The signed in account does not match with the provided account."

.field public static final DEVICE_NETWORK_NOT_AVAILABLE:Ljava/lang/String; = "device_network_not_available"

.field public static final DUPLICATE_COMMAND:Ljava/lang/String; = "duplicate_command"

.field public static final DUPLICATE_QUERY_PARAMETER:Ljava/lang/String; = "duplicate_query_parameter"

.field public static final INVALID_JWT:Ljava/lang/String; = "invalid_jwt"

.field public static final INVALID_PARAMETER:Ljava/lang/String; = "invalid_parameter"

.field public static final IO_ERROR:Ljava/lang/String; = "io_error"

.field public static final JSON_PARSE_FAILURE:Ljava/lang/String; = "json_parse_failure"

.field public static final MALFORMED_URL:Ljava/lang/String; = "malformed_url"

.field public static final MULTIPLE_APPS_LISTENING_CUSTOM_URL_SCHEME:Ljava/lang/String; = "multiple_apps_listening_url_scheme"

.field public static final MULTIPLE_MATCHING_TOKENS_DETECTED:Ljava/lang/String; = "multiple_matching_tokens_detected"

.field public static final NOT_ELIGIBLE_TO_USE_BROKER:Ljava/lang/String; = "not_eligible_to_use_broker"

.field public static final NO_CURRENT_ACCOUNT:Ljava/lang/String; = "no_current_account"

.field public static final NO_CURRENT_ACCOUNT_ERROR_MESSAGE:Ljava/lang/String; = "There is no signed in account."

.field public static final NO_SUCH_ALGORITHM:Ljava/lang/String; = "no_such_algorithm"

.field public static final REDIRECT_URI_VALIDATION_ERROR:Ljava/lang/String; = "redirect_uri_validation_error"

.field public static final SAPCA_USE_WITH_MULTI_POLICY_B2C:Ljava/lang/String; = "SingleAccountPublicClientApplication cannot be used with multiple B2C policies."

.field public static final SCOPE_EMPTY_OR_NULL:Ljava/lang/String; = "scope_empty_or_null"

.field public static final STATE_MISMATCH:Ljava/lang/String; = "state_mismatch"

.field public static final UNKNOWN_AUTHORITY:Ljava/lang/String; = "unknown_authority"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown_error"

.field public static final UNSUPPORTED_ENCODING:Ljava/lang/String; = "unsupported_encoding"

.field public static final UNSUPPORTED_URL:Ljava/lang/String; = "unsupported_url"

.field public static final USER_MISMATCH:Ljava/lang/String; = "user_mismatch"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/exception/MsalException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/client/exception/MsalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/client/exception/MsalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
