.class public final Lcom/microsoft/identity/common/java/AuthenticationConstants$Browser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Browser"
.end annotation


# static fields
.field public static final REQUEST_MESSAGE:Ljava/lang/String; = "com.microsoft.aad.adal:BrowserRequestMessage"

.field public static final RESPONSE_ERROR_CODE:Ljava/lang/String; = "com.microsoft.aad.adal:BrowserErrorCode"

.field public static final RESPONSE_EXCEPTION:Ljava/lang/String; = "com.microsoft.aad.adal:AuthenticationException"

.field public static final RESPONSE_FINAL_URL:Ljava/lang/String; = "com.microsoft.aad.adal:BrowserFinalUrl"

.field public static final SUB_ERROR_UI_CANCEL:Ljava/lang/String; = "cancel"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
