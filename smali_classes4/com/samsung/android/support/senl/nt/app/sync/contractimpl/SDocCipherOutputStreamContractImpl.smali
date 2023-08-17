.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/SDocCipherOutputStreamContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->close()V

    return-void
.end method

.method public create(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public write(Ljava/lang/Object;[BI)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/document/SDocCipherOutputStream;->write([BI)V

    return-void
.end method
