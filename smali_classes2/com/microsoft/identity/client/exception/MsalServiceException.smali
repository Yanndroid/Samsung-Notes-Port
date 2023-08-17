.class public Lcom/microsoft/identity/client/exception/MsalServiceException;
.super Lcom/microsoft/identity/client/exception/MsalException;
.source "SourceFile"


# static fields
.field public static final ACCESS_DENIED:Ljava/lang/String; = "access_denied"

.field public static final DEFAULT_STATUS_CODE:I = 0x0

.field public static final INVALID_INSTANCE:Ljava/lang/String; = "invalid_instance"

.field public static final INVALID_REQUEST:Ljava/lang/String; = "invalid_request"

.field public static final INVALID_SCOPE:Ljava/lang/String; = "invalid_scope"

.field public static final REQUEST_TIMEOUT:Ljava/lang/String; = "request_timeout"

.field public static final SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "service_not_available"

.field public static final UNAUTHORIZED_CLIENT:Ljava/lang/String; = "unauthorized_client"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown_error"


# instance fields
.field private final mHttpStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/microsoft/identity/client/exception/MsalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Lcom/microsoft/identity/client/exception/MsalServiceException;->mHttpStatusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/client/exception/MsalException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/microsoft/identity/client/exception/MsalServiceException;->mHttpStatusCode:I

    return-void
.end method


# virtual methods
.method public getHttpStatusCode()I
    .locals 1

    iget v0, p0, Lcom/microsoft/identity/client/exception/MsalServiceException;->mHttpStatusCode:I

    return v0
.end method
