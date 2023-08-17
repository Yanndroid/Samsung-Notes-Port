.class public Lcz/msebera/android/httpclient/conn/ssl/TrustSelfSignedStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/conn/ssl/TrustSelfSignedStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/TrustSelfSignedStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/TrustSelfSignedStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/TrustSelfSignedStrategy;->INSTANCE:Lcz/msebera/android/httpclient/conn/ssl/TrustSelfSignedStrategy;

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

    array-length p1, p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
