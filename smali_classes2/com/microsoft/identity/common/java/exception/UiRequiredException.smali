.class public final Lcom/microsoft/identity/common/java/exception/UiRequiredException;
.super Lcom/microsoft/identity/common/java/exception/ServiceException;
.source "SourceFile"


# static fields
.field public static final sName:Ljava/lang/String; = "com.microsoft.identity.common.exception.UiRequiredException"

.field private static final serialVersionUID:J = 0x2a2e44bc758b9a97L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.microsoft.identity.common.exception.UiRequiredException"

    return-object v0
.end method
