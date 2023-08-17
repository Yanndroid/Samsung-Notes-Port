.class final Lorg/conscrypt/NativeRef$EC_GROUP;
.super Lorg/conscrypt/NativeRef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EC_GROUP"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/NativeRef;-><init>(J)V

    return-void
.end method


# virtual methods
.method public doFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_clear_free(J)V

    return-void
.end method
