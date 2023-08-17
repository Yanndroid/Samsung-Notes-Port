.class public final Lcom/microsoft/identity/common/java/exception/UserCancelException;
.super Lcom/microsoft/identity/common/java/exception/BaseException;
.source "SourceFile"


# static fields
.field public static final sName:Ljava/lang/String; = "com.microsoft.identity.common.exception.UserCancelException"

.field private static final serialVersionUID:J = 0x47f34254a55dd868L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.microsoft.identity.common.exception.UserCancelException"

    return-object v0
.end method
