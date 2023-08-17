.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$Broker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Broker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$Broker$CliTelemInfo;
    }
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account.object"

.field public static final ACCOUNT_ACCESS_TOKEN:Ljava/lang/String; = "account.access.token"

.field public static final ACCOUNT_ADD_NEW:Ljava/lang/String; = "account.add.new"

.field public static final ACCOUNT_AUTHORITY:Ljava/lang/String; = "account.authority"

.field public static final ACCOUNT_CLAIMS:Ljava/lang/String; = "account.claims"

.field public static final ACCOUNT_CLIENTID_KEY:Ljava/lang/String; = "account.clientid.key"

.field public static final ACCOUNT_CLIENT_SECRET_KEY:Ljava/lang/String; = "account.client.secret.key"

.field public static final ACCOUNT_CORRELATIONID:Ljava/lang/String; = "account.correlationid"

.field public static final ACCOUNT_DEFAULT_NAME:Ljava/lang/String; = "Default"

.field public static final ACCOUNT_EXPIREDATE:Ljava/lang/String; = "account.expiredate"

.field public static final ACCOUNT_EXTRA_QUERY_PARAM:Ljava/lang/String; = "account.extra.query.param"

.field public static final ACCOUNT_HOME_ACCOUNT_ID:Ljava/lang/String; = "account.home.account.id"

.field public static final ACCOUNT_IDTOKEN:Ljava/lang/String; = "account.idtoken"

.field public static final ACCOUNT_INITIAL_NAME:Ljava/lang/String; = "aad"

.field public static final ACCOUNT_INITIAL_REQUEST:Ljava/lang/String; = "account.initial.request"

.field public static final ACCOUNT_LOCAL_ACCOUNT_ID:Ljava/lang/String; = "account.local.account.id"

.field public static final ACCOUNT_LOGIN_HINT:Ljava/lang/String; = "account.login.hint"

.field public static final ACCOUNT_MANAGER_REMOVE_ACCOUNT_TIMEOUT_IN_MILLISECONDS:I = 0x1388

.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account.name"

.field public static final ACCOUNT_PROMPT:Ljava/lang/String; = "account.prompt"

.field public static final ACCOUNT_REDIRECT:Ljava/lang/String; = "account.redirect"

.field public static final ACCOUNT_REFRESH_TOKEN:Ljava/lang/String; = "account.refresh.token"

.field public static final ACCOUNT_REMOVE_TOKENS:Ljava/lang/String; = "account.remove.tokens"

.field public static final ACCOUNT_REMOVE_TOKENS_VALUE:Ljava/lang/String; = "account.remove.tokens.value"

.field public static final ACCOUNT_REQUEST_TYPE:Ljava/lang/String; = "broker.request.type"

.field public static final ACCOUNT_RESOLVE_INTERRUPT:Ljava/lang/String; = "account.resolve.interrupt"

.field public static final ACCOUNT_RESOURCE:Ljava/lang/String; = "account.resource"

.field public static final ACCOUNT_RESULT:Ljava/lang/String; = "account.result"

.field public static final ACCOUNT_UID_CACHES:Ljava/lang/String; = "account.uid.caches"

.field public static final ACCOUNT_USERINFO_AUTHORITY_TYPE:Ljava/lang/String; = "account.userinfo.authority.type"

.field public static final ACCOUNT_USERINFO_ENVIRONMENT:Ljava/lang/String; = "account.userinfo.environment"

.field public static final ACCOUNT_USERINFO_FAMILY_NAME:Ljava/lang/String; = "account.userinfo.family.name"

.field public static final ACCOUNT_USERINFO_GIVEN_NAME:Ljava/lang/String; = "account.userinfo.given.name"

.field public static final ACCOUNT_USERINFO_IDENTITY_PROVIDER:Ljava/lang/String; = "account.userinfo.identity.provider"

.field public static final ACCOUNT_USERINFO_ID_TOKEN:Ljava/lang/String; = "account.userinfo.id.token"

.field public static final ACCOUNT_USERINFO_TENANTID:Ljava/lang/String; = "account.userinfo.tenantid"

.field public static final ACCOUNT_USERINFO_USERID:Ljava/lang/String; = "account.userinfo.userid"

.field public static final ACCOUNT_USERINFO_USERID_DISPLAYABLE:Ljava/lang/String; = "account.userinfo.userid.displayable"

.field public static final ACCOUNT_USERINFO_USERID_LIST:Ljava/lang/String; = "account.userinfo.userid.list"

.field public static final ADAL_VERSION_KEY:Ljava/lang/String; = "adal.version.key"

.field public static final AUTHENTICATOR_MFA_LINKING_PREFIX:Ljava/lang/String; = "microsoft-authenticator://activatemfa"

.field public static final AUTHTOKEN_TYPE:Ljava/lang/String; = "adal.authtoken.type"

.field public static final AUTH_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field public static final AUTH_SCHEME_PARAMS_POP:Ljava/lang/String; = "pop_parameters"

.field public static final AUTH_SCOPE:Ljava/lang/String; = "scope"

.field public static final AUTH_STATE:Ljava/lang/String; = "state"

.field public static final AZURE_AUTHENTICATOR_APP_DEBUG_SIGNATURE:Ljava/lang/String; = "N1jdcbbnKDr0LaFZlqdhXgm2luE="

.field public static final AZURE_AUTHENTICATOR_APP_PACKAGE_NAME:Ljava/lang/String; = "com.azure.authenticator"

.field public static final AZURE_AUTHENTICATOR_APP_RELEASE_SIGNATURE:Ljava/lang/String; = "ho040S3ffZkmxqtQrSwpTVOn9r0="

.field public static final BACKGROUND_REQUEST_MESSAGE:Ljava/lang/String; = "background.request"

.field public static final BROKER_ACCOUNTS:Ljava/lang/String; = "broker_accounts"

.field public static final BROKER_ACCOUNTS_COMPRESSED:Ljava/lang/String; = "broker_accounts_compressed"

.field public static final BROKER_ACCOUNT_MANAGER_OPERATION_KEY:Ljava/lang/String; = "com.microsoft.broker_accountmanager_operation_key"

.field public static final BROKER_ACTIVITY_NAME:Ljava/lang/String; = "broker.activity.name"

.field public static final BROKER_API_TO_BROKER_PROTOCOL_NAME:Ljava/lang/String; = "broker.api.to.broker"

.field public static final BROKER_API_TO_BROKER_PROTOCOL_VERSION_CODE:Ljava/lang/String;

.field public static final BROKER_DEVICE_MODE:Ljava/lang/String; = "broker_device_mode"

.field public static final BROKER_FEATURE_MULTI_USER:Ljava/lang/String; = "broker.feature.multi.user"

.field public static final BROKER_FINAL_URL:Ljava/lang/String; = "adal.final.url"

.field public static final BROKER_FORCE_REFRESH:Ljava/lang/String; = "force.refresh"

.field public static final BROKER_GENERATE_SHR_RESULT:Ljava/lang/String; = "broker_generate_shr_result"

.field public static final BROKER_GENERATE_SSO_TOKEN_RESULT:Ljava/lang/String; = "broker_generate_sso_token"

.field public static final BROKER_HOST_APP_PACKAGE_NAME:Ljava/lang/String; = "com.microsoft.identity.testuserapp"

.field public static final BROKER_HOST_APP_SIGNATURE:Ljava/lang/String; = "1wIqXSqBj7w+h11ZifsnqwgyKrY="

.field public static final BROKER_KEYSTORE_SYMMETRIC_KEY:Ljava/lang/String; = "broker_keystore_symmetric_key"

.field public static final BROKER_PACKAGE_NAME:Ljava/lang/String; = "broker.package.name"

.field public static final BROKER_PROTOCOL_VERSION:Ljava/lang/String; = "v2"

.field public static final BROKER_REDIRECT_URI:Ljava/lang/String; = "urn:ietf:wg:oauth:2.0:oob"

.field public static final BROKER_REQUEST:Ljava/lang/String; = "com.microsoft.aadbroker.adal.broker.request"

.field public static final BROKER_REQUEST_ID:I = 0x499

.field public static final BROKER_REQUEST_RESUME:Ljava/lang/String; = "com.microsoft.aadbroker.adal.broker.request.resume"

.field public static final BROKER_REQUEST_V2:Ljava/lang/String; = "broker_request_v2"

.field public static final BROKER_REQUEST_V2_COMPRESSED:Ljava/lang/String; = "broker_request_v2_compressed"

.field public static final BROKER_REQUEST_V2_SUCCESS:Ljava/lang/String; = "broker_request_v2_success"

.field public static final BROKER_RESULT_RETURNED:Ljava/lang/String; = "broker.result.returned"

.field public static final BROKER_RESULT_V2:Ljava/lang/String; = "broker_result_v2"

.field public static final BROKER_RESULT_V2_COMPRESSED:Ljava/lang/String; = "broker_result_v2_compressed"

.field public static final BROKER_RETURN_JSON:Ljava/lang/String; = "broker.json"

.field public static final BROKER_SKIP_CACHE:Ljava/lang/String; = "skip.cache"

.field public static final BROKER_SSO_URL_KEY:Ljava/lang/String; = "ssoUrl"

.field public static final BROKER_VERSION:Ljava/lang/String; = "broker.version"

.field public static final BROWSER_DEVICE_CA_URL_QUERY_STRING_PARAMETER:Ljava/lang/String; = "&ismdmurl=1"

.field public static final BROWSER_EXT_INSTALL_PREFIX:Ljava/lang/String; = "msauth://"

.field public static final BROWSER_EXT_PREFIX:Ljava/lang/String; = "browser://"

.field public static final BROWSER_EXT_WEB_CP:Ljava/lang/String; = "companyportal://"

.field public static final CALLER_CACHEKEY_PREFIX:Ljava/lang/String; = "|"

.field public static final CALLER_INFO_PACKAGE:Ljava/lang/String; = "caller.info.package"

.field public static final CALLER_INFO_UID:Ljava/lang/String; = "caller.info.uid"

.field public static final CAN_FOCI_APPS_CONSTRUCT_ACCOUNTS_FROM_PRT_ID_TOKEN_KEY:Ljava/lang/String; = "can.construct.accounts.from.prt.id.token"

.field public static final CHALLENGE_REQUEST_CERT_AUTH_DELIMETER:Ljava/lang/String; = ";"

.field public static final CHALLENGE_REQUEST_HEADER:Ljava/lang/String; = "WWW-Authenticate"

.field public static final CHALLENGE_RESPONSE_CONTEXT:Ljava/lang/String; = "Context"

.field public static final CHALLENGE_RESPONSE_HEADER:Ljava/lang/String; = "Authorization"

.field public static final CHALLENGE_RESPONSE_TOKEN:Ljava/lang/String; = "AuthToken"

.field public static final CHALLENGE_RESPONSE_TYPE:Ljava/lang/String; = "PKeyAuth"

.field public static final CHALLENGE_TLS_INCAPABLE:Ljava/lang/String; = "x-ms-PKeyAuth"

.field public static final CHALLENGE_TLS_INCAPABLE_VERSION:Ljava/lang/String; = "1.0"

.field public static final CLIENT_ADVERTISED_MAXIMUM_BP_VERSION_KEY:Ljava/lang/String; = "broker.protocol.version.name"

.field public static final CLIENT_APP_PACKAGE_NAME:Ljava/lang/String; = "client_app_package_name"

.field public static final CLIENT_CONFIGURED_MINIMUM_BP_VERSION_KEY:Ljava/lang/String; = "required.broker.protocol.version.name"

.field public static final CLIENT_TLS_NOT_SUPPORTED:Ljava/lang/String; = " PKeyAuth/1.0"

.field public static final COMPANY_PORTAL_APP_LAUNCH_ACTIVITY_NAME:Ljava/lang/String; = "com.microsoft.windowsintune.companyportal.views.SplashActivity"

.field public static final COMPANY_PORTAL_APP_PACKAGE_NAME:Ljava/lang/String; = "com.microsoft.windowsintune.companyportal"

.field public static final COMPANY_PORTAL_APP_RELEASE_SIGNATURE:Ljava/lang/String; = "1L4Z9FJCgn5c0VLhyAxC5O9LdlE="

.field public static final DEFAULT_BROWSER_PACKAGE_NAME:Ljava/lang/String; = "default.browser.package.name"

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final EXPIRATION_BUFFER:Ljava/lang/String; = "expiration.buffer"

.field public static final FLIGHT_INFO:Ljava/lang/String; = "com.microsoft.identity.broker.flights"

.field public static final GET_FLIGHTS_RESULT:Ljava/lang/String; = "active_flights"

.field public static final INTUNE_APP_PACKAGE_NAME:Ljava/lang/String; = "com.microsoft.intune"

.field public static final IPPHONE_APP_PACKAGE_NAME:Ljava/lang/String; = "com.microsoft.skype.teams.ipphone"

.field public static final IPPHONE_APP_SIGNATURE:Ljava/lang/String; = "fcg80qvoM1YMKJZibjBwQcDfOno="

.field public static final LIB_NAME:Ljava/lang/String; = "library_name"

.field public static final LIB_VERSION:Ljava/lang/String; = "library_version"

.field public static final MSAL_TO_BROKER_PROTOCOL_NAME:Ljava/lang/String; = "msal.to.broker"

.field public static final MSAL_TO_BROKER_PROTOCOL_VERSION_CODE:Ljava/lang/String; = "9.0"

.field public static final MULTI_RESOURCE_TOKEN:Ljava/lang/String; = "account.multi.resource.token"

.field public static final NEGOTIATED_BP_VERSION_KEY:Ljava/lang/String; = "common.broker.protocol.version.name"

.field public static final PKCE_CHALLENGE:Ljava/lang/String; = "PkceChallenge"

.field public static final PKEYAUTH_REDIRECT:Ljava/lang/String; = "urn:http-auth:PKeyAuth"

.field public static final PLAY_STORE_INSTALL_PREFIX:Ljava/lang/String; = "market://details?id="

.field public static final PRT_NONCE:Ljava/lang/String; = "nonce"

.field public static final PRT_RESPONSE_HEADER:Ljava/lang/String; = "x-ms-RefreshTokenCredential"

.field public static final REDIRECT_DELIMETER_ENCODED:Ljava/lang/Object;

.field public static final REDIRECT_PREFIX:Ljava/lang/String; = "msauth"

.field public static final REDIRECT_SSL_PREFIX:Ljava/lang/String; = "https://"

.field public static final REMOVE_BROKER_ACCOUNT_SUCCEEDED:Ljava/lang/String; = "remove_broker_account_succeeded"

.field public static final REQUEST_AUTHORITY:Ljava/lang/String; = "request.authority"

.field public static final SET_FLIGHTS_SUCCEEDED:Ljava/lang/String; = "set_flights_succeeded"

.field public static final SHOULD_SEND_PKEYAUTH_HEADER_TO_THE_TOKEN_ENDPOINT:Ljava/lang/String; = "should.send.pkeyauth.header"

.field public static final SSO_TOKEN_CLIENT_ID:Ljava/lang/String; = "broker.sso.clientId"

.field public static final UPDATE_BROKER_RT_SUCCEEDED:Ljava/lang/String; = "update_broker_rt_succeeded"

.field public static final USERDATA_BROKER_PRT_RT:Ljava/lang/String; = "userdata.broker.prt.rt"

.field public static final USERDATA_BROKER_PRT_SESSION_KEY:Ljava/lang/String; = "userdata.broker.prt.session.key"

.field public static final USERDATA_BROKER_RT:Ljava/lang/String; = "userdata.broker.rt"

.field public static final USERDATA_CALLER_CACHEKEYS:Ljava/lang/String; = "userdata.caller.cachekeys"

.field public static final USERDATA_PREFIX:Ljava/lang/String; = "userdata.prefix"

.field public static final USERDATA_UID_KEY:Ljava/lang/String; = "calling.uid.key"

.field public static final WEBCP_LAUNCH_COMPANY_PORTAL_URL:Ljava/lang/String; = "companyportal://enrollment"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$Broker;->computeMaxHostBrokerProtocol()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$Broker;->BROKER_API_TO_BROKER_PROTOCOL_VERSION_CODE:Ljava/lang/String;

    const-string v0, "%2C"

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$Broker;->REDIRECT_DELIMETER_ENCODED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeMaxHostBrokerProtocol()Ljava/lang/String;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->values()[Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;

    move-result-object v0

    array-length v1, v0

    const-string v2, "1.0"

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;->getBrokerVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v7, v6, v3

    if-lez v7, :cond_0

    move-object v2, v5

    move v3, v6

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":<static initialization>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid value for protocol version"

    invoke-static {v6, v7, v5}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
