.class public final Lcom/microsoft/identity/client/exception/MsalUiRequiredException;
.super Lcom/microsoft/identity/client/exception/MsalException;
.source "SourceFile"


# static fields
.field public static final INVALID_GRANT:Ljava/lang/String; = "invalid_grant"

.field public static final NO_ACCOUNT_FOUND:Ljava/lang/String; = "no_account_found"

.field public static final NO_TOKENS_FOUND:Ljava/lang/String; = "no_tokens_found"


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
