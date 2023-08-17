.class public Lcz/msebera/android/httpclient/conn/ssl/TrustAllStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/conn/ssl/TrustAllStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/TrustAllStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/TrustAllStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/TrustAllStrategy;->INSTANCE:Lcz/msebera/android/httpclient/conn/ssl/TrustAllStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
