.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$IntuneContentProviderCall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntuneContentProviderCall"
.end annotation


# static fields
.field public static final APP_DATA_CLEAR_SUPPORTED:Ljava/lang/String; = "SUPPORTED"

.field public static final APP_DATA_CLEAR_UNSUPPORTED:Ljava/lang/String; = "UNSUPPORTED"

.field public static final AUTHORITY:Ljava/lang/String; = "content://com.microsoft.intune.shareduserlessdataclear/datacollection"

.field public static final INTUNE_PENDING_INTENT:Ljava/lang/String; = "AppDataClearIntent"

.field public static final IS_APP_DATA_CLEAR_ACTION:Ljava/lang/String; = "AppDataClearResult"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
