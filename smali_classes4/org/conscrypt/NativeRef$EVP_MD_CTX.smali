.class final Lorg/conscrypt/NativeRef$EVP_MD_CTX;
.super Lorg/conscrypt/NativeRef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EVP_MD_CTX"
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

    invoke-static {p1, p2}, Lorg/conscrypt/NativeCrypto;->EVP_MD_CTX_destroy(J)V

    return-void
.end method
