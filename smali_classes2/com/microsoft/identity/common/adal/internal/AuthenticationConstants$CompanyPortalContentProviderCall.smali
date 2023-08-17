.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$CompanyPortalContentProviderCall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompanyPortalContentProviderCall"
.end annotation


# static fields
.field public static final COMPANY_PORTAL_CONTENT_PROVIDER_AUTHORITY:Ljava/lang/String; = "content://com.microsoft.intune.omadm.authenticator"

.field public static final COMPANY_PORTAL_CONTENT_PROVIDER_METHOD_ON_GLOBAL_SIGNOUT:Ljava/lang/String; = "onGlobalSignOut"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
