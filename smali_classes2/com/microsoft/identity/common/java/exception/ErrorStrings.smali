.class public final Lcom/microsoft/identity/common/java/exception/ErrorStrings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCESS_DENIED:Ljava/lang/String; = "access_denied"

.field public static final ACCOUNT_IS_SCHEMA_NONCOMPLIANT:Ljava/lang/String; = "Account is missing schema-required fields."

.field public static final ADFS_AUTHORITY_VALIDATION_FAILED:Ljava/lang/String; = "adfs_authority_validation_failed"

.field public static final ANDROIDKEYSTORE_FAILED:Ljava/lang/String; = "android_keystore_failed"

.field public static final ANDROID_CONTEXT_IS_NULL:Ljava/lang/String; = "Android Context is null."

.field public static final APP_PACKAGE_NAME_NOT_FOUND:Ljava/lang/String; = "App package name is not found in the package manager"

.field public static final AUTHORITY_URL_NOT_VALID:Ljava/lang/String; = "authority_url_not_valid"

.field public static final AUTHORITY_VALIDATION_NOT_SUPPORTED:Ljava/lang/String; = "authority_validation_not_supported"

.field public static final AUTHORIZATION_INTENT_IS_NULL:Ljava/lang/String; = "Authorization intent is null."

.field public static final AUTH_REFRESH_FAILED:Ljava/lang/String; = "Refresh token request failed"

.field public static final BROKER_APP_NOT_RESPONDING:Ljava/lang/String; = "Broker application is not responding"

.field public static final BROKER_APP_VERIFICATION_FAILED:Ljava/lang/String; = "Calling app could not be verified"

.field public static final BROKER_BIND_SERVICE_FAILED:Ljava/lang/String; = "Failed to bind the service in broker app"

.field public static final BROKER_PRT_REFRESH_FAILED:Ljava/lang/String; = "Failed to refresh PRT"

.field public static final BROKER_REQUEST_CANCELLED:Ljava/lang/String; = "Broker request cancelled"

.field public static final BROKER_VERIFICATION_FAILED:Ljava/lang/String; = "Signature could not be verified"

.field public static final BRT_TENANT_MISMATCH_ERROR_MESSAGE:Ljava/lang/String; = "Requested account is from a different organization. Please make sure to use your organizational account. If that doesn\u2019t help, please return the device to your administrator."

.field public static final BRT_USER_MISMATCH_ERROR_MESSAGE:Ljava/lang/String; = "The signed in user doesn\'t match with the user this device is registered to."

.field public static final CERTIFICATE_ENCODING_ERROR:Ljava/lang/String; = "Certificate encoding is not generated"

.field public static final CHROME_NOT_INSTALLED:Ljava/lang/String; = "chrome_not_installed"

.field public static final CREDENTIAL_IS_SCHEMA_NONCOMPLIANT:Ljava/lang/String; = "Credential is missing schema-required fields."

.field public static final DECLINED_SCOPE_ERROR_CODE:Ljava/lang/String; = "declined_scope_error"

.field public static final DECLINED_SCOPE_ERROR_MESSAGE:Ljava/lang/String; = "Some or all requested scopes have been declined by the Server"

.field public static final DECRYPTION_ERROR:Ljava/lang/String; = "decryption_error"

.field public static final DECRYPTION_FAILED:Ljava/lang/String; = "decryption_failed"

.field public static final DEVELOPER_REDIRECTURI_INVALID:Ljava/lang/String; = "The redirectUri for broker is invalid"

.field public static final DEVICE_CERTIFICATE_API_EXCEPTION:Ljava/lang/String; = "Device certificate API has exception"

.field public static final DEVICE_CERTIFICATE_REQUEST_INVALID:Ljava/lang/String; = "Device certificate request is invalid"

.field public static final DEVICE_CODE_FLOW_AUTHORIZATION_DECLINED_ERROR_CODE:Ljava/lang/String; = "authorization_declined"

.field public static final DEVICE_CODE_FLOW_AUTHORIZATION_DECLINED_ERROR_MESSAGE:Ljava/lang/String; = "The end user has denied the authorization request. Re-run the Device Code Flow Protocol with another user."

.field public static final DEVICE_CODE_FLOW_AUTHORIZATION_PENDING_ERROR_CODE:Ljava/lang/String; = "authorization_pending"

.field public static final DEVICE_CODE_FLOW_BAD_VERIFICATION_ERROR_CODE:Ljava/lang/String; = "bad_verification_code"

.field public static final DEVICE_CODE_FLOW_BAD_VERIFICATION_ERROR_MESSAGE:Ljava/lang/String; = "The token request contains a device code that was not recognized. Verify that the client is sending the right device code."

.field public static final DEVICE_CODE_FLOW_DEFAULT_ERROR_MESSAGE:Ljava/lang/String; = "Device Code Flow has failed with an unexpected error. The error code shown was received from the result object."

.field public static final DEVICE_CODE_FLOW_EXPIRED_TOKEN_ERROR_CODE:Ljava/lang/String; = "expired_token"

.field public static final DEVICE_CODE_FLOW_EXPIRED_TOKEN_ERROR_MESSAGE:Ljava/lang/String; = "The token has expired, therefore authentication is no longer possible with this flow attempt. Re-run the Device Code Flow Protocol to try again."

.field public static final DEVICE_CODE_FLOW_INVALID_GRANT_ERROR_MESSAGE:Ljava/lang/String; = "The token for this device code has already been redeemed. To receive another access token, please re-run the Device Code Flow protocol."

.field public static final DEVICE_CODE_FLOW_INVALID_SCOPE_ERROR_MESSAGE:Ljava/lang/String; = "The scope attached to the device code flow request is invalid. Please re-try with a valid scope."

.field public static final DEVICE_DELETED_ON_SERVER_IRRECOVERABLE_ERROR_MESSAGE:Ljava/lang/String; = "This device was deleted from the tenant. This is an irrecoverable error. Only tenant administrator can re-register this device."

.field public static final DEVICE_LEAVE_FAILED:Ljava/lang/String; = "device_leave_failed"

.field public static final DEVICE_NETWORK_NOT_AVAILABLE:Ljava/lang/String; = "device_network_not_available"

.field public static final DEVICE_REGISTRATION_FAILED:Ljava/lang/String; = "Device registration failed"

.field public static final DEVICE_REGISTRATION_MISSING_FROM_CLIENT:Ljava/lang/String; = "Device registration data not found."

.field public static final DUPLICATE_QUERY_PARAMETER:Ljava/lang/String; = "duplicate_query_parameter"

.field public static final ENCRYPTION_ERROR:Ljava/lang/String; = "encryption_error"

.field public static final ERROR_RETRIEVING_DEVICE_STATE:Ljava/lang/String; = "Error retrieving device state"

.field public static final FAILED_TO_GET_CAPABILITIES:Ljava/lang/String; = "Could not get the capabilities"

.field public static final INVALID_BROKER_REFRESH_TOKEN:Ljava/lang/String; = "Broker refresh token is invalid"

.field public static final INVALID_INSTANCE:Ljava/lang/String; = "invalid_instance"

.field public static final INVALID_JWT:Ljava/lang/String; = "invalid_jwt"

.field public static final INVALID_REQUEST:Ljava/lang/String; = "invalid_request"

.field public static final INVALID_SCOPE:Ljava/lang/String; = "invalid_scope"

.field public static final IO_ERROR:Ljava/lang/String; = "io_error"

.field public static final JSON_PARSE_FAILURE:Ljava/lang/String; = "json_parse_failure"

.field public static final KEY_CHAIN_CERTIFICATE_EXCEPTION:Ljava/lang/String; = "Key Chain certificate exception"

.field public static final KEY_CHAIN_PRIVATE_KEY_EXCEPTION:Ljava/lang/String; = "Key Chain private key exception"

.field public static final KEY_CHAIN_PUBLIC_KEY_EXCEPTION:Ljava/lang/String; = "Key Chain public key exception"

.field public static final KEY_NOT_FOUND:Ljava/lang/String; = "key_not_found"

.field public static final MALFORMED_URL:Ljava/lang/String; = "malformed_url"

.field public static final MULTIPLE_ACCOUNT_PCA_INIT_FAIL_ACCOUNT_MODE_ERROR_CODE:Ljava/lang/String; = "multiple_account_pca_init_fail_account_mode"

.field public static final MULTIPLE_ACCOUNT_PCA_INIT_FAIL_ACCOUNT_MODE_ERROR_MESSAGE:Ljava/lang/String; = "AccountMode in configuration is not set to multiple. Cannot initialize multiple account PublicClientApplication."

.field public static final MULTIPLE_ACCOUNT_PCA_INIT_FAIL_ON_SHARED_DEVICE_ERROR_CODE:Ljava/lang/String; = "multiple_account_pca_init_fail_on_shared_device"

.field public static final MULTIPLE_ACCOUNT_PCA_INIT_FAIL_ON_SHARED_DEVICE_ERROR_MESSAGE:Ljava/lang/String; = "This application is not supported in the shared device mode. Please contact application developer to update the app."

.field public static final MULTIPLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_CODE:Ljava/lang/String; = "multiple_account_pca_init_fail_unknown_reason"

.field public static final MULTIPLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_MESSAGE:Ljava/lang/String; = "Multiple account PublicClientApplication could not be created for unknown reasons"

.field public static final MULTIPLE_MATCHING_TOKENS_DETECTED:Ljava/lang/String; = "multiple_matching_tokens_detected"

.field public static final NO_ACCOUNT_FOUND:Ljava/lang/String; = "no_account_found"

.field public static final NO_AVAILABLE_BROWSER_FOUND:Ljava/lang/String; = "No available browser installed on the device."

.field public static final NO_NETWORK_CONNECTION_POWER_OPTIMIZATION:Ljava/lang/String; = "device_network_not_available_doze_mode"

.field public static final NO_SUCH_ALGORITHM:Ljava/lang/String; = "no_such_algorithm"

.field public static final NO_TOKENS_FOUND:Ljava/lang/String; = "no_tokens_found"

.field public static final PACKAGE_NAME_NOT_FOUND:Ljava/lang/String; = "Package name is not resolved"

.field public static final REGISTERED_SHARED_DEVICE_DELETED_ON_SERVER_ERROR_CODE:Ljava/lang/String; = "registered_shared_device_deleted_on_server"

.field public static final REQUEST_TIMEOUT:Ljava/lang/String; = "request_timeout"

.field public static final SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "service_not_available"

.field public static final SIGNATURE_EXCEPTION:Ljava/lang/String; = "Signature exception"

.field public static final SINGLE_ACCOUNT_PCA_INIT_FAIL_ACCOUNT_MODE_ERROR_CODE:Ljava/lang/String; = "single_account_pca_init_fail_account_mode"

.field public static final SINGLE_ACCOUNT_PCA_INIT_FAIL_ACCOUNT_MODE_ERROR_MESSAGE:Ljava/lang/String; = "AccountMode in configuration is not set to single. Cannot initialize single account PublicClientApplication."

.field public static final SINGLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_CODE:Ljava/lang/String; = "single_account_pca_init_fail_unknown_reason"

.field public static final SINGLE_ACCOUNT_PCA_INIT_FAIL_UNKNOWN_REASON_ERROR_MESSAGE:Ljava/lang/String; = "A single account public client application could not be created for unknown reasons."

.field public static final SOCKET_TIMEOUT:Ljava/lang/String; = "socket_timeout"

.field public static final STATE_MISMATCH:Ljava/lang/String; = "state_mismatch"

.field public static final STK_PATCHING_FAILED:Ljava/lang/String; = "STK patching failed"

.field public static final UNAUTHORIZED_CLIENT:Ljava/lang/String; = "unauthorized_client"

.field public static final UNKNOWN_CALLER:Ljava/lang/String; = "unknown_caller"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown_error"

.field public static final UNRESOLVABLE_INTENT:Ljava/lang/String; = "unresolvable_intent"

.field public static final UNSUPPORTED_BROKER_VERSION_ERROR_CODE:Ljava/lang/String; = "unsupported_broker_version"

.field public static final UNSUPPORTED_BROKER_VERSION_ERROR_MESSAGE:Ljava/lang/String; = "Please update Intune Company Portal and/or Microsoft Authenticator to the latest version."

.field public static final UNSUPPORTED_ENCODING:Ljava/lang/String; = "unsupported_encoding"

.field public static final UNSUPPORTED_URL:Ljava/lang/String; = "unsupported_url"

.field public static final USERLESS_DEVICE_DELETED_ON_SERVER_ERROR_CODE:Ljava/lang/String; = "userless_device_deleted_on_server"

.field public static final USER_CANCELLED:Ljava/lang/String; = "User cancelled"

.field public static final USER_MISMATCH:Ljava/lang/String; = "user_mismatch"

.field public static final WEBCP_URI_INVALID:Ljava/lang/String; = "webcp_uri_invalid"

.field public static final WEBVIEW_REDIRECTURL_NOT_SSL_PROTECTED:Ljava/lang/String; = "Redirect url scheme not SSL protected"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
