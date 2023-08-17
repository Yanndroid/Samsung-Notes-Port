.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCipherInputStreamContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->close()V

    return-void
.end method

.method public createSDocCipherInputStream(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getReservedSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->getReservedSize()I

    move-result p1

    return p1
.end method

.method public read(Ljava/lang/Object;[BI)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/document/SDocCipherInputStream;->read([BI)I

    move-result p1

    return p1
.end method
