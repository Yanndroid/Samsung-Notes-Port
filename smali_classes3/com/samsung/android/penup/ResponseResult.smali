.class public final Lcom/samsung/android/penup/ResponseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CODE_ACCESS_TOKEN_EXPIRED:I = 0xc1d

.field public static final CODE_AUTHENTICATION_CANCELED:I = 0xbba

.field public static final CODE_AUTHENTICATION_ERROR:I = 0xbb9

.field public static final CODE_AUTHENTICATION_REQUIRED:I = 0xbb8

.field public static final CODE_INTERNAL_SERVER_ERROR:I = 0x3e8

.field public static final CODE_INVALID_ACCESS_TOKEN:I = 0xc1e

.field public static final CODE_INVALID_CLIENT_ID:I = 0xbbb

.field public static final CODE_KEY_HASH_MISMATCHED:I = 0xc80

.field public static final CODE_NETWORK_ERROR:I = 0x2328

.field public static final CODE_NOT_EXIST_ARTIST:I = 0x1388

.field public static final CODE_NOT_EXIST_ARTWORK:I = 0x1389

.field public static final CODE_NOT_EXIST_COLLECTION:I = 0x138a

.field public static final CODE_NOT_EXIST_TAG:I = 0x138b

.field public static final CODE_PERMISSION_DENIED:I = 0xc1c

.field public static final CODE_POST_DIALOG_CANCELED:I = 0x1f40

.field public static final CODE_SUCCESS:I = 0x0

.field public static final CODE_TIMEOUT:I = 0x2329

.field public static final MESSAGE_AUTHENTICATION_CANCELED:Ljava/lang/String; = "The authentication is canceled."

.field public static final MESSAGE_AUTHENTICATION_ERROR:Ljava/lang/String; = "The authentication error occurred."

.field public static final MESSAGE_AUTHENTICATION_REQUIRED:Ljava/lang/String; = "The authentication is required."

.field public static final MESSAGE_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "The internal server error occurred."

.field public static final MESSAGE_NETWORK_ERROR:Ljava/lang/String; = "The network connection error occurred."

.field public static final MESSAGE_PERMISSION_DENIED:Ljava/lang/String; = "This action is not allowed for this application."

.field public static final MESSAGE_POST_DIALOG_CANCELED:Ljava/lang/String; = "The post dialog is canceled."

.field public static final MESSAGE_TIMEOUT:Ljava/lang/String; = "The timeout is exceeded."


# instance fields
.field private mCode:I

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/penup/ResponseResult;->mCode:I

    iput-object p2, p0, Lcom/samsung/android/penup/ResponseResult;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/penup/ResponseResult;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/ResponseResult;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/penup/ResponseResult;->mCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
