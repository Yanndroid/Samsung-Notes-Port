.class public final Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationRequest$Prompt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prompt"
.end annotation


# static fields
.field public static final ADMIN_CONSENT:Ljava/lang/String; = "admin_consent"

.field public static final ALWAYS:Ljava/lang/String; = "login"

.field public static final AUTO:Ljava/lang/String; = "none"

.field public static final CONSENT:Ljava/lang/String; = "consent"

.field public static final FORCE_PROMPT:Ljava/lang/String; = "login"

.field public static final REFRESH_SESSION:Ljava/lang/String; = "refresh_session"

.field public static final SELECT_ACCOUNT:Ljava/lang/String; = "select_account"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
