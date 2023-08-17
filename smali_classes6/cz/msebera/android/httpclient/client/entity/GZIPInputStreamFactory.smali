.class public Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final INSTANCE:Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;->INSTANCE:Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;->INSTANCE:Lcz/msebera/android/httpclient/client/entity/GZIPInputStreamFactory;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
