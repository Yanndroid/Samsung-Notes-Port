.class public Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReencryptionParams"
.end annotation


# instance fields
.field private final mAbortOnError:Z

.field private final mEraseAllOnError:Z

.field private final mEraseEntryOnError:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->mAbortOnError:Z

    iput-boolean p2, p0, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->mEraseEntryOnError:Z

    iput-boolean p3, p0, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->mEraseAllOnError:Z

    return-void
.end method


# virtual methods
.method public abortOnError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->mAbortOnError:Z

    return v0
.end method

.method public eraseAllOnError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->mEraseAllOnError:Z

    return v0
.end method

.method public eraseEntryOnError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;->mEraseEntryOnError:Z

    return v0
.end method
