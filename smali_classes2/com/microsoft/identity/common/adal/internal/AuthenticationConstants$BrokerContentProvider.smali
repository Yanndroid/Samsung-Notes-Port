.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrokerContentProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$BrokerContentProvider$API;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "microsoft.identity.broker"

.field public static final BROKER_API_ADD_FLIGHTS_PATH:Ljava/lang/String; = "/brokerApi/addFlights"

.field public static final BROKER_API_GET_BROKER_ACCOUNTS_CODE:I = 0xa

.field public static final BROKER_API_GET_BROKER_ACCOUNTS_PATH:Ljava/lang/String; = "/brokerApi/getBrokerAccounts"

.field public static final BROKER_API_GET_FLIGHTS_PATH:Ljava/lang/String; = "/brokerApi/getFlights"

.field public static final BROKER_API_HELLO_PATH:Ljava/lang/String; = "/brokerApi/hello"

.field public static final BROKER_API_HELLO_URI_CODE:I = 0x9

.field public static final BROKER_API_REMOVE_BROKER_ACCOUNT_CODE:I = 0xb

.field public static final BROKER_API_REMOVE_BROKER_ACCOUNT_PATH:Ljava/lang/String; = "/brokerApi/removeBrokerAccount"

.field public static final BROKER_API_SET_FLIGHTS_PATH:Ljava/lang/String; = "/brokerApi/setFlights"

.field public static final BROKER_API_UPDATE_BRT_CODE:I = 0xc

.field public static final BROKER_API_UPDATE_BRT_PATH:Ljava/lang/String; = "/brokerApi/updateBrt"

.field private static final BROKER_VERSION_1:Ljava/lang/String; = "1.0"

.field private static final BROKER_VERSION_2:Ljava/lang/String; = "2.0"

.field public static final CONTENT_SCHEME:Ljava/lang/String; = "content://"

.field public static final GENERATE_SHR_PATH:Ljava/lang/String; = "/generateShr"

.field public static final GET_SSO_TOKEN_PATH:Ljava/lang/String; = "/ssoToken"

.field public static final MSAL_ACQUIRE_TOKEN_INTERACTIVE_CODE:I = 0x2

.field public static final MSAL_ACQUIRE_TOKEN_INTERACTIVE_PATH:Ljava/lang/String; = "/acquireTokenInteractive"

.field public static final MSAL_ACQUIRE_TOKEN_SILENT_CODE:I = 0x3

.field public static final MSAL_ACQUIRE_TOKEN_SILENT_PATH:Ljava/lang/String; = "/acquireTokenSilent"

.field public static final MSAL_GENERATE_SHR_CODE:I = 0xd

.field public static final MSAL_GET_ACCOUNTS_CODE:I = 0x4

.field public static final MSAL_GET_ACCOUNTS_PATH:Ljava/lang/String; = "/getAccounts"

.field public static final MSAL_GET_CURRENT_ACCOUNT_SHARED_DEVICE_CODE:I = 0x6

.field public static final MSAL_GET_CURRENT_ACCOUNT_SHARED_DEVICE_PATH:Ljava/lang/String; = "/getCurrentAccountSharedDevice"

.field public static final MSAL_GET_DEVICE_MODE_CODE:I = 0x7

.field public static final MSAL_GET_DEVICE_MODE_PATH:Ljava/lang/String; = "/getDeviceMode"

.field public static final MSAL_HELLO_PATH:Ljava/lang/String; = "/hello"

.field public static final MSAL_HELLO_URI_CODE:I = 0x1

.field public static final MSAL_REMOVE_ACCOUNTS_CODE:I = 0x5

.field public static final MSAL_REMOVE_ACCOUNT_PATH:Ljava/lang/String; = "/removeAccounts"

.field public static final MSAL_SIGN_OUT_FROM_SHARED_DEVICE_CODE:I = 0x8

.field public static final MSAL_SIGN_OUT_FROM_SHARED_DEVICE_PATH:Ljava/lang/String; = "/signOutFromSharedDevice"

.field private static final VERSION_1:Ljava/lang/String; = "1.0"

.field private static final VERSION_3:Ljava/lang/String; = "3.0"

.field private static final VERSION_6:Ljava/lang/String; = "6.0"

.field private static final VERSION_7:Ljava/lang/String; = "7.0"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
