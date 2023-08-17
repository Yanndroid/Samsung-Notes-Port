.class public Lcom/microsoft/identity/common/java/exception/ArgumentException;
.super Lcom/microsoft/identity/common/java/exception/BaseException;
.source "SourceFile"


# static fields
.field public static final ACQUIRE_PRT_SSO_COOKIE_OPERATION_NAME:Ljava/lang/String; = "acquirePrtSsoCookie"

.field public static final ACQUIRE_TOKEN_OPERATION_NAME:Ljava/lang/String; = "acquireToken"

.field public static final ACQUIRE_TOKEN_SILENT_OPERATION_NAME:Ljava/lang/String; = "acquireTokenSilent"

.field public static final ACQUIRE_TOKEN_WITH_PASSWORD_OPERATION_NAME:Ljava/lang/String; = "acquireTokenWithPassword"

.field public static final AUTHENTICATION_SCHEME_ARGUMENT_NAME:Ljava/lang/String; = "authentication_scheme"

.field public static final AUTHORITY_ARGUMENT_NAME:Ljava/lang/String; = "authority"

.field public static final BROKER_TOKEN_REQUEST_OPERATION_NAME:Ljava/lang/String; = "brokerTokenRequest"

.field public static final GENERATE_SHR_OPERATION_NAME:Ljava/lang/String; = "generateShr"

.field public static final GET_ACCOUNTS_OPERATION_NAME:Ljava/lang/String; = "getAllAccounts"

.field public static final IACCOUNT_ARGUMENT_NAME:Ljava/lang/String; = "account"

.field public static final ILLEGAL_ARGUMENT_ERROR_CODE:Ljava/lang/String; = "illegal_argument_exception"

.field public static final REMOVE_ACCOUNT_OPERATION_NAME:Ljava/lang/String; = "removeAccount"

.field public static final SCOPE_ARGUMENT_NAME:Ljava/lang/String; = "scopes"

.field public static final sName:Ljava/lang/String; = "com.microsoft.identity.common.exception.ArgumentException"

.field private static final serialVersionUID:J = -0x58cf6ae68578d054L


# instance fields
.field private mArgumentName:Ljava/lang/String;

.field private mOperationName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "illegal_argument_exception"

    invoke-direct {p0, v0, p3}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;->mOperationName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;->mArgumentName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "illegal_argument_exception"

    invoke-direct {p0, v0, p3, p4}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;->mOperationName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;->mArgumentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArgumentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;->mArgumentName:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.microsoft.identity.common.exception.ArgumentException"

    return-object v0
.end method

.method public getOperationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;->mOperationName:Ljava/lang/String;

    return-object v0
.end method
